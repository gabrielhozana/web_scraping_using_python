import requests
import MySQLdb
import datetime
from bs4 import BeautifulSoup

#Buka koneksi ke DB
HOST = "localhost"
USERNAME = "root"
PASSWORD = ""
DATABASE = "web_harvesting"

#URL to be scraped
url_to_scrape = 'https://makassar.kompas.com/'
#Load html's plain data into a variable
plain_html_text = requests.get(url_to_scrape)
#parse data
soup = BeautifulSoup(plain_html_text.text, "html.parser")

recordList = soup.find('div', {'class' : 'col-bs10-7',})
recordArticle = recordList.find_all("div", {'class' : 'article__grid',})

for a in recordArticle:
	tanggals = a.find('div', {'class' : 'article__box'}) 
	juduls = a.find('h3')
	isis = a.find('div', {'class' : 'article__box',})
	asset = a.find('div', {'class' : 'article__asset',})
	links = asset.find('a', href=True)
	gambarimg = asset.find('a', href=True)
	print("Link :", links['href'].strip())

	#tangkap data
	link = links['href'].strip()
	for g in gambarimg:
		gambar = g['data-src'].strip()
		print("Gambar :", g['data-src'].strip())

	tanggal = tanggals.find('div', {'class' : 'article__date',}).text.strip()
	print("Tanggal :",tanggals.find('div', {'class' : 'article__date',}).text.strip())
	
	judul = juduls.find('a').text.strip()
	print("Judul :",juduls.find('a').text.strip())

	isi = isis.find('div', {'class' : 'article__lead',}).text.strip()
	print("Isi :",isis.find('div', {'class' : 'article__lead',}).text.strip())
	print()

	# Buka koneksi ke DB
	db = MySQLdb.connect(HOST, USERNAME, PASSWORD, DATABASE)
	
	cursor = db.cursor()
	
	sql = "INSERT INTO berita(date, judul, isi, gambar, sumber, link, ket_waktu) VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}')".format(datetime.datetime.now(), judul, isi, gambar, "Kompas", link, tanggal)
	try:

		# eksekusi query
		cursor.execute(sql)
		# Commit ke database
		db.commit()
	except:
		# rollback 
		db.rollback()
		#ambil record terakhir yang terisi
		sql = "SELECT LAST_INSERT_ID()"
	try:
		# eksekusi query
		cursor.execute(sql)
		# ambil beberapa record
		result = cursor.fetchone()
		# tampilkan di record pertama
		id = result[0]
	except:
		# rollback jika error
		db.rollback()
		# disconnect dari server
		db.close()
		# 
		id = -1



