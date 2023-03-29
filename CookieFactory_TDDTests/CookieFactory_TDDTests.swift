//
//  CookieFactory_TDDTests.swift
//  CookieFactory_TDDTests
//
//  Created by Gbenga Abayomi on 29/03/2023.
//

import XCTest
@testable import CookieFactory_TDD

final class CookieFactory_TDDTests: XCTestCase {
    
    override func setUp() {
    super.setUp()
    }
    override func tearDown() {
    super.tearDown()
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
    
    func testInit_GingerBreadCookieType_DoesNotReturnNil(){
        let cookie = Cookie(.gingerbread)
        XCTAssertNotNil(cookie)
    }
    func testInit_ShortBreadCookieType_DoesNotReturnNil(){
        let cookie = Cookie(.shortbread)
        XCTAssertNotNil(cookie)
    }
    func testInit_ChocolateChipType_DoesNotReturnNil(){
        let cookie = Cookie(.chocolateChip)
        XCTAssertNotNil(cookie)
    }
    func testInit_GingerBreadCookieType_SetsCookieTypeIvarCorrectly(){
        let cookie = Cookie(.gingerbread)
        XCTAssertEqual(cookie.type, .gingerbread)
    }
    func testInit_ShortBreadCookieType_SetsCookieTypeIvarCorrectly(){
        let cookie = Cookie(.shortbread)
        XCTAssertEqual(cookie.type, .shortbread)
    }
    func testInit_ChocolateChipCookieType_SetsCookieTypeIvarCorrectly(){
        let cookie = Cookie(.chocolateChip)
        XCTAssertEqual(cookie.type, .chocolateChip)
    }
    
}

// MARK: Initializer tests
extension CookieFactory_TDDTests {
    func testInit_GingerbreadCookieArray_IsNotNil() {
        let cookieJar = CookieController()
        XCTAssertNotNil(cookieJar.gingerbreadCookies)
    }
    func testInit_ShortbreadCookieArray_IsNotNil() {
        let cookieJar = CookieController()
        XCTAssertNotNil(cookieJar.shortbreadCookies)
    }
    func testInit_ChocolateChipCookieArray_IsNotNil() {
        let cookieJar = CookieController()
        XCTAssertNotNil(cookieJar.shortbreadCookies)
    }
    func testInit_GingerbreadCookieCount_IsZero() {
        let cookieJar = CookieController()
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, 0)
    }
    func testInit_ShortbreadCookieCount_IsZero() {
        let cookieJar = CookieController()
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, 0)
    }
    func testInit_ChocolateChipCookieCount_IsZero() {
        let cookieJar = CookieController()
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, 0)
    }
}
// MARK: addGingerbreadCookie tests
extension  CookieFactory_TDDTests {
    func testAddGingerbreadCookie_Increments_NumberOfGingerbreadCookies_ByOne() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.gingerbreadCookies!.count
        cookieJar.addGingerbreadCookie()
        let expectedNumberOfCookies = numberOfCookies + 1
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count,
                       expectedNumberOfCookies)
    }
    func testAddGingerbreadCookie_DoesNotIncrement_NumberOfShortbreadCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.shortbreadCookies!.count
        cookieJar.addGingerbreadCookie()
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, numberOfCookies)
    }
    func testAddGingerbreadCookie_DoesNotIncrement_NumberOfChocolateChipCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.chocolateChipCookies!.count
        cookieJar.addGingerbreadCookie()
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, numberOfCookies)
    }
}
// MARK: addShortbreadCookie tests
extension  CookieFactory_TDDTests {
    func testAddShortbreadCookie_Increments_NumberOfShortbreadCookies_ByOne() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.shortbreadCookies!.count
        cookieJar.addShortbreadCookie()
        let expectedNumberOfCookies = numberOfCookies + 1
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, expectedNumberOfCookies)
    }
    func testAddShortbreadCookie_DoesNotIncrement_NumberOfGingerbreadCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.gingerbreadCookies!.count
        cookieJar.addShortbreadCookie()
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, numberOfCookies)
    }
    func testAddShortbreadCookie_DoesNotIncrement_NumberOfChocolateChipCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.chocolateChipCookies!.count
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, numberOfCookies)
    }
}
// MARK: addChocolateChipCookie tests
extension  CookieFactory_TDDTests {
    func testAddChocolateChipCookie_Increments_NumberOfChocolateChipCookies_ByOne() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.chocolateChipCookies!.count
        cookieJar.addChocolateChipCookie()
        let expectedNumberOfCookies = numberOfCookies + 1
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, expectedNumberOfCookies)
    }
    func testAddChocolateChipCookie_DoesNotIncrement_NumberOfShortbreadCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.shortbreadCookies!.count
        cookieJar.addChocolateChipCookie()
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, numberOfCookies)
    }
    func testAddChocolateChipCookie_DoesNotIncrement_NumberOfGingerbreadCookies() {
        let cookieJar = CookieController()
        let numberOfCookies = cookieJar.gingerbreadCookies!.count
        cookieJar.addChocolateChipCookie()
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, numberOfCookies)
    }
}
// MARK: Reset tests
extension  CookieFactory_TDDTests {
    func testReset_GingerbreadCookieArray_WithZeroElements_RemainsEmpty() {
        let cookieJar = CookieController()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, 0)
    }
    func testReset_ShortbreadCookieArray_WithZeroElements_RemainsEmpty() {
        let cookieJar = CookieController()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, 0)
    }
    func testReset_ChocolateChipCookieArray_WithZeroElements_RemainsEmpty() {
        let cookieJar = CookieController()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, 0)
    }
    func testReset_GingerbreadCookieArray_WithElements_BecomesEmpty() {
        let cookieJar = CookieController()
        cookieJar.addGingerbreadCookie()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.gingerbreadCookies!.count, 0)
    }
    func testReset_ShortbreadCookieArray_WithElements_BecomesEmpty() {
        let cookieJar = CookieController()
        cookieJar.addShortbreadCookie()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.shortbreadCookies!.count, 0)
    }
    func testReset_ChocolateChipCookieArray_WithElements_BecomesEmpty() {
        let cookieJar = CookieController()
        cookieJar.addChocolateChipCookie()
        cookieJar.reset()
        XCTAssertEqual(cookieJar.chocolateChipCookies!.count, 0)
    }
}
