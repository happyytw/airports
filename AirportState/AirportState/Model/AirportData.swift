//
//  NameData.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/26.
//

import UIKit
import Foundation

struct KoreaAirports {
    let airports: [Airport] = [
        Airport(countryName: "대한민국", code: "ICN", cityName: "인천"),
        Airport(countryName: "대한민국", code: "YNY", cityName: "양양"),
        Airport(countryName: "대한민국", code: "MWX", cityName: "무안"),
        Airport(countryName: "대한민국", code: "TAE", cityName: "대구"),
        Airport(countryName: "대한민국", code: "GMP", cityName: "서울/김포"),
        Airport(countryName: "대한민국", code: "PUS", cityName: "부산/김해"),
        Airport(countryName: "대한민국", code: "CJU", cityName: "제주"),
        Airport(countryName: "대한민국", code: "CJJ", cityName: "청주"),
        Airport(countryName: "대한민국", code: "USN", cityName: "울산"),
        Airport(countryName: "대한민국", code: "KWJ", cityName: "광주"),
        Airport(countryName: "대한민국", code: "RSU", cityName: "여수"),
        Airport(countryName: "대한민국", code: "KPO", cityName: "포항"),
        Airport(countryName: "대한민국", code: "KUV", cityName: "군산"),
        Airport(countryName: "대한민국", code: "WJU", cityName: "원주"),
        Airport(countryName: "대한민국", code: "HIN", cityName: "사천")
    ]
}

struct InternactionalCities {
    let airports: [Airport] = [
//        Airport(countryName: "대한민국", code: "ICN", cityName: "인천"),
        Airport(countryName: "일본", code: "KMJ", cityName: "구마모토"),
        Airport(countryName: "일본", code: "KKJ", cityName: "기타큐슈"),
        Airport(countryName: "일본", code: "NGO", cityName: "나고야"),
        Airport(countryName: "일본", code: "TAK", cityName: "다가마스"),
        Airport(countryName: "일본", code: "TYO", cityName: "도쿄/하네다"),
        Airport(countryName: "일본", code: "MYJ", cityName: "마즈야마"),
        Airport(countryName: "일본", code: "SPK", cityName: "삿포로"),
        Airport(countryName: "일본", code: "SDJ", cityName: "센다이"),
        Airport(countryName: "일본", code: "FSZ", cityName: "시즈오카"),
        Airport(countryName: "일본", code: "OSA", cityName: "오사카/간사이"),
        Airport(countryName: "일본", code: "OKA", cityName: "오키나와"),
        Airport(countryName: "일본", code: "FUK", cityName: "후쿠오카"),
        
        Airport(countryName: "중국", code: "CAN", cityName: "광저우"),
        Airport(countryName: "중국", code: "NKG", cityName: "난징"),
        Airport(countryName: "중국", code: "NGB", cityName: "닝보"),
        Airport(countryName: "중국", code: "DLC", cityName: "대련"),
        Airport(countryName: "중국", code: "DYG", cityName: "대용"),
        Airport(countryName: "중국", code: "MFM", cityName: "마카오"),
        Airport(countryName: "중국", code: "MDG", cityName: "무단장"),
        Airport(countryName: "중국", code: "BJS", cityName: "베이징/서우두"),
        Airport(countryName: "중국", code: "SHA", cityName: "상해"),
        Airport(countryName: "중국", code: "SJW", cityName: "쉬지아쭈앙"),
        Airport(countryName: "중국", code: "SIA", cityName: "시안"),
        Airport(countryName: "중국", code: "SHE", cityName: "심양"),
        Airport(countryName: "중국", code: "SZX", cityName: "심천"),
        Airport(countryName: "중국", code: "YNJ", cityName: "연길"),
        Airport(countryName: "중국", code: "YNT", cityName: "연대"),
        Airport(countryName: "중국", code: "WUX", cityName: "우시"),
        Airport(countryName: "중국", code: "WNZ", cityName: "위엔저우"),
        Airport(countryName: "중국", code: "WEH", cityName: "위해"),
        Airport(countryName: "중국", code: "JMU", cityName: "자무쓰"),
        Airport(countryName: "중국", code: "CGO", cityName: "정주"),
        Airport(countryName: "중국", code: "TNA", cityName: "제남"),
        Airport(countryName: "중국", code: "CSX", cityName: "창사"),
        Airport(countryName: "중국", code: "CGQ", cityName: "창춘"),
        Airport(countryName: "중국", code: "TAO", cityName: "청도"),
        Airport(countryName: "중국", code: "CTU", cityName: "청두"),
        Airport(countryName: "중국", code: "CKG", cityName: "충칭"),
        Airport(countryName: "중국", code: "KMG", cityName: "쿤밍"),
        Airport(countryName: "중국", code: "TSN", cityName: "톈진"),
        Airport(countryName: "중국", code: "XMN", cityName: "하문"),
        Airport(countryName: "중국", code: "HRB", cityName: "하얼빈"),
        Airport(countryName: "중국", code: "HAK", cityName: "하이커우"),
        Airport(countryName: "중국", code: "HGH", cityName: "항저우"),
        Airport(countryName: "중국", code: "HKG", cityName: "홍콩"),
        
        Airport(countryName: "대만", code: "KHH", cityName: "가오슝"),
        Airport(countryName: "대만", code: "TPE", cityName: "타이베이"),
        
        Airport(countryName: "몽골", code: "ULN", cityName: "울란바토르"),
        
        Airport(countryName: "라오스", code: "VTE", cityName: "비엔티안"),
        
        Airport(countryName: "필리핀", code: "MNL", cityName: "마닐라"),
        Airport(countryName: "필리핀", code: "CEB", cityName: "세부"),
        Airport(countryName: "필리핀", code: "KLO", cityName: "칼리보"),
        Airport(countryName: "필리핀", code: "CRK", cityName: "클락필드"),
        Airport(countryName: "필리핀", code: "TAG", cityName: "타그빌라란"),
        
        Airport(countryName: "말레이시아", code: "BKI", cityName: "코타키나발루"),
        Airport(countryName: "말레이시아", code: "KUL", cityName: "쿠알라룸푸르"),
        Airport(countryName: "말레이시아", code: "PEN", cityName: "페낭"),
        
        Airport(countryName: "싱가포르", code: "SIN", cityName: "싱가폴"),
        
        Airport(countryName: "베트남", code: "VCA", cityName: "껀터"),
        Airport(countryName: "베트남", code: "CXR", cityName: "나트랑"),
        Airport(countryName: "베트남", code: "DAD", cityName: "다낭"),
        Airport(countryName: "베트남", code: "DLI", cityName: "달랏"),
        Airport(countryName: "베트남", code: "PQC", cityName: "푸꿕(푸국)"),
        Airport(countryName: "베트남", code: "HAN", cityName: "하노이"),
        Airport(countryName: "베트남", code: "HPH", cityName: "하이퐁"),
        Airport(countryName: "베트남", code: "SGN", cityName: "호치민"),
        
        Airport(countryName: "태국", code: "BKK", cityName: "방콕"),
        Airport(countryName: "태국", code: "CNX", cityName: "치앙마이"),
        Airport(countryName: "태국", code: "HKT", cityName: "푸켓"),
        
        Airport(countryName: "브루나이", code: "BWN", cityName: "세리 베가완 브루나이"),
        
        Airport(countryName: "인도네시아", code: "DPS", cityName: "덴파사르"),
        Airport(countryName: "인도네시아", code: "JKT", cityName: "자카르타"),
        
        Airport(countryName: "미얀마", code: "RGN", cityName: "랑군"),
        
        Airport(countryName: "캄보디아", code: "PNH", cityName: "프놈펜"),
        
        Airport(countryName: "인도", code: "DEL", cityName: "델리"),
        
        Airport(countryName: "스리랑카", code: "CMB", cityName: "콜롬보"),
        
        Airport(countryName: "네팔", code: "KTM", cityName: "카투만두"),
        
        Airport(countryName: "이스라엘", code: "TLV", cityName: "텔아비브"),
        
        Airport(countryName: "카타르", code: "DOH", cityName: "도하"),
        
        Airport(countryName: "아랍에미리트", code: "DXB", cityName: "두바이"),
        Airport(countryName: "아랍에미리트", code: "AUH", cityName: "아부다비"),
        Airport(countryName: "아랍에미리트", code: "DWC", cityName: "제벨알리 알막툼"),
        
        Airport(countryName: "사우디아라비아", code: "RUH", cityName: "리야드"),
        Airport(countryName: "사우디아라비아", code: "JED", cityName: "제다"),
        
        Airport(countryName: "미국", code: "BNA", cityName: "내슈빌"),
        Airport(countryName: "미국", code: "EWR", cityName: "뉴어크"),
        Airport(countryName: "미국", code: "NYC", cityName: "뉴욕"),
        Airport(countryName: "미국", code: "DFW", cityName: "달라스"),
        Airport(countryName: "미국", code: "DTT", cityName: "디트로이트"),
        Airport(countryName: "미국", code: "LAS", cityName: "라스베이거스"),
        Airport(countryName: "미국", code: "LAX", cityName: "로스앤젤레스"),
        Airport(countryName: "미국", code: "RFD", cityName: "록퍼드"),
        Airport(countryName: "미국", code: "SDF", cityName: "루이빌"),
        Airport(countryName: "미국", code: "MIA", cityName: "마이애미"),
        Airport(countryName: "미국", code: "MEM", cityName: "멤피스"),
        Airport(countryName: "미국", code: "MSP", cityName: "미네아폴리스"),
        Airport(countryName: "미국", code: "BOS", cityName: "보스턴"),
        Airport(countryName: "미국", code: "SFO", cityName: "샌프란시스코"),
        Airport(countryName: "미국", code: "SEA", cityName: "시애틀"),
        Airport(countryName: "미국", code: "CHI", cityName: "시카고"),
        Airport(countryName: "미국", code: "CVG", cityName: "신시내티"),
        Airport(countryName: "미국", code: "ATL", cityName: "애틀랜타"),
        Airport(countryName: "미국", code: "ANC", cityName: "앵커리지"),
        Airport(countryName: "미국", code: "OAK", cityName: "오클랜드"),
        Airport(countryName: "미국", code: "WAS", cityName: "워싱턴"),
        Airport(countryName: "미국", code: "IND", cityName: "인디애나폴리스"),
        Airport(countryName: "미국", code: "HSV", cityName: "헌츠빌"),
        
        Airport(countryName: "캐나다", code: "YVR", cityName: "밴쿠버"),
        Airport(countryName: "캐나다", code: "YTO", cityName: "토론토"),
        Airport(countryName: "캐나다", code: "YHZ", cityName: "핼리팩스"),
        
        Airport(countryName: "멕시코", code: "GDL", cityName: "과달라하라"),
        Airport(countryName: "멕시코", code: "MEX", cityName: "멕시코시티"),
        
        Airport(countryName: "브라질", code: "CPQ", cityName: "캄피나스"),
        
        Airport(countryName: "페루", code: "LIM", cityName: "리마"),
        
        Airport(countryName: "칠레", code: "SCL", cityName: "센티아고"),
        
        Airport(countryName: "체코", code: "PRG", cityName: "프라하"),
        
        Airport(countryName: "오스트리아", code: "VIE", cityName: "비엔나"),
        
        Airport(countryName: "룩셈부르크", code: "LUX", cityName: "룩셈부르크"),
        
        Airport(countryName: "스웨덴", code: "STO", cityName: "스톡홀름"),
        
        Airport(countryName: "영국", code: "LON", cityName: "런던"),
        
        Airport(countryName: "이탈리아", code: "ROM", cityName: "로마"),
        Airport(countryName: "이탈리아", code: "MXP", cityName: "밀라노"),
        
        Airport(countryName: "터키", code: "IST", cityName: "이스탄불"),
        
        Airport(countryName: "노르웨이", code: "OSL", cityName: "오슬로"),
        
        Airport(countryName: "헝가리", code: "BUD", cityName: "부다페스트"),
        
        Airport(countryName: "폴란드", code: "WAW", cityName: "바르샤바"),
        
        Airport(countryName: "프랑스", code: "PAR", cityName: "파리"),
        
        Airport(countryName: "스위스", code: "ZRH", cityName: "취리히"),
        
        Airport(countryName: "스페인", code: "MAD", cityName: "마드리드"),
        Airport(countryName: "스페인", code: "BCN", cityName: "바르셀로나"),
        
        Airport(countryName: "네덜란드", code: "AMS", cityName: "암스테르담"),
        
        Airport(countryName: "벨기에", code: "LGG", cityName: "리에주"),
        Airport(countryName: "벨기에", code: "BRU", cityName: "브뤼셀"),
        
        Airport(countryName: "독일", code: "LEJ", cityName: "라이프치히"),
        Airport(countryName: "독일", code: "MUC", cityName: "뮌헨"),
        Airport(countryName: "독일", code: "CGN", cityName: "쾰른"),
        Airport(countryName: "독일", code: "FRA", cityName: "프랑크푸르트"),
        
        Airport(countryName: "핀란드", code: "HEL", cityName: "헬싱키"),
        
        Airport(countryName: "우즈베키스탄", code: "TAS", cityName: "타슈켄트"),
        
        Airport(countryName: "아제르바이잔", code: "GYD", cityName: "바쿠"),
        
        Airport(countryName: "카자흐스탄", code: "ALA", cityName: "알마티"),
        
        Airport(countryName: "키르기스스탄", code: "FRU", cityName: "비슈케크"),
        
        Airport(countryName: "에티오피아", code: "ADD", cityName: "아디스아바바")
        
    ]
    /*
     //MARK: 아시아
     let japan: Country = Country(name: "Japan", airports: [
     Airport(code: "KMJ", name: "구마모토"),
     Airport(code: "KKJ", name: "기타큐슈"),
     Airport(code: "NGO", name: "나고야"),
     Airport(code: "TAK", name: "다가마스"),
     Airport(code: "TYO", name: "도쿄"),
     Airport(code: "MYJ", name: "마즈야마"),
     Airport(code: "SPK", name: "삿포로"),
     Airport(code: "SDJ", name: "센다이"),
     Airport(code: "FSZ", name: "시즈오카"),
     Airport(code: "OSA", name: "오사카"),
     Airport(code: "OKA", name: "오키나와"),
     Airport(code: "FUK", name: "후쿠오카")
     ])
     
     let china: Country = Country(name: "China", airports: [
     Airport(code: "CAN", name: "광저우"),
     Airport(code: "NKG", name: "난징"),
     Airport(code: "NGB", name: "닝보"),
     Airport(code: "DLC", name: "대련"),
     Airport(code: "DYG", name: "대용"),
     Airport(code: "MFM", name: "마카오"),
     Airport(code: "MDG", name: "무단장"),
     Airport(code: "BJS", name: "베이징"),
     Airport(code: "SHA", name: "상해"),
     Airport(code: "SJW", name: "쉬지아쭈앙"),
     Airport(code: "SIA", name: "시안"),
     Airport(code: "SHE", name: "심양"),
     Airport(code: "SZX", name: "심천"),
     Airport(code: "YNJ", name: "연길"),
     Airport(code: "YNT", name: "연대"),
     Airport(code: "WUX", name: "우시"),
     Airport(code: "WNZ", name: "위엔저우"),
     Airport(code: "WEH", name: "위해"),
     Airport(code: "JMU", name: "자무쓰"),
     Airport(code: "CGO", name: "정주"),
     Airport(code: "TNA", name: "제남"),
     Airport(code: "CSX", name: "창사"),
     Airport(code: "CGQ", name: "창춘"),
     Airport(code: "TAO", name: "청도"),
     Airport(code: "CTU", name: "청두"),
     Airport(code: "CKG", name: "충칭"),
     Airport(code: "KMG", name: "쿤밍"),
     Airport(code: "TSN", name: "톈진"),
     Airport(code: "XMN", name: "하문"),
     Airport(code: "HRB", name: "하얼빈"),
     Airport(code: "HAK", name: "하이커우"),
     Airport(code: "HGH", name: "항저우"),
     Airport(code: "HKG", name: "홍콩")
     ])
     
     let taiwan: Country = Country(name: "Taiwan", airports: [
     Airport(code: "KHH", name: "가오슝"),
     Airport(code: "TPE", name: "타이베이")
     ])
     
     let mongolia: Country = Country(name: "Mongolia", airports: [
     Airport(code: "ULN", name: "울란바토르")
     ])
     
     let laos: Country = Country(name: "Laos", airports: [
     Airport(code: "VTE", name: "비엔티안")
     ])
     
     let philippines: Country = Country(name: "Philippines", airports: [
     Airport(code: "MNL", name: "마닐라"),
     Airport(code: "CEB", name: "세부"),
     Airport(code: "KLO", name: "칼리보"),
     Airport(code: "CRK", name: "클락필드"),
     Airport(code: "TAG", name: "타그빌라란")
     ])
     
     let malaysia: Country = Country(name: "Malaysia", airports: [
     Airport(code: "BKI", name: "코타키나발루"),
     Airport(code: "KUL", name: "쿠알라룸푸르"),
     Airport(code: "PEN", name: "페낭")
     ])
     
     let singapore: Country = Country(name: "Singapore", airports: [
     Airport(code: "SIN", name: "싱가폴")
     ])
     
     let vietnam: Country = Country(name: "Vietnam", airports: [
     Airport(code: "VCA", name: "껀터"),
     Airport(code: "CXR", name: "나트랑"),
     Airport(code: "DAD", name: "다낭"),
     Airport(code: "DLI", name: "달랏"),
     Airport(code: "PQC", name: "푸꼭(푸국)"),
     Airport(code: "HAN", name: "하노이"),
     Airport(code: "HPH", name: "하이퐁"),
     Airport(code: "SGN", name: "호치민")
     ])
     
     let thailand: Country = Country(name: "Thailand", airports: [
     Airport(code: "BKK", name: "방콕"),
     Airport(code: "CNX", name: "치앙마이"),
     Airport(code: "HKT", name: "푸켓")
     ])
     
     
     
     let brunei: Country = Country(name: "Brunei", airports: [
     Airport(code: "BWN", name: "세리 베가완 브루나이")
     ])
     
     let indonesia: Country = Country(name: "Indonesia", airports: [
     Airport(code: "DPS", name: "덴파사르"),
     Airport(code: "JKT", name: "자카르타")
     ])
     
     let myanmar: Country = Country(name: "Myanmar", airports: [
     Airport(code: "RGN", name: "랑군")
     ])
     
     let cambodia: Country = Country(name: "Cambodia", airports: [
     Airport(code: "PNH", name: "프놈펜")
     ])
     
     let india: Country = Country(name: "India", airports: [
     Airport(code: "DEL", name: "델리")
     ])
     
     let sriLanka: Country = Country(name: "Sri Lanka", airports: [
     Airport(code: "CMB", name: "콜롬보")
     ])
     
     let nepal: Country = Country(name: "Nepal", airports: [
     Airport(code: "KTM", name: "카투만두")
     ])
     
     let israel: Country = Country(name: "Israel", airports: [
     Airport(code: "TLV", name: "텔아비브")
     ])
     
     let qatar: Country = Country(name: "Qatar", airports: [
     Airport(code: "DOH", name: "도하")
     ])
     
     let unitedArabEmirates: Country = Country(name: "United Arab Emirates", airports: [
     Airport(code: "DXB", name: "두바이"),
     Airport(code: "AUH", name: "아부다비"),
     Airport(code: "DWC", name: "제벨알리 알막툼")
     ])
     
     let saudiArabia: Country = Country(name: "Saudi Arabia", airports: [
     Airport(code: "RUH", name: "리야드"),
     Airport(code: "JED", name: "제다")
     ])
     
     //MARK: 미주
     let USA: Country = Country(name: "United States", airports: [
     Airport(code: "BNA", name: "내슈빌"),
     Airport(code: "EWR", name: "뉴어크"),
     Airport(code: "NYC", name: "뉴욕"),
     Airport(code: "DFW", name: "달라스"),
     Airport(code: "DTT", name: "디트로이트"),
     Airport(code: "LAS", name: "라스베이거스"),
     Airport(code: "LAX", name: "로스앤젤레스"),
     Airport(code: "RFD", name: "록퍼드"),
     Airport(code: "SDF", name: "루이빌"),
     Airport(code: "MIA", name: "마이애미"),
     Airport(code: "MEM", name: "멤피스"),
     Airport(code: "MSP", name: "미네아폴리스"),
     Airport(code: "BOS", name: "보스턴"),
     Airport(code: "SFO", name: "샌프란시스코"),
     Airport(code: "SEA", name: "시애틀"),
     Airport(code: "CHI", name: "시카고"),
     Airport(code: "CVG", name: "신시내티"),
     Airport(code: "ATL", name: "애틀랜타"),
     Airport(code: "ANC", name: "앵커리지"),
     Airport(code: "OAK", name: "오클랜드"),
     Airport(code: "WAS", name: "워싱턴"),
     Airport(code: "IND", name: "인디애나폴리스"),
     Airport(code: "HSV", name: "헌츠빌")
     ])
     
     let Canada: Country = Country(name: "Canada", airports: [
     Airport(code: "YVR", name: "밴쿠버"),
     Airport(code: "YTO", name: "토론토"),
     Airport(code: "YHZ", name: "핼리팩스")
     ])
     
     let Mexico: Country = Country(name: "Mexico", airports: [
     Airport(code: "GDL", name: "과달라하라"),
     Airport(code: "MEX", name: "멕시코시티")
     ])
     
     let Brazil: Country = Country(name: "Brazil", airports: [
     Airport(code: "CPQ", name: "캄피나스")
     ])
     
     let Peru: Country = Country(name: "Peru", airports: [
     Airport(code: "LIM", name: "리마")
     ])
     
     let Chile: Country = Country(name: "Chile", airports: [
     Airport(code: "SCL", name: "센티아고")
     ])
     
     //MARK: 오세아니아
     let CzechRepublic: Country = Country(name: "Czech Republic", airports: [
     Airport(code: "PRG", name: "프라하")
     ])
     
     let Austria: Country = Country(name: "Austria", airports: [
     Airport(code: "VIE", name: "비엔나")
     ])
     
     let Luxembourg: Country = Country(name: "Luxembourg", airports: [
     Airport(code: "LUX", name: "룩셈부르크")
     ])
     
     let Sweden: Country = Country(name: "Sweden", airports: [
     Airport(code: "STO", name: "스톡홀름")
     ])
     
     let UK: Country = Country(name: "United Kingdom", airports: [
     Airport(code: "LON", name: "런던")
     ])
     
     let Italy: Country = Country(name: "Italy", airports: [
     Airport(code: "ROM", name: "로마"),
     Airport(code: "MXP", name: "밀라노")
     ])
     
     let Turkey: Country = Country(name: "Turkey", airports: [
     Airport(code: "IST", name: "이스탄불")
     ])
     
     let Norway: Country = Country(name: "Norway", airports: [
     Airport(code: "OSL", name: "오슬로")
     ])
     
     let Hungary: Country = Country(name: "Hungary", airports: [
     Airport(code: "BUD", name: "부다페스트")
     ])
     
     let Poland: Country = Country(name: "Poland", airports: [
     Airport(code: "WAW", name: "바르샤바")
     ])
     
     let France: Country = Country(name: "France", airports: [
     Airport(code: "PAR", name: "파리")
     ])
     
     let Switzerland: Country = Country(name: "Switzerland", airports: [
     Airport(code: "ZRH", name: "취리히")
     ])
     
     let Spain: Country = Country(name: "Spain", airports: [
     Airport(code: "MAD", name: "마드리드"),
     Airport(code: "BCN", name: "바르셀로나")
     ])
     
     let Netherlands: Country = Country(name: "Netherlands", airports: [
     Airport(code: "AMS", name: "암스테르담")
     ])
     
     let Belgium: Country = Country(name: "Belgium", airports: [
     Airport(code: "LGG", name: "리에주"),
     Airport(code: "BRU", name: "브뤼셀")
     ])
     
     let Germany: Country = Country(name: "Germany", airports: [
     Airport(code: "LEJ", name: "라이프치히"),
     Airport(code: "MUC", name: "뮌헨"),
     Airport(code: "CGN", name: "쾰른"),
     Airport(code: "FRA", name: "프랑크푸르트")
     ])
     
     let Finland: Country = Country(name: "Finland", airports: [
     Airport(code: "HEL", name: "헬싱키")
     ])
     
     let Uzbekistan: Country = Country(name: "Uzbekistan", airports: [
     Airport(code: "TAS", name: "타슈켄트")
     ])
     
     let Azerbaijan: Country = Country(name: "Azerbaijan", airports: [
     Airport(code: "GYD", name: "바쿠")
     ])
     
     let Kazakhstan: Country = Country(name: "Kazakhstan", airports: [
     Airport(code: "ALA", name: "알마티")
     ])
     
     let Kyrgyzstan: Country = Country(name: "Kyrgyzstan", airports: [
     Airport(code: "FRU", name: "비슈케크")
     ])
     
     
     //MARK: 아프리카
     let Ethiopia: Country = Country(name: "Ethiopia", airports: [
     Airport(code: "ADD", name: "아디스아바바")
     ])
     */
}

struct ContryData {
    let AllAirports: [Airport] = [
        Airport(countryName: "대한민국", code: "ICN", cityName: "인천"),
        Airport(countryName: "대한민국", code: "YNY", cityName: "양양"),
        Airport(countryName: "대한민국", code: "MWX", cityName: "무안"),
        Airport(countryName: "대한민국", code: "TAE", cityName: "대구"),
        Airport(countryName: "대한민국", code: "GMP", cityName: "서울/김포"),
        Airport(countryName: "대한민국", code: "PUS", cityName: "부산/김해"),
        Airport(countryName: "대한민국", code: "CJU", cityName: "제주"),
        Airport(countryName: "대한민국", code: "CJJ", cityName: "청주"),
        Airport(countryName: "대한민국", code: "USN", cityName: "울산"),
        Airport(countryName: "대한민국", code: "KWJ", cityName: "광주"),
        Airport(countryName: "대한민국", code: "RSU", cityName: "여수"),
        Airport(countryName: "대한민국", code: "KPO", cityName: "포항"),
        Airport(countryName: "대한민국", code: "KUV", cityName: "군산"),
        Airport(countryName: "대한민국", code: "WJU", cityName: "횡성/원주"),
        Airport(countryName: "대한민국", code: "HIN", cityName: "사천"),
        
        Airport(countryName: "일본", code: "KMJ", cityName: "구마모토"),
        Airport(countryName: "일본", code: "KKJ", cityName: "기타큐슈"),
        Airport(countryName: "일본", code: "NGO", cityName: "나고야"),
        Airport(countryName: "일본", code: "TAK", cityName: "다가마스"),
        Airport(countryName: "일본", code: "TYO", cityName: "도쿄/하네다"),
        Airport(countryName: "일본", code: "MYJ", cityName: "마즈야마"),
        Airport(countryName: "일본", code: "SPK", cityName: "삿포로"),
        Airport(countryName: "일본", code: "SDJ", cityName: "센다이"),
        Airport(countryName: "일본", code: "FSZ", cityName: "시즈오카"),
        Airport(countryName: "일본", code: "OSA", cityName: "오사카/간사이"),
        Airport(countryName: "일본", code: "OKA", cityName: "오키나와"),
        Airport(countryName: "일본", code: "FUK", cityName: "후쿠오카"),
        
        Airport(countryName: "중국", code: "CAN", cityName: "광저우"),
        Airport(countryName: "중국", code: "NKG", cityName: "난징"),
        Airport(countryName: "중국", code: "NGB", cityName: "닝보"),
        Airport(countryName: "중국", code: "DLC", cityName: "대련"),
        Airport(countryName: "중국", code: "DYG", cityName: "대용"),
        Airport(countryName: "중국", code: "MFM", cityName: "마카오"),
        Airport(countryName: "중국", code: "MDG", cityName: "무단장"),
        Airport(countryName: "중국", code: "BJS", cityName: "베이징/서우두"),
        Airport(countryName: "중국", code: "SHA", cityName: "상해"),
        Airport(countryName: "중국", code: "SJW", cityName: "쉬지아쭈앙"),
        Airport(countryName: "중국", code: "SIA", cityName: "시안"),
        Airport(countryName: "중국", code: "SHE", cityName: "심양"),
        Airport(countryName: "중국", code: "SZX", cityName: "심천"),
        Airport(countryName: "중국", code: "YNJ", cityName: "연길"),
        Airport(countryName: "중국", code: "YNT", cityName: "연대"),
        Airport(countryName: "중국", code: "WUX", cityName: "우시"),
        Airport(countryName: "중국", code: "WNZ", cityName: "위엔저우"),
        Airport(countryName: "중국", code: "WEH", cityName: "위해"),
        Airport(countryName: "중국", code: "JMU", cityName: "자무쓰"),
        Airport(countryName: "중국", code: "CGO", cityName: "정주"),
        Airport(countryName: "중국", code: "TNA", cityName: "제남"),
        Airport(countryName: "중국", code: "CSX", cityName: "창사"),
        Airport(countryName: "중국", code: "CGQ", cityName: "창춘"),
        Airport(countryName: "중국", code: "TAO", cityName: "청도"),
        Airport(countryName: "중국", code: "CTU", cityName: "청두"),
        Airport(countryName: "중국", code: "CKG", cityName: "충칭"),
        Airport(countryName: "중국", code: "KMG", cityName: "쿤밍"),
        Airport(countryName: "중국", code: "TSN", cityName: "톈진"),
        Airport(countryName: "중국", code: "XMN", cityName: "하문"),
        Airport(countryName: "중국", code: "HRB", cityName: "하얼빈"),
        Airport(countryName: "중국", code: "HAK", cityName: "하이커우"),
        Airport(countryName: "중국", code: "HGH", cityName: "항저우"),
        Airport(countryName: "중국", code: "HKG", cityName: "홍콩"),
        
        Airport(countryName: "대만", code: "KHH", cityName: "가오슝"),
        Airport(countryName: "대만", code: "TPE", cityName: "타이베이"),
        
        Airport(countryName: "몽골", code: "ULN", cityName: "울란바토르"),
        
        Airport(countryName: "라오스", code: "VTE", cityName: "비엔티안"),
        
        Airport(countryName: "필리핀", code: "MNL", cityName: "마닐라"),
        Airport(countryName: "필리핀", code: "CEB", cityName: "세부"),
        Airport(countryName: "필리핀", code: "KLO", cityName: "칼리보"),
        Airport(countryName: "필리핀", code: "CRK", cityName: "클락필드"),
        Airport(countryName: "필리핀", code: "TAG", cityName: "타그빌라란"),
        
        Airport(countryName: "말레이시아", code: "BKI", cityName: "코타키나발루"),
        Airport(countryName: "말레이시아", code: "KUL", cityName: "쿠알라룸푸르"),
        Airport(countryName: "말레이시아", code: "PEN", cityName: "페낭"),
        
        Airport(countryName: "싱가포르", code: "SIN", cityName: "싱가폴"),
        
        Airport(countryName: "베트남", code: "VCA", cityName: "껀터"),
        Airport(countryName: "베트남", code: "CXR", cityName: "나트랑"),
        Airport(countryName: "베트남", code: "DAD", cityName: "다낭"),
        Airport(countryName: "베트남", code: "DLI", cityName: "달랏"),
        Airport(countryName: "베트남", code: "PQC", cityName: "푸꼭(푸국)"),
        Airport(countryName: "베트남", code: "HAN", cityName: "하노이"),
        Airport(countryName: "베트남", code: "HPH", cityName: "하이퐁"),
        Airport(countryName: "베트남", code: "SGN", cityName: "호치민"),
        
        Airport(countryName: "태국", code: "BKK", cityName: "방콕"),
        Airport(countryName: "태국", code: "CNX", cityName: "치앙마이"),
        Airport(countryName: "태국", code: "HKT", cityName: "푸켓"),
        
        Airport(countryName: "브루나이", code: "BWN", cityName: "세리 베가완 브루나이"),
        
        Airport(countryName: "인도네시아", code: "DPS", cityName: "덴파사르"),
        Airport(countryName: "인도네시아", code: "JKT", cityName: "자카르타"),
        
        Airport(countryName: "미얀마", code: "RGN", cityName: "랑군"),
        
        Airport(countryName: "캄보디아", code: "PNH", cityName: "프놈펜"),
        
        Airport(countryName: "인도", code: "DEL", cityName: "델리"),
        
        Airport(countryName: "스리랑카", code: "CMB", cityName: "콜롬보"),
        
        Airport(countryName: "네팔", code: "KTM", cityName: "카투만두"),
        
        Airport(countryName: "이스라엘", code: "TLV", cityName: "텔아비브"),
        
        Airport(countryName: "카타르", code: "DOH", cityName: "도하"),
        
        Airport(countryName: "아랍에미리트", code: "DXB", cityName: "두바이"),
        Airport(countryName: "아랍에미리트", code: "AUH", cityName: "아부다비"),
        Airport(countryName: "아랍에미리트", code: "DWC", cityName: "제벨알리 알막툼"),
        
        Airport(countryName: "사우디아라비아", code: "RUH", cityName: "리야드"),
        Airport(countryName: "사우디아라비아", code: "JED", cityName: "제다"),
        
        Airport(countryName: "미국", code: "BNA", cityName: "내슈빌"),
        Airport(countryName: "미국", code: "EWR", cityName: "뉴어크"),
        Airport(countryName: "미국", code: "NYC", cityName: "뉴욕"),
        Airport(countryName: "미국", code: "DFW", cityName: "달라스"),
        Airport(countryName: "미국", code: "DTT", cityName: "디트로이트"),
        Airport(countryName: "미국", code: "LAS", cityName: "라스베이거스"),
        Airport(countryName: "미국", code: "LAX", cityName: "로스앤젤레스"),
        Airport(countryName: "미국", code: "RFD", cityName: "록퍼드"),
        Airport(countryName: "미국", code: "SDF", cityName: "루이빌"),
        Airport(countryName: "미국", code: "MIA", cityName: "마이애미"),
        Airport(countryName: "미국", code: "MEM", cityName: "멤피스"),
        Airport(countryName: "미국", code: "MSP", cityName: "미네아폴리스"),
        Airport(countryName: "미국", code: "BOS", cityName: "보스턴"),
        Airport(countryName: "미국", code: "SFO", cityName: "샌프란시스코"),
        Airport(countryName: "미국", code: "SEA", cityName: "시애틀"),
        Airport(countryName: "미국", code: "CHI", cityName: "시카고"),
        Airport(countryName: "미국", code: "CVG", cityName: "신시내티"),
        Airport(countryName: "미국", code: "ATL", cityName: "애틀랜타"),
        Airport(countryName: "미국", code: "ANC", cityName: "앵커리지"),
        Airport(countryName: "미국", code: "OAK", cityName: "오클랜드"),
        Airport(countryName: "미국", code: "WAS", cityName: "워싱턴"),
        Airport(countryName: "미국", code: "IND", cityName: "인디애나폴리스"),
        Airport(countryName: "미국", code: "HSV", cityName: "헌츠빌"),
        
        Airport(countryName: "캐나다", code: "YVR", cityName: "밴쿠버"),
        Airport(countryName: "캐나다", code: "YTO", cityName: "토론토"),
        Airport(countryName: "캐나다", code: "YHZ", cityName: "핼리팩스"),
        
        Airport(countryName: "멕시코", code: "GDL", cityName: "과달라하라"),
        Airport(countryName: "멕시코", code: "MEX", cityName: "멕시코시티"),
        
        Airport(countryName: "브라질", code: "CPQ", cityName: "캄피나스"),
        
        Airport(countryName: "페루", code: "LIM", cityName: "리마"),
        
        Airport(countryName: "칠레", code: "SCL", cityName: "센티아고"),
        
        Airport(countryName: "체코", code: "PRG", cityName: "프라하"),
        
        Airport(countryName: "오스트리아", code: "VIE", cityName: "비엔나"),
        
        Airport(countryName: "룩셈부르크", code: "LUX", cityName: "룩셈부르크"),
        
        Airport(countryName: "스웨덴", code: "STO", cityName: "스톡홀름"),
        
        Airport(countryName: "영국", code: "LON", cityName: "런던"),
        
        Airport(countryName: "이탈리아", code: "ROM", cityName: "로마"),
        Airport(countryName: "이탈리아", code: "MXP", cityName: "밀라노"),
        
        Airport(countryName: "터키", code: "IST", cityName: "이스탄불"),
        
        Airport(countryName: "노르웨이", code: "OSL", cityName: "오슬로"),
        
        Airport(countryName: "헝가리", code: "BUD", cityName: "부다페스트"),
        
        Airport(countryName: "폴란드", code: "WAW", cityName: "바르샤바"),
        
        Airport(countryName: "프랑스", code: "PAR", cityName: "파리"),
        
        Airport(countryName: "스위스", code: "ZRH", cityName: "취리히"),
        
        Airport(countryName: "스페인", code: "MAD", cityName: "마드리드"),
        Airport(countryName: "스페인", code: "BCN", cityName: "바르셀로나"),
        
        Airport(countryName: "네덜란드", code: "AMS", cityName: "암스테르담"),
        
        Airport(countryName: "벨기에", code: "LGG", cityName: "리에주"),
        Airport(countryName: "벨기에", code: "BRU", cityName: "브뤼셀"),
        
        Airport(countryName: "독일", code: "LEJ", cityName: "라이프치히"),
        Airport(countryName: "독일", code: "MUC", cityName: "뮌헨"),
        Airport(countryName: "독일", code: "CGN", cityName: "쾰른"),
        Airport(countryName: "독일", code: "FRA", cityName: "프랑크푸르트"),
        
        Airport(countryName: "핀란드", code: "HEL", cityName: "헬싱키"),
        
        Airport(countryName: "우즈베키스탄", code: "TAS", cityName: "타슈켄트"),
        
        Airport(countryName: "아제르바이잔", code: "GYD", cityName: "바쿠"),
        
        Airport(countryName: "카자흐스탄", code: "ALA", cityName: "알마티"),
        
        Airport(countryName: "키르기스스탄", code: "FRU", cityName: "비슈케크"),
        
        Airport(countryName: "에티오피아", code: "ADD", cityName: "아디스아바바")
    ]
}


