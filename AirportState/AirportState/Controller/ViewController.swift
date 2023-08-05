//
//  ViewController.swift
//  AirportState
//
//  Created by Taewon Yoon on 2023/07/24.
//

import UIKit
import XMLParsing
import Lottie

protocol ViewDelegate {
    func RenameButtonTitle(state: String, name: String, code: String)
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, XMLParserDelegate {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var departureTextButton: UIButton!
    @IBOutlet var arriveTextButton: UIButton!
    
    var departureCityCode: String?
    var arriveCityCode: String?
    
    // XML로 받는 데이터 보관 변수
    lazy var items:[[String:String]] = []
    lazy var item:[String:String] = [:]
    
    // JSON으로 받는 데이터 보관 변수
    var jsonData: IncheonResponse?
    var jsonItem: [IncheonItem]?
    
    var currentElement = ""
    var elementCount = 0
    
    // 화면에 보여줄 애니메이션
    private let animationView = LottieAnimationView(name: "animation.json")
    
    // 빈 검색결과 창을 보여줄 subview
    let subView = UIView()

    var trigger = false // 마지막이 아닌 경우 애니메이션을 멈추지 않게 하기 위한 장치
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "DepartureTableViewCell", bundle: nil), forCellReuseIdentifier: "fly")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 200
        

    }
    



    // XML 파싱을 시작하는 태그에서 이벤트 핸들링
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        currentElement = elementName
        if elementName == "items" {
//            items = [] // items를 초기화시키기
            print(items.description + "여기")
        } else if elementName == "item" {
            item = [:]
        }
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        let data = string.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        item[currentElement] = data
//        print("current:\(currentElement)" + " data:\(data)" + "여기좀 보세요^^")
    }

    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "item" {
            items.append(item)
            print("체크포인트1")
            tableView.reloadData()

        }
    }
    
 
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return UITableView.automaticDimension // 안될때 이유는 autolayout을 설정 안했기 때문
        } else {
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("체크한다")
        Task {
            await self.stopAnimation()
        }
        
        print("분명히 죽였는데")
        if departureTextButton.currentTitle != "인천" && arriveTextButton.currentTitle != "인천" {
            items = items.filter { $0.values.contains(arriveTextButton.currentTitle!) } //
            print("테이블의 갯수1: \(items.count)")
            items.count == 0 ? self.showEmpty() : self.subView.removeFromSuperview()
            return items.count
        } else { // 만일 둘 중 하나라도 인천이라면
            if departureTextButton.currentTitle == "인천" { // 만약 인천이 출발지라면
                jsonItem = jsonData?.response.body.items.filter({ item in
                    item.cityCode == arriveCityCode
                })
            } else { // 만약 인천이 도착지라면
                jsonItem = jsonData?.response.body.items.filter({ item in
                    item.cityCode == departureCityCode
                })
            }
            jsonItem?.count == 0 ? self.showEmpty() : self.subView.removeFromSuperview()
            
            return jsonItem?.count ?? 0
        }
//        print("출발지:\(departureTextButton.currentTitle), 목적지:\(arriveTextButton.currentTitle), 코카콜라 \(items.count)")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fly", for: indexPath) as! DepartureTableViewCell
//        if (item[XMLKey.arrivedKor.rawValue]! == arriveTextButton.currentTitle) && (item[XMLKey.boardingKor.rawValue]! == departureTextButton.currentTitle) {
//        print("선택출:\(departureTextButton.currentTitle), 선택도:\(arriveTextButton.currentTitle)")
        
        if departureTextButton.currentTitle != "인천" && arriveTextButton.currentTitle != "인천" {
            let item = items[indexPath.row]
            cell.t0.text = item[KoreaXMLKey.boardingKor.rawValue]! + "(\(item[KoreaXMLKey.airport.rawValue]!))" + " ➡️ " + item[KoreaXMLKey.arrivedKor.rawValue]! + "(\(item[KoreaXMLKey.city.rawValue]!))"
            if let tmp = item[KoreaXMLKey.etd.rawValue] {
                cell.t1.text = "예정시간:" + item[KoreaXMLKey.std.rawValue]! + " -> " + "변경후:" + item[KoreaXMLKey.etd.rawValue]!
            } else {
                cell.t1.text = "예정시간:" + item[KoreaXMLKey.std.rawValue]!
            }
            cell.t2.text = "Gate:" + (item[KoreaXMLKey.gate.rawValue] ?? "미지정")
            cell.t3.text = item[KoreaXMLKey.airlineKorean.rawValue]! + " (" + item[KoreaXMLKey.airFln.rawValue]! + ")"
            cell.t4.setTitle(item[KoreaXMLKey.rmkKor.rawValue] ?? "", for: .normal)
            if item[KoreaXMLKey.rmkKor.rawValue] == "수속중" {
                cell.t4.backgroundColor = UIColor(red: 36/255, green: 87/255, blue: 153/255, alpha: 1.0) // 파랑
            } else if item[KoreaXMLKey.rmkKor.rawValue] == "지연" || item[KoreaXMLKey.rmkKor.rawValue] == "탑승구 변경" {
                cell.t4.backgroundColor = UIColor(red: 207/255, green: 53/255, blue: 69/255, alpha: 1.0) // 빨강
            } else if item[KoreaXMLKey.rmkKor.rawValue] == "마감예정" || item[KoreaXMLKey.rmkKor.rawValue] == "탑승장 입장"  || item[KoreaXMLKey.rmkKor.rawValue] == "탑승중" || item[KoreaXMLKey.rmkKor.rawValue] == "탑승최종" {
                cell.t4.backgroundColor = UIColor(red: 80/255, green: 160/255, blue: 56/255, alpha: 1.0) // 초록
            } else if item[KoreaXMLKey.rmkKor.rawValue] == "출발" || item[KoreaXMLKey.rmkKor.rawValue] == "도착" {
//                cell.t4.setTitle(item[KoreaXMLKey.rmkKor.rawValue] ?? "출발전", for: .normal)
                cell.t4.backgroundColor = UIColor(red: 109/255, green: 114/255, blue: 146/255, alpha: 1.0) // 회색
            } else {
                cell.t4.setTitle("-", for: .normal)
                cell.t4.backgroundColor = UIColor.clear
            }
        } else {
            // 인천공항을 들리는 상황이라면
//            if departureTextButton.currentTitle == "인천" {
                // 만약 출발지가 인천이라면
                cell.t0.text = departureTextButton.currentTitle! + "(\(departureCityCode ?? ""))" + " ➡️ " + arriveTextButton.currentTitle! + "(\(arriveCityCode ?? ""))"
                if let scheduleDataTime = jsonItem?[indexPath.row].scheduleDateTime,
                   let estimatedDataTime = jsonItem?[indexPath.row].estimatedDateTime {
                    cell.t1.text = "예정시간:" + scheduleDataTime + " -> " + "변경후:" + estimatedDataTime
                } else {
                    cell.t1.text = "예정시간:" + (jsonItem?[indexPath.row].scheduleDateTime ?? "미지정")
                }
                cell.t2.text = "Gate:" + (jsonItem?[indexPath.row].gatenumber ?? "미지정")
                if let airline = jsonItem?[indexPath.row].airline, let flightId = jsonItem?[indexPath.row].flightId {
                    cell.t3.text = airline + " (\(flightId))"
                }
                cell.t4.setTitle(jsonItem?[indexPath.row].remark, for: .normal)
                if jsonItem?[indexPath.row].remark == "수속중" {
                    cell.t4.backgroundColor = UIColor(red: 36/255, green: 87/255, blue: 153/255, alpha: 1.0) // 파랑
                } else if jsonItem?[indexPath.row].remark == "탑승구 변경" || jsonItem?[indexPath.row].remark == "지연"  {
                    cell.t4.backgroundColor = UIColor(red: 207/255, green: 53/255, blue: 69/255, alpha: 1.0) // 빨강
                } else if jsonItem?[indexPath.row].remark == "탑승장 입장" || item[KoreaXMLKey.rmkKor.rawValue] == "탑승중" || item[KoreaXMLKey.rmkKor.rawValue] == "마감예정" {
                    cell.t4.backgroundColor = UIColor(red: 80/255, green: 160/255, blue: 56/255, alpha: 1.0) // 초록
                } else if jsonItem?[indexPath.row].remark == "출발" || jsonItem?[indexPath.row].remark == "도착" {
                    cell.t4.backgroundColor = UIColor(red: 109/255, green: 114/255, blue: 146/255, alpha: 1.0) // 회색
                } else {
                    cell.t4.setTitle(jsonItem?[indexPath.row].remark ?? "-", for: .normal)
                    cell.t4.backgroundColor = UIColor(red: 109/255, green: 114/255, blue: 146/255, alpha: 1.0) // 회색

                }


        }
        
        return cell
    }
    
    @IBAction func departureButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "departure", sender: nil)
    }
    
    @IBAction func arriveButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "arrive", sender: nil)
    }
    
    @IBAction func swapButton(_ sender: UIButton) {
        let tmpCode = departureCityCode
        departureCityCode = arriveCityCode
        arriveCityCode = tmpCode
        let tmpName = departureTextButton.currentTitle
        departureTextButton.setTitle(arriveTextButton.currentTitle, for: .normal)
        arriveTextButton.setTitle(tmpName, for: .normal)
        checkUpdate()
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let departureVC = self.storyboard?.instantiateViewController(withIdentifier: "DepartureViewController") as! DepartureSearchViewController
        if segue.identifier == "departure" {
            print("도착")
            departureVC.placeHolderText = "출발지를 입력하세요"
            departureVC.DepartureArrive = "departure"
            
            departureVC.choosenCities = KoreaAirports().airports
//            departureVC.DepartureArriveCityCode =
        } else if segue.identifier == "arrive" {
            print("출발")
            departureVC.placeHolderText = "목적지를 입력하세요"
            departureVC.DepartureArrive = "arrive"
            departureVC.choosenCities = departureVC.countries
//            if let departureText = departureTextButton.titleLabel?.text, let arriveText = arriveTextButton.titleLabel?.text {
//                // departureTextButton.titleLabel?.text와 arriveTextButton.titleLabel?.text 모두 값이 있는 경우 (case 4)
//                if departureVC.koreaCities.contains(where: { airport in return airport.cityName == departureText }) && departureVC.koreaCities.contains(where: {airport in return airport.cityName == arriveText}){ // 11
//                    departureVC.choosenCities = departureVC.countries
//                } else if departureVC.koreaCities.contains(where: { airport in return airport.cityName == departureText }) && departureVC.internationalCities.contains(where: {airport in return airport.cityName == arriveText}) {// 8
//                    departureVC.choosenCities = departureVC.countries
//                } else if departureVC.internationalCities.contains(where: { airport in return airport.cityName == departureText }) && departureVC.koreaCities.contains(where: {airport in return airport.cityName == arriveText}) {//9
//                    departureVC.choosenCities = departureVC.koreaCities
//                }
//            }  else if let departureText = departureTextButton.titleLabel?.text {
//                // departureTextButton.titleLabel?.text에 값이 있고 arriveTextButton.titleLabel?.text가 비어있는 경우 (case 2)
//                if departureVC.koreaCities.contains(where: { airport in airport.cityName == departureText }) { // 13
//                    departureVC.choosenCities = departureVC.countries
//                } else if departureVC.internationalCities.contains(where: { airport in airport.cityName == departureText }) { // 15
//                    departureVC.choosenCities = departureVC.koreaCities
//                }
//            } else if let arriveText = arriveTextButton.titleLabel?.text {
//                // departureTextButton.titleLabel?.text가 비어있고 arriveTextButton.titleLabel?.text에 값이 있는 경우 (case 3)
//                if departureVC.koreaCities.contains(where: { airport in airport.cityName == arriveText }) { // 3
//                    departureVC.choosenCities = departureVC.countries
//                } else if departureVC.internationalCities.contains(where: { airport in airport.cityName == arriveText }) { // 4
//                    departureVC.choosenCities = departureVC.countries
//                }
//            } else {
//                // departureTextButton.titleLabel?.text와 arriveTextButton.titleLabel?.text 모두 비어있는 경우 (case 1)
//                departureVC.choosenCities = departureVC.countries
//            }
            
            
        }
        
        departureVC.choosenCities = departureVC.countries
        
        
        departureVC.departureCity = departureTextButton.currentTitle
        
        departureVC.delegate = self
        present(departureVC, animated: true)
    }
    
    func checkUpdate(){
            self.items.removeAll() // 검색 전에 기존 기록들 초기화하기
            self.item.removeAll()
            self.tableView.reloadData()
        print("체크업데이트")
        if departureTextButton.currentTitle == arriveTextButton.currentTitle {
            return
        }

        Task {
            print("보여주자나")
            await self.showAnimation()
        }

//        print("출발지:\(departureTextButton.titleLabel?.text), 도착지:\(arriveTextButton.titleLabel?.text)")
        
        var schLineType: String? // I = 국제선, D = 국내선
        // 해외->국내 or 국내->해외 (국제편) 만약 인천이라면 해외로 설정한다
        if departureTextButton.titleLabel?.text == "인천" {
            // 인천에서 출발하는거면
            print("departure가 인천이라는거를 인식하고 url로 값을 받아오려고 준비중")
            DispatchQueue.main.async {
                if let url = IncheonConstData().departureURL {
                    let session = URLSession(configuration: .default)
                    let task = session.dataTask(with: url) { data, response, error in
                        if error != nil {
                            print("departure로부터 값을 가져오는데 에러 발생")
                            return
                        }
                        print("에러없이 값을 가져오는 차례")
                        if let data = data {
                            do {
                                self.jsonData = try JSONDecoder().decode(IncheonResponse.self, from: data)
                                
                                Task {
//                                    print("체크포인트1")
                                    self.tableView.reloadData()
                                }

                            } catch {
                                print("decode하는데 에러가 발생함\(error)")
                            }
                        }
                    }
                    task.resume()
                }

            }

            
        } else if arriveTextButton.titleLabel?.text == "인천" {
            // 인천에 도착하는거면
            print("arrive가 인천이라는거를 인식하고 url로 값을 받아오려고 준비중")
            if let url = IncheonConstData().arriveURL {
                let session = URLSession(configuration: .default)
                let task = session.dataTask(with: url) { data, response, error in
                    if error != nil {
                        print("departure로부터 값을 가져오는데 에러 발생")
                        return
                    }
                    if let data = data {
                        do {
                            self.jsonData = try JSONDecoder().decode(IncheonResponse.self, from: data)

                            Task {
                                print("체크포인트1")
                                print(self.jsonData?.response.body.items.description)

                                self.tableView.reloadData()
                                
                            }
                        } catch {
                            print("decode하는데 에러가 발생함\(error)")
                        }
                    }
                }
                task.resume()
            }
            
        } else {
            if InternactionalCities().airports.contains(where: { airport in return airport.code == departureCityCode }) ||
                InternactionalCities().airports.contains(where: { airport in return airport.code == arriveCityCode }) {
                // 해외 -> 한국 or 한국 -> 해외
                schLineType = "I"
                print("외국이다")
            } else if KoreaAirports().airports.contains(where: { airport in return airport.code == departureCityCode }) &&
                        KoreaAirports().airports.contains(where: { airport in return airport.code == departureCityCode }) {
                // 한국 -> 한국
                schLineType = "D"
                print("한국이다")
            }
            let schAirCode = ContryData().AllAirports.first { $0.code == departureCityCode }
            let url =  "http://openapi.airport.co.kr/service/rest/FlightStatusList/getFlightStatusList?ServiceKey=\(KoreaConstData().apiKey)&schStTime=0000&schEdTime=2400&schLineType=\(schLineType!)&schIOType=O&schAirCode=\(schAirCode!.code)&pageNo="
            print(url)
                for i in 1...30 {
                    if let url = NSURL(string: url + String(i)) {
                        if let parser = XMLParser(contentsOf: url as URL) {
                            parser.delegate = self
                            if parser.parse() {
                                print("parsing succed")
                            } else {

                                print("parsing failed")
                                return
                            }
                        }
                    } else {
                        print("URL error")
                        break
                    }

                }
        }
        
        
        
    }
    
    
}


extension ViewController: ViewDelegate {
    func RenameButtonTitle(state: String, name: String, code: String) {
        
        DispatchQueue.main.async {
            if state == "arrive" {
                self.arriveTextButton.setTitle(name, for: .normal)
                self.arriveCityCode = code
            } else if state == "departure" {
                self.departureTextButton.setTitle(name, for: .normal)
                self.departureCityCode = code
            }
            if self.departureTextButton.currentTitle == nil || self.arriveTextButton.currentTitle == nil {
                print("둘 중 하나라도 비어있다")
                return
            }
            
            self.checkUpdate()
        }
        
    }

}

//MARK: 애니메이션 추가
extension ViewController {
    func showAnimation() async {
//        stopAnimation()
        
        print("체크포인트3")
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let viewWidth: CGFloat = 100
        let viewHeight: CGFloat = 100

        let xPosition = (screenWidth - viewWidth) / 2
        let yPosition = (screenHeight - viewHeight) / 2
        
        self.animationView.frame = CGRect(x: xPosition, y: yPosition, width: 100, height: 100)
        
        self.animationView.contentMode = .scaleAspectFill
        self.view.addSubview(self.animationView)
        
        print("희안하다 실행인데??")
        self.animationView.play()
        self.animationView.loopMode = .loop
        
    }
    
    func stopAnimation() async {
        animationView.stop()
    }
    
    func showEmpty() {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        let viewWidth: CGFloat = 200
        let viewHeight: CGFloat = 200
        
        let xPosition = (screenWidth - viewWidth) / 2
        let yPosition = (screenHeight - viewHeight) / 2
        
        subView.frame = CGRect(x: xPosition, y: yPosition, width: viewWidth, height: viewHeight)
        
        let label = UILabel()
        label.text = "검색결과가 없습니다"
        label.textAlignment = .center
        label.frame = subView.bounds
        
        subView.addSubview(label)
        
        self.view.addSubview(subView)
    }
}
