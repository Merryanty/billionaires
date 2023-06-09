# billionaires

[![billionaires](https://github.com/Merryanty/billionaires/actions/workflows/billionaires_scrape.yml/badge.svg)](https://github.com/Merryanty/billionaires/actions/workflows/billionaires_scrape.yml)

## :memo: Description

<div align="justify">
Forbes adalah salah satu majalah bisnis asal United State, bertempat di New Jersey. Forbes juga merupakan perusahaan media global, berfokus pada bisnis, investasi, teknologi, kewirausahaan, kepemimpinan, dan gaya hidup. Forbes.com merupakan platform digital dari Forbes Magazine. Forbes.com adalah bagian dari Forbes Digital, situs ini telah dikunjungi sebanyak 27 juta pengunjung setiap bulannya. Forbes.com memuat banyak menu informasi seperti money, innovation, lifestyle, billionaires, dan leadership.

 
Forbes Real Time Billionaires

url : https://www.forbes.com/real-time-billionaires/#30c587873d78

memberikan informasi mengenai top 5 Today's Winners and Losers Billionaires, serta menampilkan The Real Time Billionaires List di dunia.

</div>

## :repeat: Scraping Process

1️⃣ Intercept XHR

<img width="1016" alt="step1" src="https://github.com/Merryanty/billionaires/assets/111562115/272b2d33-d8e5-4beb-8cb0-e2e1ba84fa14">

Tahapan melakukan Intercept XHR:

1. Klik Kanan -> Pilih Inspect
2. Klik Tab Network -> Klik Fetch/XHR
3. Refresh halaman website
4. Pilih true.json? untuk mendapatkan request URL.

2️⃣ Melakukan cleaning data dengan memilih kolom yang diinginkan : Rank,Name,Last_Name,Gender,Prev.Worth($M),Final.Worth($M),Source,Citizenship

3️⃣ Menghitung perubahan kekayaan : Change($M) = Final.Worth($M) - Prev.Worth($M)

4️⃣ Mengurutkan data dari yang terbesar dan terkecil berdasarkan Change($M) untuk mendapatkan 5 winners dan losers Billionaires

5️⃣ Mengurutkan data dari yang terbesar dan terkecil berdasarkan Final.Worth($M) untuk mendapatkan Top 5 Real Time Billionaires List


## Collection & Document
