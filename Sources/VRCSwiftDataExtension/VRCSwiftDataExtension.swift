//
//  Copyright 2020 The VRC Authors. All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE.md file.
//

//
//  MARK: Imports.
//

import Foundation

//
//  MARK: Defines.
//
struct VRCDataExtensionError: Error {
    enum VRCDataExtensionErrorType {
        case outOfRangeError
    }

    let message: String
    let kind: VRCDataExtensionErrorType
}

//
//  MARK: Extension.
//

extension Data {

    ///
    ///  Write value to data at the specified offset.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 1. Default is zero.
    ///
    public mutating func writeInt8(value: Int8, offset: Index = 0) throws {
        //  Check offset.
        if offset < 0 || offset > count - 1 {
            throw VRCDataExtensionError(
                message: "Access memory out of data.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8(truncatingIfNeeded: value)
    }
    
    ///
    ///  Write value to data at the specified offset.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 1. Default is zero.
    ///
    public mutating func writeUInt8(value: UInt8, offset: Index = 0) throws {
        //  Check offset.
        if offset < 0 || offset > count - 1 {
            throw VRCDataExtensionError(
                message: "Access memory out of data.", kind: .outOfRangeError)
        }
        
        self[offset] = value
    }
    
    ///
    ///  Write value to data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 2. Default is zero.
    ///
    public mutating func writeInt16BE(value: Int16, offset: Index = 0) throws {
        if offset < 0 || offset > count - 2 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8((UInt16(truncatingIfNeeded: value) & 0xff00) >> 8)
        self[offset + 1] = UInt8(value & 0x00ff)
    }
    
    ///
    ///  Write value to data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///             0 <= offset <= data.count - 2. Default is zero.
    ///
    public mutating func writeInt16LE(value: Int16, offset: Index = 0) throws {
        if offset < 0 || offset > count - 2 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8(value & 0x00ff)
        self[offset + 1] = UInt8(
            (UInt16(truncatingIfNeeded: value) & 0xff00) >> 8)
    }
    
    ///
    ///  Write value to data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 2. Default is zero.
    ///
    public mutating func writeUInt16BE(value: UInt16, offset: Index = 0) throws{
        if offset < 0 || offset > count - 2 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8((value & 0xff00) >> 8)
        self[offset + 1] = UInt8(value & 0x00ff)
    }
    
    ///
    ///  Write value to data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 2. Default is zero.
    ///
    public mutating func writeUInt16LE(value: UInt16, offset: Index = 0) throws{
        if offset < 0 || offset > count - 2 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8(value & 0x00ff)
        self[offset + 1] = UInt8((value & 0xff00) >> 8)
    }
    
    ///
    ///  Write value to data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 4. Default is zero.
    ///
    public mutating func writeInt32BE(value: Int32, offset: Index = 0) throws {
        if offset < 0 || offset > count - 4 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8(
            (UInt32(truncatingIfNeeded: value) & 0xff000000) >> 24)
        self[offset + 1] = UInt8((value & 0x00ff0000) >> 16)
        self[offset + 2] = UInt8((value & 0x0000ff00) >> 8)
        self[offset + 3] = UInt8(value & 0x000000ff)
    }
    
    ///
    ///  Write value to data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 4. Default is zero.
    ///
    public mutating func writeInt32LE(value: Int32, offset: Index = 0) throws {
        if offset < 0 || offset > count - 4 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8(value & 0x000000ff)
        self[offset + 1] = UInt8((value & 0x0000ff00) >> 8)
        self[offset + 2] = UInt8((value & 0x00ff0000) >> 16)
        self[offset + 3] = UInt8(
            (UInt32(truncatingIfNeeded: value) & 0xff000000) >> 24)
    }
    
    ///
    ///  Write value to data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 4. Default is zero.
    ///
    public mutating func writeUInt32BE(value: UInt32, offset: Index = 0) throws{
        if offset < 0 || offset > count - 4 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }

        self[offset] = UInt8((value & 0xff000000) >> 24)
        self[offset + 1] = UInt8((value & 0x00ff0000) >> 16)
        self[offset + 2] = UInt8((value & 0x0000ff00) >> 8)
        self[offset + 3] = UInt8(value & 0x000000ff)
    }
    
    ///
    ///  Write value to data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 4. Default is zero.
    ///
    public mutating func writeUInt32LE(value: UInt32, offset: Index = 0) throws {
        if offset < 0 || offset > count - 4 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8(value & 0x000000ff)
        self[offset + 1] = UInt8((value & 0x0000ff00) >> 8)
        self[offset + 2] = UInt8((value & 0x00ff0000) >> 16)
        self[offset + 3] = UInt8((value & 0xff000000) >> 24)
    }
    
    ///
    ///  Write value to data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 8. Default is zero.
    ///
    public mutating func writeInt64BE(value: Int64, offset: Index = 0) throws {
        if offset < 0 || offset > count - 8 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8(
            (UInt64(truncatingIfNeeded: value) & 0xff00000000000000) >> 56)
        self[offset + 1] = UInt8((value & 0x00ff000000000000) >> 48)
        self[offset + 2] = UInt8((value & 0x0000ff0000000000) >> 40)
        self[offset + 3] = UInt8((value & 0x000000ff00000000) >> 32)
        self[offset + 4] = UInt8((value & 0x00000000ff000000) >> 24)
        self[offset + 5] = UInt8((value & 0x0000000000ff0000) >> 16)
        self[offset + 6] = UInt8((value & 0x000000000000ff00) >> 8)
        self[offset + 7] = UInt8(value & 0x00000000000000ff)
    }
    
    ///
    ///  Write value to data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 8. Default is zero.
    ///
    public mutating func writeInt64LE(value: Int64, offset: Index = 0) throws {
        if offset < 0 || offset > count - 8 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8(value & 0x00000000000000ff)
        self[offset + 1] = UInt8((value & 0x000000000000ff00) >> 8)
        self[offset + 2] = UInt8((value & 0x0000000000ff0000) >> 16)
        self[offset + 3] = UInt8((value & 0x00000000ff000000) >> 24)
        self[offset + 4] = UInt8((value & 0x000000ff00000000) >> 32)
        self[offset + 5] = UInt8((value & 0x0000ff0000000000) >> 40)
        self[offset + 6] = UInt8((value & 0x00ff000000000000) >> 48)
        self[offset + 7] = UInt8(
            (UInt64(truncatingIfNeeded: value) & 0xff00000000000000) >> 56)
    }
    
    ///
    ///  Write value to data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 8. Default is zero.
    ///
    public mutating func writeUInt64BE(value: UInt64, offset: Index = 0) throws{
        if offset < 0 || offset > count - 8 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }

        self[offset] = UInt8((value & 0xff00000000000000) >> 56)
        self[offset + 1] = UInt8((value & 0x00ff000000000000) >> 48)
        self[offset + 2] = UInt8((value & 0x0000ff0000000000) >> 40)
        self[offset + 3] = UInt8((value & 0x000000ff00000000) >> 32)
        self[offset + 4] = UInt8((value & 0x00000000ff000000) >> 24)
        self[offset + 5] = UInt8((value & 0x0000000000ff0000) >> 16)
        self[offset + 6] = UInt8((value & 0x000000000000ff00) >> 8)
        self[offset + 7] = UInt8(value & 0x00000000000000ff)
    }
    
    ///
    ///  Write value to data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameters:
    ///    - value: Number to be written to data.
    ///    - offset: Number of bytes to skip before starting to write. Must satify
    ///              0 <= offset <= data.count - 8. Default is zero.
    ///
    public mutating func writeUInt64LE(value: UInt64, offset: Index = 0) throws {
        if offset < 0 || offset > count - 8 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        self[offset] = UInt8(value & 0x00000000000000ff)
        self[offset + 1] = UInt8((value & 0x000000000000ff00) >> 8)
        self[offset + 2] = UInt8((value & 0x0000000000ff0000) >> 16)
        self[offset + 3] = UInt8((value & 0x00000000ff000000) >> 24)
        self[offset + 4] = UInt8((value & 0x000000ff00000000) >> 32)
        self[offset + 5] = UInt8((value & 0x0000ff0000000000) >> 40)
        self[offset + 6] = UInt8((value & 0x00ff000000000000) >> 48)
        self[offset + 7] = UInt8((value & 0xff00000000000000) >> 56)
    }

    ///
    ///  Read a 8-bit integer from data at the specified offset.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 1. Default is zero.
    ///
    ///  - Returns: The 8-bit integer.
    ///
    public func readInt8(offset: Index = 0) throws -> Int8 {
        //  Check offset.
        if offset < 0 || offset > count - 1 {
            throw VRCDataExtensionError(
                message: "Access memory out of data.", kind: .outOfRangeError)
        }
        
        return Int8(truncatingIfNeeded: self[offset])
    }
    
    ///
    ///  Read an unsigned 8-bit integer from data at the specified offset.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 1. Default is zero.
    ///
    ///  - Returns: The unsigned 8-bit integer.
    ///
    public func readUInt8(offset: Index = 0) throws -> UInt8 {
        //  Check offset.
        if offset < 0 || offset > count - 1 {
            throw VRCDataExtensionError(
                message: "Access memory out of data.", kind: .outOfRangeError)
        }
        
        return self[offset]
    }
    
    ///
    ///  Read a 16-bit integer from data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 2. Default is zero.
    ///
    ///  - Returns: The 16-bit integer.
    ///
    public func readInt16BE(offset: Index = 0) throws -> Int16 {
        if offset < 0 || offset > count - 2 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        return (
            (Int16(self[offset]) << 8) |
            Int16(self[offset + 1])
        )
    }
    
    ///
    ///  Read a 16-bit integer from data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 2. Default is zero.
    ///
    ///  - Returns: The 16-bit integer.
    ///
    public func readInt16LE(offset: Index = 0) throws -> Int16 {
        if offset < 0 || offset > count - 2 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        return (
            Int16(self[offset]) |
            (Int16(self[offset + 1]) << 8)
        )
    }
    
    ///
    ///  Read an unsigned 16-bit integer from data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 2. Default is zero.
    ///
    ///  - Returns: The unsigned 16-bit integer.
    ///
    public func readUInt16BE(offset: Index = 0) throws -> UInt16 {
        if offset < 0 || offset > count - 2 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        return (
            (UInt16(self[offset]) << 8) |
            UInt16(self[offset + 1])
        )
    }
    
    ///
    ///  Read a unsigned 16-bit integer from data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 2. Default is zero.
    ///
    ///  - Returns: The unsigned 16-bit integer.
    ///
    public func readUInt16LE(offset: Index = 0) throws -> UInt16 {
        if offset < 0 || offset > count - 2 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        return (
            UInt16(self[offset]) |
            (UInt16(self[offset + 1]) << 8)
        )
    }
    
    ///
    ///  Read a 32-bit integer from data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 3. Default is zero.
    ///
    ///  - Returns: The 32-bit integer.
    ///
    public func readInt32BE(offset: Index = 0) throws -> Int32 {
        if offset < 0 || offset > count - 3 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        return (
            (Int32(self[offset]) << 24) |
            (Int32(self[offset + 1]) << 16) |
            (Int32(self[offset + 2]) << 8) |
            Int32(self[offset + 3])
        )
    }
    
    ///
    ///  Read a 32-bit integer from data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 4. Default is zero.
    ///
    ///  - Returns: The 32-bit integer.
    ///
    public func readInt32LE(offset: Index = 0) throws -> Int32 {
        if offset < 0 || offset > count - 4 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        return (
            Int32(self[offset]) |
            (Int32(self[offset + 1]) << 8) |
            (Int32(self[offset + 2]) << 16) |
            (Int32(self[offset + 3]) << 24)
        )
    }
    
    ///
    ///  Read an unsigned 32-bit integer from data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 4. Default is zero.
    ///
    ///  - Returns: The unsigned 32-bit integer.
    ///
    public func readUInt32BE(offset: Index = 0) throws -> UInt32 {
        if offset < 0 || offset > count - 4 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        return (
            (UInt32(self[offset]) << 24) |
            (UInt32(self[offset + 1]) << 16) |
            (UInt32(self[offset + 2]) << 8) |
            UInt32(self[offset + 3])
        )
    }
    
    ///
    ///  Read an unsigned 32-bit integer from data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 4. Default is zero.
    ///
    ///  - Returns: The unsigned 32-bit integer.
    ///
    public func readUInt32LE(offset: Index = 0) throws -> UInt32 {
        if offset < 0 || offset > count - 4 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        return (
            UInt32(self[offset]) |
            (UInt32(self[offset + 1]) << 8) |
            (UInt32(self[offset + 2]) << 16) |
            (UInt32(self[offset + 3]) << 24)
        )
    }
    
    ///
    ///  Read a 64-bit integer from data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 8. Default is zero.
    ///
    ///  - Returns: The 64-bit integer.
    ///
    public func readInt64BE(offset: Index = 0) throws -> Int64 {
        if offset < 0 || offset > count - 8 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        var rst = (Int64(self[offset]) << 56)
        rst |= (Int64(self[offset + 1]) << 48)
        rst |= (Int64(self[offset + 2]) << 40)
        rst |= (Int64(self[offset + 3]) << 32)
        rst |= (Int64(self[offset + 4]) << 24)
        rst |= (Int64(self[offset + 5]) << 16)
        rst |= (Int64(self[offset + 6]) << 8)
        rst |= Int64(self[offset + 7])
        
        return rst
    }
    
    ///
    ///  Read a 64-bit integer from data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 8. Default is zero.
    ///
    ///  - Returns: The 64-bit integer.
    ///
    public func readInt64LE(offset: Index = 0) throws -> Int64 {
        if offset < 0 || offset > count - 8 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        var rst = Int64(self[offset])
        rst |= (Int64(self[offset + 1]) << 8)
        rst |= (Int64(self[offset + 2]) << 16)
        rst |= (Int64(self[offset + 3]) << 24)
        rst |= (Int64(self[offset + 4]) << 32)
        rst |= (Int64(self[offset + 5]) << 40)
        rst |= (Int64(self[offset + 6]) << 48)
        rst |= (Int64(self[offset + 7]) << 56)
        
        return rst
    }
    
    ///
    ///  Read an unsigned 64-bit integer from data at the specified offset as big endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 4. Default is zero.
    ///
    ///  - Returns: The unsigned 64-bit integer.
    ///
    public func readUInt64BE(offset: Index = 0) throws -> UInt64 {
        if offset < 0 || offset > count - 4 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        var rst = (UInt64(self[offset]) << 56)
        rst |= (UInt64(self[offset + 1]) << 48)
        rst |= (UInt64(self[offset + 2]) << 40)
        rst |= (UInt64(self[offset + 3]) << 32)
        rst |= (UInt64(self[offset + 4]) << 24)
        rst |= (UInt64(self[offset + 5]) << 16)
        rst |= (UInt64(self[offset + 6]) << 8)
        rst |= UInt64(self[offset + 7])
        
        return rst
    }
    
    ///
    ///  Read an unsigned 64-bit integer from data at the specified offset as little endian.
    ///
    ///  - Throws: Raised if attempt to access memory out of data.
    ///
    ///  - Parameter offset: Number of bytes to skip before starting to read. Must satify
    ///                      0 <= offset <= data.count - 8. Default is zero.
    ///
    ///  - Returns: The unsigned 64-bit integer.
    ///
    public func readUInt64LE(offset: Index = 0) throws -> UInt64 {
        if offset < 0 || offset > count - 8 {
            throw VRCDataExtensionError(
                message: "Access memory out of buffer.", kind: .outOfRangeError)
        }
        
        var rst = UInt64(self[offset])
        rst |= (UInt64(self[offset + 1]) << 8)
        rst |= (UInt64(self[offset + 2]) << 16)
        rst |= (UInt64(self[offset + 3]) << 24)
        rst |= (UInt64(self[offset + 4]) << 32)
        rst |= (UInt64(self[offset + 5]) << 40)
        rst |= (UInt64(self[offset + 6]) << 48)
        rst |= (UInt64(self[offset + 7]) << 56)
        
        return rst
    }
}

