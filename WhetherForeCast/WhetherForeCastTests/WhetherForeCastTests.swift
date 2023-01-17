//
//  WhetherForeCastTests.swift
//  WhetherForeCastTests
//
//  Created by Umakant Sharma on 16/01/23.
//

import XCTest
@testable import WhetherForeCast

class WhetherForeCastTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
      
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    //Test case for date time and api
    
    func testDateFormat(){
        let vm = WeatherViewModel(apiS: APIService())
       let res =  vm.ChangeDateFormat(strD: "2023-01-17 16:23", newFormatStr: "dd MMM yyyy")
        XCTAssertEqual(res, "17 Jan 2023")
    }
    func testTimeFormat(){
        let vm = WeatherViewModel(apiS: APIService())
       let res =  vm.ChangeDateFormat(strD: "2023-01-17 16:23", newFormatStr: "HH:mm")
        XCTAssertEqual(res, "16:23")
    }
    
    func testApiUrl(){
       let mocapi = APIService()
        mocapi.GetWeatherData(reqUrl:endPointUrl) { strER in
            print(strER)
        } completion: { (weData)  in
           print(weData)
        }
    }

    

}
