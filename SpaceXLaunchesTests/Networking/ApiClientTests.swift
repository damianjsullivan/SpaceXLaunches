//
//  ApiClientTests.swift
//  SpaceXLaunchesTests
//
//  Created by Damian Sullivan on 02/07/2024.
//

import XCTest
@testable import SpaceXLaunches

final class ApiClientTests: XCTestCase {

    // TODO: These test actual network calls. Need to implemnt MockApiClient and test logic without networking
    func test_fetchLaunches() async throws {
        let sut = ApiClient()
        let launches = try await sut.fetchLaunches()
        XCTAssertNotNil(launches)
    }

    func test_fetchRocket() async throws {
        let sut = ApiClient()
        let rocket = try await sut.fetchRocket(id: "5e9d0d95eda69955f709d1eb")
        XCTAssertNotNil(rocket)
    }
    
    func test_fetchCrewMember() async throws {
        let sut = ApiClient()
        let crewMember = try await sut.fetchCrewMember(id: "6243bc5baf52800c6e919276")
        XCTAssertNotNil(crewMember)
    }
}
