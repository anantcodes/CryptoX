//
//  MarketDataModel.swift
//  CryptoX
//
//  Created by Anant Kanchan on 01/07/21.
//

import Foundation

/*
 
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 8298,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 625,
     "total_market_cap": {
       "btc": 42653914.37513196,
       "eth": 674413672.3933941,
       "ltc": 10466341250.350761,
       "bch": 2907993803.6179175,
       "bnb": 4937706814.162095,
       "eos": 365392755066.9372,
       "xrp": 2150895069545.6375,
       "xlm": 5342462504808.475,
       "link": 79240155376.7487,
       "dot": 92919492408.46616,
       "yfi": 43930411.87394025,
       "usd": 1433163236878.8877,
       "aed": 5264008569056.141,
       "ars": 137252323400006.62,
       "aud": 1912014603911.3345,
       "bdt": 121586910499000.3,
       "bhd": 540232315304.7328,
       "bmd": 1433163236878.8877,
       "brl": 7185503547779.438,
       "cad": 1774327745417.904,
       "chf": 1325220248203.6436,
       "clp": 1058677683082432.9,
       "cny": 9266116908040.418,
       "czk": 30828917704825.41,
       "dkk": 8981135264713.543,
       "eur": 1207789718900.2595,
       "gbp": 1038677890111.7869,
       "hkd": 11128770503747.209,
       "huf": 424647284633112.1,
       "idr": 20827470321906200,
       "ils": 4682889539766.4795,
       "inr": 106756690672244.11,
       "jpy": 159733208566336.16,
       "krw": 1622954726913802.8,
       "kwd": 431754756742.1318,
       "lkr": 285344103207968.44,
       "mmk": 2359914758553624,
       "mxn": 28666475023228.31,
       "myr": 5949777177902.6875,
       "ngn": 589058753621960.8,
       "nok": 12325484737152.84,
       "nzd": 2046521273182.1267,
       "php": 70619118497207.25,
       "pkr": 226530139470480.22,
       "pln": 5442795682856.789,
       "rub": 104653162464988.44,
       "sar": 5375154677565.811,
       "sek": 12268318721960.232,
       "sgd": 1929479131115.9402,
       "thb": 45945063629481.64,
       "try": 12425943747405.123,
       "twd": 39993136706723.75,
       "uah": 39252923659671.414,
       "vef": 143502634908.68292,
       "vnd": 32983757497012572,
       "zar": 20561592959501.36,
       "xdr": 1004842339252.316,
       "xag": 54747910521.20096,
       "xau": 804921800.3606582,
       "bits": 42653914375131.96,
       "sats": 4265391437513195.5
     },
     "total_volume": {
       "btc": 3354011.2046696045,
       "eth": 53031264.46722094,
       "ltc": 823001272.9157295,
       "bch": 228664682.79241258,
       "bnb": 388267389.35192716,
       "eos": 28731979527.63069,
       "xrp": 169131632325.18347,
       "xlm": 420094600089.07874,
       "link": 6230902201.752576,
       "dot": 7306551420.563346,
       "yfi": 3454386.2107260684,
       "usd": 112694124912.8317,
       "aed": 413925520804.8297,
       "ars": 10792581109951.98,
       "aud": 150347711316.95676,
       "bdt": 9560760510002.918,
       "bhd": 42480163080.016754,
       "bmd": 112694124912.8317,
       "brl": 565018703758.0856,
       "cad": 139520961348.33105,
       "chf": 104206228812.64703,
       "clp": 83247150073108.66,
       "cny": 728623864623.911,
       "czk": 2424174590412.411,
       "dkk": 706214863273.2455,
       "eur": 94972297605.53928,
       "gbp": 81674503559.95,
       "hkd": 875090164890.6229,
       "huf": 33391349224500.68,
       "idr": 1637729381885855,
       "ils": 368230307035.17395,
       "inr": 8394613763676.315,
       "jpy": 12560323692159.635,
       "krw": 127618025648637.84,
       "kwd": 33950232071.23952,
       "lkr": 22437502709104.3,
       "mmk": 185567506715602.16,
       "mxn": 2254134933096.434,
       "myr": 467849659575.61957,
       "ngn": 46319539221672.11,
       "nok": 969191562298.8337,
       "nzd": 160924393022.4006,
       "php": 5553003005079.786,
       "pkr": 17812776086556.027,
       "pln": 427984112887.706,
       "rub": 8229206736447.241,
       "sar": 422665288274.19464,
       "sek": 964696419044.312,
       "sgd": 151721001923.1445,
       "thb": 3612804603518.0005,
       "try": 977090969678.7251,
       "twd": 3144785902755.021,
       "uah": 3086580626872.9175,
       "vef": 11284062727.521828,
       "vnd": 2593616408663853,
       "zar": 1616822610124.3928,
       "xdr": 79013907964.88318,
       "xag": 4305000092.263839,
       "xau": 63293528.316042766,
       "bits": 3354011204669.6045,
       "sats": 335401120466960.44
     },
     "market_cap_percentage": {
       "btc": 43.9503967265568,
       "eth": 17.26207887135338,
       "usdt": 4.371711157072029,
       "bnb": 3.1227940973555133,
       "ada": 2.997688635739764,
       "doge": 2.276835085093911,
       "xrp": 2.1430338165645586,
       "usdc": 1.7579345622758942,
       "dot": 1.0829655000579081,
       "busd": 0.7024058668285731
     },
     "market_cap_change_percentage_24h_usd": -1.47093337174212,
     "updated_at": 1625148748
   }
 }
 
 
 
 */



struct GlobalData: Codable {
    let data: MarketDataModel?
}


struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
        
    
}



