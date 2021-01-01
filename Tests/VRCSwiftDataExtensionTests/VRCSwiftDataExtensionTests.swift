//
//  Copyright 2020 - 2021 The VRC Authors. All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE.md file.
//

import XCTest
@testable import VRCSwiftDataExtension

final class VRCSwiftDataExtensionTests: XCTestCase {
    private func buildZeroData() -> Data {
        var d = Data.init(count: 8)
        d[0] = 0x00
        d[1] = 0x00
        d[2] = 0x00
        d[3] = 0x00
        d[4] = 0x00
        d[5] = 0x00
        d[6] = 0x00
        d[7] = 0x00
        
        return d
    }
    
    private func buildFillingData() -> Data {
        var d = Data.init(count: 8)
        d[0] = 0xFF
        d[1] = 0xFF
        d[2] = 0xFF
        d[3] = 0xFF
        d[4] = 0xFF
        d[5] = 0xFF
        d[6] = 0xFF
        d[7] = 0xFF
        
        return d
    }
    
    func buildNormalData() -> Data {
        var d = Data.init(count: 8)
        
        d[0] = 0xAB
        d[1] = 0xCD
        d[2] = 0xEF
        d[3] = 0x01
        d[4] = 0x23
        d[5] = 0x45
        d[6] = 0x67
        d[7] = 0x89
        
        return d
    }
    
    func testReadBasic() {
        do {
            let d = buildNormalData()
            
            XCTAssertEqual(try d.readInt8(), -85)
            XCTAssertEqual(try d.readInt8(offset: 1), -51)
            XCTAssertEqual(try d.readInt8(offset: 2), -17)
            XCTAssertEqual(try d.readInt8(offset: 3), 1)
            XCTAssertEqual(try d.readInt8(offset: 4), 35)
            XCTAssertEqual(try d.readInt8(offset: 5), 69)
            XCTAssertEqual(try d.readInt8(offset: 6), 103)
            XCTAssertEqual(try d.readInt8(offset: 7), -119)
            
            XCTAssertEqual(try d.readUInt8(), 171)
            XCTAssertEqual(try d.readUInt8(offset: 1), 205)
            XCTAssertEqual(try d.readUInt8(offset: 2), 239)
            XCTAssertEqual(try d.readUInt8(offset: 3), 1)
            XCTAssertEqual(try d.readUInt8(offset: 4), 35)
            XCTAssertEqual(try d.readUInt8(offset: 5), 69)
            XCTAssertEqual(try d.readUInt8(offset: 6), 103)
            XCTAssertEqual(try d.readUInt8(offset: 7), 137)
            
            XCTAssertEqual(try d.readInt16BE(), -21555)
            XCTAssertEqual(try d.readInt16BE(offset: 1), -12817)
            XCTAssertEqual(try d.readInt16BE(offset: 2), -4351)
            XCTAssertEqual(try d.readInt16BE(offset: 3), 291)
            XCTAssertEqual(try d.readInt16BE(offset: 4), 9029)
            XCTAssertEqual(try d.readInt16BE(offset: 5), 17767)
            XCTAssertEqual(try d.readInt16BE(offset: 6), 26505)
            
            XCTAssertEqual(try d.readInt16LE(), -12885)
            XCTAssertEqual(try d.readInt16LE(offset: 1), -4147)
            XCTAssertEqual(try d.readInt16LE(offset: 2), 495)
            XCTAssertEqual(try d.readInt16LE(offset: 3), 8961)
            XCTAssertEqual(try d.readInt16LE(offset: 4), 17699)
            XCTAssertEqual(try d.readInt16LE(offset: 5), 26437)
            XCTAssertEqual(try d.readInt16LE(offset: 6), -30361)
            
            XCTAssertEqual(try d.readUInt16BE(), 43981)
            XCTAssertEqual(try d.readUInt16BE(offset: 1), 52719)
            XCTAssertEqual(try d.readUInt16BE(offset: 2), 61185)
            XCTAssertEqual(try d.readUInt16BE(offset: 3), 291)
            XCTAssertEqual(try d.readUInt16BE(offset: 4), 9029)
            XCTAssertEqual(try d.readUInt16BE(offset: 5), 17767)
            XCTAssertEqual(try d.readUInt16BE(offset: 6), 26505)
            
            XCTAssertEqual(try d.readUInt16LE(), 52651)
            XCTAssertEqual(try d.readUInt16LE(offset: 1), 61389)
            XCTAssertEqual(try d.readUInt16LE(offset: 2), 495)
            XCTAssertEqual(try d.readUInt16LE(offset: 3), 8961)
            XCTAssertEqual(try d.readUInt16LE(offset: 4), 17699)
            XCTAssertEqual(try d.readUInt16LE(offset: 5), 26437)
            XCTAssertEqual(try d.readUInt16LE(offset: 6), 35175)
            
            XCTAssertEqual(try d.readInt32BE(), -1412567295)
            XCTAssertEqual(try d.readInt32BE(offset: 1), -839974621)
            XCTAssertEqual(try d.readInt32BE(offset: 2), -285138107)
            XCTAssertEqual(try d.readInt32BE(offset: 3), 19088743)
            XCTAssertEqual(try d.readInt32BE(offset: 4), 591751049)
            
            XCTAssertEqual(try d.readInt32LE(), 32492971)
            XCTAssertEqual(try d.readInt32LE(offset: 1), 587329485)
            XCTAssertEqual(try d.readInt32LE(offset: 2), 1159922159)
            XCTAssertEqual(try d.readInt32LE(offset: 3), 1732584193)
            XCTAssertEqual(try d.readInt32LE(offset: 4), -1989720797)
            
            XCTAssertEqual(try d.readUInt32BE(), 2882400001)
            XCTAssertEqual(try d.readUInt32BE(offset: 1), 3454992675)
            XCTAssertEqual(try d.readUInt32BE(offset: 2), 4009829189)
            XCTAssertEqual(try d.readUInt32BE(offset: 3), 19088743)
            XCTAssertEqual(try d.readUInt32BE(offset: 4), 591751049)
            
            XCTAssertEqual(try d.readUInt32LE(), 32492971)
            XCTAssertEqual(try d.readUInt32LE(offset: 1), 587329485)
            XCTAssertEqual(try d.readUInt32LE(offset: 2), 1159922159)
            XCTAssertEqual(try d.readUInt32LE(offset: 3), 1732584193)
            XCTAssertEqual(try d.readUInt32LE(offset: 4), 2305246499)
            
            XCTAssertEqual(try d.readInt64BE(), -6066930334832433271)
            XCTAssertEqual(try d.readInt64LE(), -8545785751253561941)
            XCTAssertEqual(try d.readUInt64BE(), 12379813738877118345)
            XCTAssertEqual(try d.readUInt64LE(), 9900958322455989675)
         }
    }
    
    func testWriteBasic() {
        do {
            var d = buildZeroData()
            try d.writeInt8(value: -85)
            try d.writeInt8(value: -51, offset: 1)
            try d.writeInt8(value: -17, offset: 2)
            try d.writeInt8(value: 1, offset: 3)
            try d.writeInt8(value: 35, offset: 4)
            try d.writeInt8(value: 69, offset: 5)
            try d.writeInt8(value: 103, offset: 6)
            try d.writeInt8(value: -119, offset: 7)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeUInt8(value: 171)
            try d.writeUInt8(value: 205, offset: 1)
            try d.writeUInt8(value: 239, offset: 2)
            try d.writeUInt8(value: 1, offset: 3)
            try d.writeUInt8(value: 35, offset: 4)
            try d.writeUInt8(value: 69, offset: 5)
            try d.writeUInt8(value: 103, offset: 6)
            try d.writeUInt8(value: 137, offset: 7)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeInt16BE(value: -21555)
            try d.writeInt16BE(value: -4351, offset: 2)
            try d.writeInt16BE(value: 9029, offset: 4)
            try d.writeInt16BE(value: 26505, offset: 6)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeInt16LE(value: -12885)
            try d.writeInt16LE(value: 495, offset: 2)
            try d.writeInt16LE(value: 17699, offset: 4)
            try d.writeInt16LE(value: -30361, offset: 6)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeUInt16BE(value: 43981)
            try d.writeUInt16BE(value: 61185, offset: 2)
            try d.writeUInt16BE(value: 9029, offset: 4)
            try d.writeUInt16BE(value: 26505, offset: 6)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeUInt16LE(value: 52651)
            try d.writeUInt16LE(value: 495, offset: 2)
            try d.writeUInt16LE(value: 17699, offset: 4)
            try d.writeUInt16LE(value: 35175, offset: 6)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeInt32BE(value: -1412567295)
            try d.writeInt32BE(value: 591751049, offset: 4)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeInt32LE(value: 32492971)
            try d.writeInt32LE(value: -1989720797, offset: 4)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeUInt32BE(value: 2882400001)
            try d.writeUInt32BE(value: 591751049, offset: 4)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeUInt32LE(value: 32492971)
            try d.writeUInt32LE(value: 2305246499, offset: 4)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeInt64BE(value: -6066930334832433271)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeInt64LE(value: -8545785751253561941)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeUInt64BE(value: 12379813738877118345)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
            
            d = buildZeroData()
            try d.writeUInt64LE(value: 9900958322455989675)
            
            XCTAssertEqual(d[0], 0xAB)
            XCTAssertEqual(d[1], 0xCD)
            XCTAssertEqual(d[2], 0xEF)
            XCTAssertEqual(d[3], 0x01)
            XCTAssertEqual(d[4], 0x23)
            XCTAssertEqual(d[5], 0x45)
            XCTAssertEqual(d[6], 0x67)
            XCTAssertEqual(d[7], 0x89)
        } catch {
            XCTFail()
        }
    }

    func testReadBoundary() {
        do {
            let d = buildFillingData()
            
            XCTAssertEqual(try d.readInt8(), -1)
            XCTAssertEqual(try d.readUInt8(), 255)
            XCTAssertEqual(try d.readInt16BE(), -1)
            XCTAssertEqual(try d.readUInt16BE(), 65535)
            XCTAssertEqual(try d.readInt16LE(), -1)
            XCTAssertEqual(try d.readUInt16LE(), 65535)
            XCTAssertEqual(try d.readInt32BE(), -1)
            XCTAssertEqual(try d.readUInt32BE(), 4294967295)
            XCTAssertEqual(try d.readInt32LE(), -1)
            XCTAssertEqual(try d.readUInt32LE(), 4294967295)
            XCTAssertEqual(try d.readInt64BE(), -1)
            XCTAssertEqual(try d.readUInt64BE(), UInt64.max)
            XCTAssertEqual(try d.readInt64LE(), -1)
            XCTAssertEqual(try d.readUInt64LE(), UInt64.max)
        }
        
        do {
            let d = buildZeroData()
            
            XCTAssertEqual(try d.readInt8(), 0)
            XCTAssertEqual(try d.readUInt8(), 0)
            XCTAssertEqual(try d.readInt16BE(), 0)
            XCTAssertEqual(try d.readUInt16BE(), 0)
            XCTAssertEqual(try d.readInt16LE(), 0)
            XCTAssertEqual(try d.readUInt16LE(), 0)
            XCTAssertEqual(try d.readInt32BE(), 0)
            XCTAssertEqual(try d.readUInt32BE(), 0)
            XCTAssertEqual(try d.readInt32LE(), 0)
            XCTAssertEqual(try d.readUInt32LE(), 0)
            XCTAssertEqual(try d.readInt64BE(), 0)
            XCTAssertEqual(try d.readUInt64BE(), 0)
            XCTAssertEqual(try d.readInt64LE(), 0)
            XCTAssertEqual(try d.readUInt64LE(), 0)
        }
    }

    static var allTests = [
        ("testReadBasic", testReadBasic),
        ("testReadBoundary", testReadBoundary),
        ("testWriteBasic", testWriteBasic)
    ]
}
