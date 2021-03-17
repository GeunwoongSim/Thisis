import Foundation
import UIKit

//버스정보 파싱
struct BusInfo: Decodable {
    var bus_result: [bus_result]
}
struct bus_result: Decodable {
    let nodenum:Int //정거장넘버
    let bus_chk: Int // 버스가 있으면 1 없으면 0
    let station: Int // 버스가 몇정거장 전에 있는지
    var min: Int // 버스가 몇분뒤에 도착하는지
    let bstname: String //정거장 이름
    let time: String
}
struct busData {
    let busCategoryString: [[String]] = [["순환버스", "학생차량", "통학차량"],["학생차량", "통학차량"],["순환버스", "학생차량", "통학차량"]]
    let loopBusLocation: [[String]] = [["하단역", "하단오거리", "향학서점", "부산여고", "동아대학교정문", "공과대학", "기숙사", "산학협력관", "공대2호관", "대학본부", "동아대학교정문", "신동아헤어스케치앞", "야구연습장", "동아스포츠", "하단역"],[],["동아대구덕캠", "동아대병원", "구덕야구장", "동대신역", "서대시장동대신역", "서대신역", "부경고등학교", "동아탕", "동아대병원", "동아대구덕캠"]]
    let typeOneTextTimeString : [String] = ["07 : 50","09 : 20","10 : 20","11 : 20","12 : 20","13 : 20","14 : 20","15 : 20","16 : 20","17 : 20","","18 : 30","19 : 30","21 : 00"] // 승학 → 부민 장소
    let typeOneTextPlaceString : [String] = ["승학 → 구덕 → 부산은행대신동지점 → 부민","승학 → 구덕 → 부산은행대신동지점 → 부민","승학 → 구덕 → 부민","승학 → 구덕 → 부민","승학 → 구덕 → 부민","승학 → 구덕 → 부민","승학 → 구덕 → 부민","승학 → 구덕 → 부민","승학 → 구덕 → 부민","승학 → 구덕 → 부민","승학 → 부민","승학 → 구덕 → 부민","승학 → 구덕 → 부민","승학 → 구덕 → 부민"] // 승학 → 부민 장소
    let typeTwoTextTimeString: [String] = ["08 : 25","10 : 00","11 : 00","12 : 00","13 : 00","14 : 00","15 : 00","16 : 00","17 : 00","18 : 00","18 : 10","19 : 00","20 : 10","22 : 10"] //부민 → 승학 시간
    let typeTwoTextPlaceString: [String] = ["부민 → 승학","부민 → 구덕 → 승학","부민 → 구덕 → 승학","부민 → 구덕 → 승학","부민 → 구덕 → 승학","부민 → 구덕 → 승학","부민 → 구덕 → 승학","부민 → 구덕 → 승학","부민 → 승학","부민 → 승학","부민 → 승학","부민 → 구덕 → 승학","부민 → 구덕 → 승학","부민 → 구덕 → 승학"] //부민 → 승학 장소
    let attendingBusName: [String] = ["사상 → 승학캠퍼스", "사상 → 구덕캠퍼스 → 부민캠퍼스", "창원지역 학생버스"]
    let attendingBusText: [String] = ["사상터미널 건너편 르네상스 호텔 앞 → 승학캠퍼스 공대 1호관\n\n[학교버스 및 은성관광 버스 운행]\n\n08 : 15 | 08 : 20 | 08 : 25 | 09 : 25", "사상터미널 건너편 르네상스 호텔 앞 → 구덕운동장 옆 육교 → 부민캠퍼스 정문\n\n[학교25인승 미니버스 운행]\n\n08 : 25", "< 등 교 >\n마산\n마산역(07:00)→한국전력 앞(07:05)→창원종합버스터미널(07:15)→창원남산버스정류소(환승시간 07:30)→승학캠퍼스\n\n진해\n진해 홈플러스(07:00)→롯데마트 가기 전 농협 앞 정류소(07:03)→창원남산버스정류소(환승시간 07:30)→승학캠퍼스\n\n창원\n창원남산버스정류소(07:30)→승학캠퍼스\n\n< 하 교 >\n마산 창원\n승학캠퍼스정문(18:45,18:50)→창원남산버스정류소→창원시청→창원시외버스터미널→마산역"]
}