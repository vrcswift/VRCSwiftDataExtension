# VRCSwiftDataExtension

This library supplements some convenient Swift Data Extension for network developmented.

## features

- Buffer writer and reader for Int8, UInt8, Int16, UInt16, Int32, UInt32, Int64, UInt64.

##  APIs

### data.writeInt8(value: Int8, offset: Data.Index)

Write value to data at the specified offset.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*Int8*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 1. Default is zero.

### data.writeUInt8(value: UInt8, offset: Data.Index)

Write value to data at the specified offset.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*UInt8*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 1. Default is zero.

### data.writeInt16BE(value: Int16, offset: Data.Index)

Write value to data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*Int16*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 2. Default is zero.

### data.writeInt16LE(value: Int16, offset: Data.Index)

Write value to data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*Int16*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 2. Default is zero.

### data.writeUInt16BE(value: UInt16, offset: Data.Index)

Write value to data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*UInt16*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 2. Default is zero.

### data.writeUInt16LE(value: UInt16, offset: Data.Index)

Write value to data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*UInt16*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 2. Default is zero.

### data.writeInt32BE(value: Int32, offset: Data.Index)

Write value to data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*Int32*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 4. Default is zero.

### data.writeInt32LE(value: Int32, offset: Data.Index)

Write value to data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*Int32*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 4. Default is zero.

### data.writeUInt32BE(value: UInt32, offset: Data.Index)

Write value to data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*UInt32*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 4. Default is zero.

### data.writeUInt32LE(value: UInt32, offset: Data.Index)

Write value to data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*UInt32*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 4. Default is zero.

### data.writeInt64BE(value: Int64, offset: Data.Index)

Write value to data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*Int64*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 8. Default is zero.

### data.writeInt64LE(value: Int64, offset: Data.Index)

Write value to data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*Int64*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 8. Default is zero.

### data.writeUInt64BE(value: UInt64, offset: Data.Index)

Write value to data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*UInt64*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 8. Default is zero.

### data.writeUInt64LE(value: UInt64, offset: Data.Index)

Write value to data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- value (*UInt64*): Number to be written to data.
- offset (*Data.Index*): Number of bytes to skip before starting to write. Must satify 0 <= offset <= data.count - 8. Default is zero.

### data.readInt8(offset: Data.Index)

Read a 8-bit integer from data at the specified offset.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 1. Default is zero.

<u>Returns</u>:

- The 8-bit integer.

### data.readUInt8(offset: Data.Index)

Read an unsigned 8-bit integer from data at the specified offset.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 1. Default is zero.

<u>Returns</u>:

- The unsigned 8-bit integer.

### data.readInt16BE(offset: Data.Index)

Read a 16-bit integer from data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 2. Default is zero.

<u>Returns</u>:

- The 16-bit integer.

### data.readInt16LE(offset: Data.Index)

Read a 16-bit integer from data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 2. Default is zero.

<u>Returns</u>:

- The 16-bit integer.

### data.readUInt16BE(offset: Data.Index)

Read an unsigned 16-bit integer from data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 2. Default is zero.

<u>Returns</u>:

- The unsigned 16-bit integer.

### data.readUInt16LE(offset: Data.Index)

Read an unsigned 16-bit integer from data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 2. Default is zero.

<u>Returns</u>:

- The unsigned 16-bit integer.

### data.readInt32BE(offset: Data.Index)

Read a 32-bit integer from data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 4. Default is zero.

<u>Returns</u>:

- The 32-bit integer.

### data.readInt32LE(offset: Data.Index)

Read a 32-bit integer from data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 4. Default is zero.

<u>Returns</u>:

- The 32-bit integer.

### data.readUInt32BE(offset: Data.Index)

Read an unsigned 32-bit integer from data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 4. Default is zero.

<u>Returns</u>:

- The unsigned 32-bit integer.

### data.readUInt32LE(offset: Data.Index)

Read an unsigned 32-bit integer from data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 4. Default is zero.

<u>Returns</u>:

- The unsigned 32-bit integer.

### data.readInt64BE(offset: Data.Index)

Read a 64-bit integer from data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 8. Default is zero.

<u>Returns</u>:

- The 64-bit integer.

### data.readInt64LE(offset: Data.Index)

Read a 64-bit integer from data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 8. Default is zero.

<u>Returns</u>:

- The 64-bit integer.

### data.readUInt64BE(offset: Data.Index)

Read an unsigned 64-bit integer from data at the specified offset as big endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 8. Default is zero.

<u>Returns</u>:

- The unsigned 64-bit integer.

### data.readUInt64LE(offset: Data.Index)

Read an unsigned 64-bit integer from data at the specified offset as little endian.

<u>Throws</u>:

- *VRCDataExtensionError*: Raised if attempt to access memory out of data.

<u>Parameters</u>:

- offset (*Data.Index*): Number of bytes to skip before starting to read. Must satify 0 <= offset <= data.count - 8. Default is zero.

<u>Returns</u>:

- The unsigned 64-bit integer.