//
//  XMLCoderiOS13_2Tests.swift
//  XMLCoderiOS13_2Tests
//
//  Created by Michael Rommel on 04.11.19.
//  Copyright © 2019 Michael Rommel. All rights reserved.
//

import XCTest
@testable import XMLCoderiOS13_2
import XMLCoder

let xmlStr = """
<note>
    <to>Bob</to>
    <from>Jane</from>
    <heading>Reminder</heading>
    <body>Don't forget to use XMLCoder!</body>
</note>
"""

struct Note: Codable {
    let to: String
    let from: String
    let heading: String
    let body: String
}

class XMLCoderiOS13_2Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        guard let data = xmlStr.data(using: .utf8) else { return }

        let note = try? XMLDecoder().decode(Note.self, from: data)

        let returnData = try? XMLEncoder().encode(note, withRootKey: "note")
    }
}
