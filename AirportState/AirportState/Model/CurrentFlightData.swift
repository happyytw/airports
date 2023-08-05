//
//  CurrentFlightData.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/25.
//

import Foundation


//MARK: 국내공항
enum KoreaXMLKey: String {
    case airFln = "airFln"
    case airlineEnglish = "airlineEnglish"
    case airlineKorean = "airlineKorean"
    case airport = "airport"
    case arrivedEng = "arrivedEng"
    case arrivedKor = "arrivedKor"
    case boardingEng = "boardingEng"
    case boardingKor = "boardingKor"
    case city = "city"
    case etd = "etd"
    case flightDate = "flightDate"
    case gate = "gate"
    case io = "io"
    case line = "line"
    case rmkEng = "rmkEng"
    case rmkKor = "rmkKor"
    case std = "std"
}

struct KoreaResponse: Codable {
    
}

//MARK: 한국공항 JSON 모델
struct FlightData: Codable {
    let page: Int
    let perPage: Int
    let totalCount: Int
    let currentCount: Int
    let matchCount: Int
    let data: [Flight]
    
    enum CodingKeys: String, CodingKey {
        case page, perPage, totalCount, currentCount, matchCount, data
    }
}

struct Flight: Codable {
    let UFID: String
    let BOARDING_KOR: String
    let BOARDING_ENG: String
    let ARRIVED_KOR: String
    let ARRIVED_ENG: String
    let AIRLINE_KOREAN: String
    let AIRLINE_ENGLISH: String
    let AIR_FLN: String
    let FLIGHT_DATE: String
    let STD: String
    let ETD: String
    let IO: String
    let LINE_CODE: String
    let LINE: String
    let BAGGAGE_CLAIM: String
    let GATE: String
    let RMK_KOR: String
    let RMK_ENG: String
    let CITY: String
    let AIRPORT: String
    
    enum CodingKeys: String, CodingKey {
        case UFID, BOARDING_KOR, BOARDING_ENG, ARRIVED_KOR, ARRIVED_ENG, AIRLINE_KOREAN, AIRLINE_ENGLISH
        case AIR_FLN, FLIGHT_DATE, STD, ETD, IO, LINE_CODE, LINE, BAGGAGE_CLAIM, GATE, RMK_KOR, RMK_ENG, CITY, AIRPORT
    }
}


//MARK: 인천공항
enum IncheonJSONKey: String {
    case typeOfFlight = "typeOfFlight"
    case airline = "airline"
    case flightId = "flightId"
    case scheduleDateTime = "scheduleDateTime"
    case estimatedDateTime = "estimatedDateTime"
    case airport = "airport"
    case gatenumber = "gatenumber"
    case carousel = "carousel"
    case exitnumber = "exitnumber"
    case remark = "remark"
    case codeshare = "codeshare"
    case masterflightid = "masterflightid"
    case airportCode = "airportCode"
    case cityCode = "cityCode"
    case terminalId = "terminalId"
    case firstopover = "firstopover"
    case firstopovername = "firstopovername"
    case secstopover = "secstopover"
    case secstopovername = "secstopovername"
    case thistopover = "thistopover"
    case thistopovername = "thistopovername"
    case elapsetime = "elapsetime"
}


struct IncheonResponse: Decodable {
    let response: IncheonBody
}

struct IncheonBody: Decodable {
    let header: IncheonHeader
    let body: IncheonItems
}

struct IncheonHeader: Decodable {
    let resultCode: String
    let resultMsg: String
}

struct IncheonItems: Decodable {
    let items: [IncheonItem]
    
}

struct IncheonItem: Decodable {
//    let item: [IncheonData]
    let typeOfFlight: String?
    let airline: String?
    let flightId: String?
    let scheduleDateTime: String?
    let estimatedDateTime: String?
    let airport: String?
    let gatenumber: String?
    let carousel: String?
    let exitnumber: String?
    let remark: String?
    let codeshare: String?
    let masterflightid: String?
    let airportCode: String?
    let cityCode: String?
    let terminalId: String?
    let firstopover: String?
    let firstopovername: String?
    let secstopover: String?
    let secstopovername: String?
    let thistopover: String?
    let thistopovername: String?
    let elapsetime: String?
}

struct IncheonData: Decodable {
    let typeOfFlight: String
    let airline: String
    let flightId: String
    let scheduleDateTime: String
    let estimatedDateTime: String
    let airport: String
    let gatenumber: String
    let carousel: String
    let exitnumber: String
    let remark: String
    let codeshare: String
    let masterflightid: String
    let airportCode: String
    let cityCode: String
    let terminalId: String
    let firstopover: String
    let firstopovername: String?
    let secstopover: String
    let secstopovername: String?
    let thistopover: String
    let thistopovername: String?
    let elapsetime: String
}
