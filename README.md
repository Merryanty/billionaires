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

2️⃣ Cleaning data dengan memilih kolom yang diinginkan : Rank, Name, Last_Name, Gender, Prev.Worth($M), Final.Worth($M), Source, Citizenship

3️⃣ Hitung perubahan kekayaan : Change($M) = Final.Worth($M) - Prev.Worth($M)

4️⃣ Urutkan data (terbesar ke terkecil) berdasarkan Change($M) untuk mendapatkan 5 Winners and Losers Billionaires

<img width="960" alt="step4" src="https://github.com/Merryanty/billionaires/assets/111562115/512084b7-d566-4da1-9125-f7b518cee2e4">

5️⃣ Urutkan data (terbesar ke terkecil) berdasarkan Final.Worth($M) untuk mendapatkan Top 5 Real Time Billionaires List

<img width="960" alt="step5" src="https://github.com/Merryanty/billionaires/assets/111562115/01c7afa4-87a4-4fd7-a97a-730e5f1aec85">


## Collection & Document

:bookmark_tabs: Winner

```
{"_id":
  {"$oid":"64828b09708c09cf31079931"},"
  Rank":{"$numberInt":"1"},
  "Name":"Elon Musk",
  "Last_Name":"Musk",
  "Gender":"M",
  "Prev_Worth($M)":{
     "$numberDouble":"213539.237138"
     },
  "Final_Worth($M)":{
     "$numberDouble":"220208.941"
     },
  "Change($M)":{
     "$numberDouble":"6669.703862"
     },
  "Source":"Tesla, SpaceX",
  "Citizenship":"United States",
  "Scraping_Time":"2023-06-09"
}
```

:bookmark_tabs: Loser

```
{"_id":
  {"$oid":"64828b0a708c09cf31079936"},
  "Rank":{"$numberInt":"124"},
  "Name":"Uday Kotak",
  "Last_Name":"Kotak",
  "Gender":"M",
  "Prev_Worth($M)":{
     "$numberDouble":"14344.638115"
     },
  "Final_Worth($M)":{
     "$numberDouble":"14022.244"
     },
  "Change($M)":{
     "$numberDouble":"-322.394115"
     },
  "Source":"Banking",
  "Citizenship":"India",
  "Scraping_Time":"2023-06-09"
}
```

:bookmark_tabs: Ranking

```
{"_id":
  {"$oid":"64828b09708c09cf31079931"},"
  Rank":{"$numberInt":"1"},
  "Name":"Elon Musk",
  "Last_Name":"Musk",
  "Gender":"M",
  "Prev_Worth($M)":{
     "$numberDouble":"213539.237138"
     },
  "Final_Worth($M)":{
     "$numberDouble":"220208.941"
     },
  "Change($M)":{
     "$numberDouble":"6669.703862"
     },
  "Source":"Tesla, SpaceX",
  "Citizenship":"United States",
  "Scraping_Time":"2023-06-09"
}
```
