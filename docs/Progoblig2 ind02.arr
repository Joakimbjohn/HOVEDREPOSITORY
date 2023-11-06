include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end

fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    |some(a) => a
    |none => 0 
  end
where:
  energi-to-number("0") is 0 
  energi-to-number("30") is 30
  energi-to-number("37") is 37
  energi-to-number("5") is 5
  energi-to-number("4") is 4
  energi-to-number("15") is 15
  energi-to-number("48") is 48
  energi-to-number("12") is 12
end

"Table 1"
kWh-wealthy-consumer-data

table2 = transform-column(kWh-wealthy-consumer-data, 'energi', energi-to-number)
"Table 2"
table2

#Definerer en tabell med 2 to rekker: komponent og energi
bil-table = table: komponent :: String, energi :: Number
  row: "bil", 50
end

bil-table
new-row = get-row(bil-table, 0)

add-row(table2, new-row)

#Kalkulerer forbruk for bil
fun bil():
  energy-per-day = (( 50 / 10 ) * 10 )
  energy-per-day
end
"Forbruket for bil"
bil()
 
fun sum-of-energi():
  
  sum(table2, 'energi')
end

"Summen av forbruket"
sum-of-energi() + bil()


bil-fiks = transform table2 using energi:
  energi: energi + 50
end

"Tester tabellen der energiforbruket til bil er definert"
bil-fiks

bar-chart(table2, 'komponent', 'energi')
