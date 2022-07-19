//
//  OtherRequests.swift
//  Euco API Client IOS (iOS)
//
//  Created by Alexander Leschanz on 19.07.22.
//

// Welcome.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try Welcome(json)

import Foundation

// MARK: - Welcome
class Welcome: Codable {
    let success: Bool
    let time: String
    let reqCounter: Int
    let cpuUsage: Double
    let devicesInNetwork: [DevicesInNetwork]
    let performanceTest: Int
    let sIdata: SIdata

    enum CodingKeys: String, CodingKey {
        case success, time
        case reqCounter
        case cpuUsage
        case devicesInNetwork
        case performanceTest
        case sIdata
    }

    init(success: Bool, time: String, reqCounter: Int, cpuUsage: Double, devicesInNetwork: [DevicesInNetwork], performanceTest: Int, sIdata: SIdata) {
        self.success = success
        self.time = time
        self.reqCounter = reqCounter
        self.cpuUsage = cpuUsage
        self.devicesInNetwork = devicesInNetwork
        self.performanceTest = performanceTest
        self.sIdata = sIdata
    }
}

// MARK: Welcome convenience initializers and mutators

extension Welcome {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Welcome.self, from: data)
        self.init(success: me.success, time: me.time, reqCounter: me.reqCounter, cpuUsage: me.cpuUsage, devicesInNetwork: me.devicesInNetwork, performanceTest: me.performanceTest, sIdata: me.sIdata)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        success: Bool? = nil,
        time: String? = nil,
        reqCounter: Int? = nil,
        cpuUsage: Double? = nil,
        devicesInNetwork: [DevicesInNetwork]? = nil,
        performanceTest: Int? = nil,
        sIdata: SIdata? = nil
    ) -> Welcome {
        return Welcome(
            success: success ?? self.success,
            time: time ?? self.time,
            reqCounter: reqCounter ?? self.reqCounter,
            cpuUsage: cpuUsage ?? self.cpuUsage,
            devicesInNetwork: devicesInNetwork ?? self.devicesInNetwork,
            performanceTest: performanceTest ?? self.performanceTest,
            sIdata: sIdata ?? self.sIdata
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// DevicesInNetwork.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let devicesInNetwork = try DevicesInNetwork(json)

import Foundation

// MARK: - DevicesInNetwork
class DevicesInNetwork: Codable {
    let name, ip, mac: String

    init(name: String, ip: String, mac: String) {
        self.name = name
        self.ip = ip
        self.mac = mac
    }
}

// MARK: DevicesInNetwork convenience initializers and mutators

extension DevicesInNetwork {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(DevicesInNetwork.self, from: data)
        self.init(name: me.name, ip: me.ip, mac: me.mac)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        name: String? = nil,
        ip: String? = nil,
        mac: String? = nil
    ) -> DevicesInNetwork {
        return DevicesInNetwork(
            name: name ?? self.name,
            ip: ip ?? self.ip,
            mac: mac ?? self.mac
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// SIdata.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sIdata = try SIdata(json)

import Foundation

// MARK: - SIdata
class SIdata: Codable {
    let audio: [Audio]
    let cpuCurrentSpeed: CPUCurrentSpeed
    let cpuTemperature: CPUTemperature
    let mem: Mem
    let battery: Battery
    let processes: Processes
    let services: [JSONAny]
    let fsOpenFiles: FSOpenFiles
    let fsStats: FSStats
    let usb: [USB]
    let printer: [JSONAny]
    let networkStats: [NetworkStat]
    let inetLatency: DockerInfo
    let wifiNetworks: [WifiNetwork]
    let wifiConnections: [WifiConnection]
    let bluetoothDevices: [JSONAny]
    let dockerInfo: DockerInfo
    let dockerContainers, vboxInfo: [JSONAny]

    init(audio: [Audio], cpuCurrentSpeed: CPUCurrentSpeed, cpuTemperature: CPUTemperature, mem: Mem, battery: Battery, processes: Processes, services: [JSONAny], fsOpenFiles: FSOpenFiles, fsStats: FSStats, usb: [USB], printer: [JSONAny], networkStats: [NetworkStat], inetLatency: DockerInfo, wifiNetworks: [WifiNetwork], wifiConnections: [WifiConnection], bluetoothDevices: [JSONAny], dockerInfo: DockerInfo, dockerContainers: [JSONAny], vboxInfo: [JSONAny]) {
        self.audio = audio
        self.cpuCurrentSpeed = cpuCurrentSpeed
        self.cpuTemperature = cpuTemperature
        self.mem = mem
        self.battery = battery
        self.processes = processes
        self.services = services
        self.fsOpenFiles = fsOpenFiles
        self.fsStats = fsStats
        self.usb = usb
        self.printer = printer
        self.networkStats = networkStats
        self.inetLatency = inetLatency
        self.wifiNetworks = wifiNetworks
        self.wifiConnections = wifiConnections
        self.bluetoothDevices = bluetoothDevices
        self.dockerInfo = dockerInfo
        self.dockerContainers = dockerContainers
        self.vboxInfo = vboxInfo
    }
}

// MARK: SIdata convenience initializers and mutators

extension SIdata {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(SIdata.self, from: data)
        self.init(audio: me.audio, cpuCurrentSpeed: me.cpuCurrentSpeed, cpuTemperature: me.cpuTemperature, mem: me.mem, battery: me.battery, processes: me.processes, services: me.services, fsOpenFiles: me.fsOpenFiles, fsStats: me.fsStats, usb: me.usb, printer: me.printer, networkStats: me.networkStats, inetLatency: me.inetLatency, wifiNetworks: me.wifiNetworks, wifiConnections: me.wifiConnections, bluetoothDevices: me.bluetoothDevices, dockerInfo: me.dockerInfo, dockerContainers: me.dockerContainers, vboxInfo: me.vboxInfo)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        audio: [Audio]? = nil,
        cpuCurrentSpeed: CPUCurrentSpeed? = nil,
        cpuTemperature: CPUTemperature? = nil,
        mem: Mem? = nil,
        battery: Battery? = nil,
        processes: Processes? = nil,
        services: [JSONAny]? = nil,
        fsOpenFiles: FSOpenFiles? = nil,
        fsStats: FSStats? = nil,
        usb: [USB]? = nil,
        printer: [JSONAny]? = nil,
        networkStats: [NetworkStat]? = nil,
        inetLatency: DockerInfo? = nil,
        wifiNetworks: [WifiNetwork]? = nil,
        wifiConnections: [WifiConnection]? = nil,
        bluetoothDevices: [JSONAny]? = nil,
        dockerInfo: DockerInfo? = nil,
        dockerContainers: [JSONAny]? = nil,
        vboxInfo: [JSONAny]? = nil
    ) -> SIdata {
        return SIdata(
            audio: audio ?? self.audio,
            cpuCurrentSpeed: cpuCurrentSpeed ?? self.cpuCurrentSpeed,
            cpuTemperature: cpuTemperature ?? self.cpuTemperature,
            mem: mem ?? self.mem,
            battery: battery ?? self.battery,
            processes: processes ?? self.processes,
            services: services ?? self.services,
            fsOpenFiles: fsOpenFiles ?? self.fsOpenFiles,
            fsStats: fsStats ?? self.fsStats,
            usb: usb ?? self.usb,
            printer: printer ?? self.printer,
            networkStats: networkStats ?? self.networkStats,
            inetLatency: inetLatency ?? self.inetLatency,
            wifiNetworks: wifiNetworks ?? self.wifiNetworks,
            wifiConnections: wifiConnections ?? self.wifiConnections,
            bluetoothDevices: bluetoothDevices ?? self.bluetoothDevices,
            dockerInfo: dockerInfo ?? self.dockerInfo,
            dockerContainers: dockerContainers ?? self.dockerContainers,
            vboxInfo: vboxInfo ?? self.vboxInfo
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// Audio.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let audio = try Audio(json)

import Foundation

// MARK: - Audio
class Audio: Codable {
    let id: Int
    let name, manufacturer: String
    let revision, driver: JSONNull?
    let audioDefault: Bool
    let channel, type: String
    let audioIn, out: Bool
    let status: String

    enum CodingKeys: String, CodingKey {
        case id, name, manufacturer, revision, driver
        case audioDefault
        case channel, type
        case audioIn
        case out, status
    }

    init(id: Int, name: String, manufacturer: String, revision: JSONNull?, driver: JSONNull?, audioDefault: Bool, channel: String, type: String, audioIn: Bool, out: Bool, status: String) {
        self.id = id
        self.name = name
        self.manufacturer = manufacturer
        self.revision = revision
        self.driver = driver
        self.audioDefault = audioDefault
        self.channel = channel
        self.type = type
        self.audioIn = audioIn
        self.out = out
        self.status = status
    }
}

// MARK: Audio convenience initializers and mutators

extension Audio {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Audio.self, from: data)
        self.init(id: me.id, name: me.name, manufacturer: me.manufacturer, revision: me.revision, driver: me.driver, audioDefault: me.audioDefault, channel: me.channel, type: me.type, audioIn: me.audioIn, out: me.out, status: me.status)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int? = nil,
        name: String? = nil,
        manufacturer: String? = nil,
        revision: JSONNull?? = nil,
        driver: JSONNull?? = nil,
        audioDefault: Bool? = nil,
        channel: String? = nil,
        type: String? = nil,
        audioIn: Bool? = nil,
        out: Bool? = nil,
        status: String? = nil
    ) -> Audio {
        return Audio(
            id: id ?? self.id,
            name: name ?? self.name,
            manufacturer: manufacturer ?? self.manufacturer,
            revision: revision ?? self.revision,
            driver: driver ?? self.driver,
            audioDefault: audioDefault ?? self.audioDefault,
            channel: channel ?? self.channel,
            type: type ?? self.type,
            audioIn: audioIn ?? self.audioIn,
            out: out ?? self.out,
            status: status ?? self.status
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// Battery.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let battery = try Battery(json)

import Foundation

// MARK: - Battery
class Battery: Codable {
    let isCharging: Bool
    let designedCapacity, maxCapacity, currentCapacity: Int
    let capacityUnit: String
    let percent: Int

    init(isCharging: Bool, designedCapacity: Int, maxCapacity: Int, currentCapacity: Int, capacityUnit: String, percent: Int) {
        self.isCharging = isCharging
        self.designedCapacity = designedCapacity
        self.maxCapacity = maxCapacity
        self.currentCapacity = currentCapacity
        self.capacityUnit = capacityUnit
        self.percent = percent
    }
}

// MARK: Battery convenience initializers and mutators

extension Battery {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Battery.self, from: data)
        self.init(isCharging: me.isCharging, designedCapacity: me.designedCapacity, maxCapacity: me.maxCapacity, currentCapacity: me.currentCapacity, capacityUnit: me.capacityUnit, percent: me.percent)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        isCharging: Bool? = nil,
        designedCapacity: Int? = nil,
        maxCapacity: Int? = nil,
        currentCapacity: Int? = nil,
        capacityUnit: String? = nil,
        percent: Int? = nil
    ) -> Battery {
        return Battery(
            isCharging: isCharging ?? self.isCharging,
            designedCapacity: designedCapacity ?? self.designedCapacity,
            maxCapacity: maxCapacity ?? self.maxCapacity,
            currentCapacity: currentCapacity ?? self.currentCapacity,
            capacityUnit: capacityUnit ?? self.capacityUnit,
            percent: percent ?? self.percent
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// CPUCurrentSpeed.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cPUCurrentSpeed = try CPUCurrentSpeed(json)

import Foundation

// MARK: - CPUCurrentSpeed
class CPUCurrentSpeed: Codable {
    let min, max, avg: Double
    let cores: [Double]

    init(min: Double, max: Double, avg: Double, cores: [Double]) {
        self.min = min
        self.max = max
        self.avg = avg
        self.cores = cores
    }
}

// MARK: CPUCurrentSpeed convenience initializers and mutators

extension CPUCurrentSpeed {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(CPUCurrentSpeed.self, from: data)
        self.init(min: me.min, max: me.max, avg: me.avg, cores: me.cores)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        min: Double? = nil,
        max: Double? = nil,
        avg: Double? = nil,
        cores: [Double]? = nil
    ) -> CPUCurrentSpeed {
        return CPUCurrentSpeed(
            min: min ?? self.min,
            max: max ?? self.max,
            avg: avg ?? self.avg,
            cores: cores ?? self.cores
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// CPUTemperature.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cPUTemperature = try CPUTemperature(json)

import Foundation

// MARK: - CPUTemperature
class CPUTemperature: Codable {
    let main: JSONNull?
    let cores: [JSONAny]
    let max: JSONNull?
    let socket: [JSONAny]
    let chipset: JSONNull?

    init(main: JSONNull?, cores: [JSONAny], max: JSONNull?, socket: [JSONAny], chipset: JSONNull?) {
        self.main = main
        self.cores = cores
        self.max = max
        self.socket = socket
        self.chipset = chipset
    }
}

// MARK: CPUTemperature convenience initializers and mutators

extension CPUTemperature {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(CPUTemperature.self, from: data)
        self.init(main: me.main, cores: me.cores, max: me.max, socket: me.socket, chipset: me.chipset)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        main: JSONNull?? = nil,
        cores: [JSONAny]? = nil,
        max: JSONNull?? = nil,
        socket: [JSONAny]? = nil,
        chipset: JSONNull?? = nil
    ) -> CPUTemperature {
        return CPUTemperature(
            main: main ?? self.main,
            cores: cores ?? self.cores,
            max: max ?? self.max,
            socket: socket ?? self.socket,
            chipset: chipset ?? self.chipset
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// DockerInfo.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let dockerInfo = try DockerInfo(json)

import Foundation

// MARK: - DockerInfo
class DockerInfo: Codable {

    init() {
    }
}

// MARK: DockerInfo convenience initializers and mutators

extension DockerInfo {
    convenience init(data: Data) throws {
        let _ = try newJSONDecoder().decode(DockerInfo.self, from: data)
        self.init()
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
    ) -> DockerInfo {
        return DockerInfo(
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// FSOpenFiles.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fSOpenFiles = try FSOpenFiles(json)

import Foundation

// MARK: - FSOpenFiles
class FSOpenFiles: Codable {
    let max, allocated, available: Int

    init(max: Int, allocated: Int, available: Int) {
        self.max = max
        self.allocated = allocated
        self.available = available
    }
}

// MARK: FSOpenFiles convenience initializers and mutators

extension FSOpenFiles {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(FSOpenFiles.self, from: data)
        self.init(max: me.max, allocated: me.allocated, available: me.available)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        max: Int? = nil,
        allocated: Int? = nil,
        available: Int? = nil
    ) -> FSOpenFiles {
        return FSOpenFiles(
            max: max ?? self.max,
            allocated: allocated ?? self.allocated,
            available: available ?? self.available
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// FSStats.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fSStats = try FSStats(json)

import Foundation

// MARK: - FSStats
class FSStats: Codable {
    let rx, wx, tx: Int
    let rxSEC, wxSEC, txSEC: Double
    let ms: Int

    enum CodingKeys: String, CodingKey {
        case rx, wx, tx
        case rxSEC
        case wxSEC
        case txSEC
        case ms
    }

    init(rx: Int, wx: Int, tx: Int, rxSEC: Double, wxSEC: Double, txSEC: Double, ms: Int) {
        self.rx = rx
        self.wx = wx
        self.tx = tx
        self.rxSEC = rxSEC
        self.wxSEC = wxSEC
        self.txSEC = txSEC
        self.ms = ms
    }
}

// MARK: FSStats convenience initializers and mutators

extension FSStats {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(FSStats.self, from: data)
        self.init(rx: me.rx, wx: me.wx, tx: me.tx, rxSEC: me.rxSEC, wxSEC: me.wxSEC, txSEC: me.txSEC, ms: me.ms)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        rx: Int? = nil,
        wx: Int? = nil,
        tx: Int? = nil,
        rxSEC: Double? = nil,
        wxSEC: Double? = nil,
        txSEC: Double? = nil,
        ms: Int? = nil
    ) -> FSStats {
        return FSStats(
            rx: rx ?? self.rx,
            wx: wx ?? self.wx,
            tx: tx ?? self.tx,
            rxSEC: rxSEC ?? self.rxSEC,
            wxSEC: wxSEC ?? self.wxSEC,
            txSEC: txSEC ?? self.txSEC,
            ms: ms ?? self.ms
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// Mem.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let mem = try Mem(json)

import Foundation

// MARK: - Mem
class Mem: Codable {
    let total, free, used, active: Int
    let available, buffers, cached, slab: Int
    let buffcache, swaptotal, swapused, swapfree: Int

    init(total: Int, free: Int, used: Int, active: Int, available: Int, buffers: Int, cached: Int, slab: Int, buffcache: Int, swaptotal: Int, swapused: Int, swapfree: Int) {
        self.total = total
        self.free = free
        self.used = used
        self.active = active
        self.available = available
        self.buffers = buffers
        self.cached = cached
        self.slab = slab
        self.buffcache = buffcache
        self.swaptotal = swaptotal
        self.swapused = swapused
        self.swapfree = swapfree
    }
}

// MARK: Mem convenience initializers and mutators

extension Mem {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Mem.self, from: data)
        self.init(total: me.total, free: me.free, used: me.used, active: me.active, available: me.available, buffers: me.buffers, cached: me.cached, slab: me.slab, buffcache: me.buffcache, swaptotal: me.swaptotal, swapused: me.swapused, swapfree: me.swapfree)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        total: Int? = nil,
        free: Int? = nil,
        used: Int? = nil,
        active: Int? = nil,
        available: Int? = nil,
        buffers: Int? = nil,
        cached: Int? = nil,
        slab: Int? = nil,
        buffcache: Int? = nil,
        swaptotal: Int? = nil,
        swapused: Int? = nil,
        swapfree: Int? = nil
    ) -> Mem {
        return Mem(
            total: total ?? self.total,
            free: free ?? self.free,
            used: used ?? self.used,
            active: active ?? self.active,
            available: available ?? self.available,
            buffers: buffers ?? self.buffers,
            cached: cached ?? self.cached,
            slab: slab ?? self.slab,
            buffcache: buffcache ?? self.buffcache,
            swaptotal: swaptotal ?? self.swaptotal,
            swapused: swapused ?? self.swapused,
            swapfree: swapfree ?? self.swapfree
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// NetworkStat.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let networkStat = try NetworkStat(json)

import Foundation

// MARK: - NetworkStat
class NetworkStat: Codable {
    let iface, operstate: String
    let rxBytes, rxDropped, rxErrors, txBytes: Int
    let txDropped, txErrors: Int
    let rxSEC, txSEC: Double
    let ms: Int

    enum CodingKeys: String, CodingKey {
        case iface, operstate
        case rxBytes
        case rxDropped
        case rxErrors
        case txBytes
        case txDropped
        case txErrors
        case rxSEC
        case txSEC
        case ms
    }

    init(iface: String, operstate: String, rxBytes: Int, rxDropped: Int, rxErrors: Int, txBytes: Int, txDropped: Int, txErrors: Int, rxSEC: Double, txSEC: Double, ms: Int) {
        self.iface = iface
        self.operstate = operstate
        self.rxBytes = rxBytes
        self.rxDropped = rxDropped
        self.rxErrors = rxErrors
        self.txBytes = txBytes
        self.txDropped = txDropped
        self.txErrors = txErrors
        self.rxSEC = rxSEC
        self.txSEC = txSEC
        self.ms = ms
    }
}

// MARK: NetworkStat convenience initializers and mutators

extension NetworkStat {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(NetworkStat.self, from: data)
        self.init(iface: me.iface, operstate: me.operstate, rxBytes: me.rxBytes, rxDropped: me.rxDropped, rxErrors: me.rxErrors, txBytes: me.txBytes, txDropped: me.txDropped, txErrors: me.txErrors, rxSEC: me.rxSEC, txSEC: me.txSEC, ms: me.ms)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        iface: String? = nil,
        operstate: String? = nil,
        rxBytes: Int? = nil,
        rxDropped: Int? = nil,
        rxErrors: Int? = nil,
        txBytes: Int? = nil,
        txDropped: Int? = nil,
        txErrors: Int? = nil,
        rxSEC: Double? = nil,
        txSEC: Double? = nil,
        ms: Int? = nil
    ) -> NetworkStat {
        return NetworkStat(
            iface: iface ?? self.iface,
            operstate: operstate ?? self.operstate,
            rxBytes: rxBytes ?? self.rxBytes,
            rxDropped: rxDropped ?? self.rxDropped,
            rxErrors: rxErrors ?? self.rxErrors,
            txBytes: txBytes ?? self.txBytes,
            txDropped: txDropped ?? self.txDropped,
            txErrors: txErrors ?? self.txErrors,
            rxSEC: rxSEC ?? self.rxSEC,
            txSEC: txSEC ?? self.txSEC,
            ms: ms ?? self.ms
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// Processes.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let processes = try Processes(json)

import Foundation

// MARK: - Processes
class Processes: Codable {
    let all, running, sleeping, unknown: Int
    let blocked: Int

    init(all: Int, running: Int, sleeping: Int, unknown: Int, blocked: Int) {
        self.all = all
        self.running = running
        self.sleeping = sleeping
        self.unknown = unknown
        self.blocked = blocked
    }
}

// MARK: Processes convenience initializers and mutators

extension Processes {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Processes.self, from: data)
        self.init(all: me.all, running: me.running, sleeping: me.sleeping, unknown: me.unknown, blocked: me.blocked)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        all: Int? = nil,
        running: Int? = nil,
        sleeping: Int? = nil,
        unknown: Int? = nil,
        blocked: Int? = nil
    ) -> Processes {
        return Processes(
            all: all ?? self.all,
            running: running ?? self.running,
            sleeping: sleeping ?? self.sleeping,
            unknown: unknown ?? self.unknown,
            blocked: blocked ?? self.blocked
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// USB.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let uSB = try USB(json)

import Foundation

// MARK: - USB
class USB: Codable {
    let id: Int?
    let bus, deviceID: JSONNull?
    let name, type: String
    let removable: Bool
    let vendor, manufacturer: String
    let maxPower, serialNumber: JSONNull?

    enum CodingKeys: String, CodingKey {
        case id, bus
        case deviceID
        case name, type, removable, vendor, manufacturer, maxPower, serialNumber
    }

    init(id: Int?, bus: JSONNull?, deviceID: JSONNull?, name: String, type: String, removable: Bool, vendor: String, manufacturer: String, maxPower: JSONNull?, serialNumber: JSONNull?) {
        self.id = id
        self.bus = bus
        self.deviceID = deviceID
        self.name = name
        self.type = type
        self.removable = removable
        self.vendor = vendor
        self.manufacturer = manufacturer
        self.maxPower = maxPower
        self.serialNumber = serialNumber
    }
}

// MARK: USB convenience initializers and mutators

extension USB {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(USB.self, from: data)
        self.init(id: me.id, bus: me.bus, deviceID: me.deviceID, name: me.name, type: me.type, removable: me.removable, vendor: me.vendor, manufacturer: me.manufacturer, maxPower: me.maxPower, serialNumber: me.serialNumber)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: Int?? = nil,
        bus: JSONNull?? = nil,
        deviceID: JSONNull?? = nil,
        name: String? = nil,
        type: String? = nil,
        removable: Bool? = nil,
        vendor: String? = nil,
        manufacturer: String? = nil,
        maxPower: JSONNull?? = nil,
        serialNumber: JSONNull?? = nil
    ) -> USB {
        return USB(
            id: id ?? self.id,
            bus: bus ?? self.bus,
            deviceID: deviceID ?? self.deviceID,
            name: name ?? self.name,
            type: type ?? self.type,
            removable: removable ?? self.removable,
            vendor: vendor ?? self.vendor,
            manufacturer: manufacturer ?? self.manufacturer,
            maxPower: maxPower ?? self.maxPower,
            serialNumber: serialNumber ?? self.serialNumber
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// WifiConnection.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let wifiConnection = try WifiConnection(json)

import Foundation

// MARK: - WifiConnection
class WifiConnection: Codable {
    let id, iface, model, ssid: String
    let bssid: String
    let channel, frequency: Int
    let type, security: String
    let signalLevel: Int
    let txRate: String

    init(id: String, iface: String, model: String, ssid: String, bssid: String, channel: Int, frequency: Int, type: String, security: String, signalLevel: Int, txRate: String) {
        self.id = id
        self.iface = iface
        self.model = model
        self.ssid = ssid
        self.bssid = bssid
        self.channel = channel
        self.frequency = frequency
        self.type = type
        self.security = security
        self.signalLevel = signalLevel
        self.txRate = txRate
    }
}

// MARK: WifiConnection convenience initializers and mutators

extension WifiConnection {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(WifiConnection.self, from: data)
        self.init(id: me.id, iface: me.iface, model: me.model, ssid: me.ssid, bssid: me.bssid, channel: me.channel, frequency: me.frequency, type: me.type, security: me.security, signalLevel: me.signalLevel, txRate: me.txRate)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        id: String? = nil,
        iface: String? = nil,
        model: String? = nil,
        ssid: String? = nil,
        bssid: String? = nil,
        channel: Int? = nil,
        frequency: Int? = nil,
        type: String? = nil,
        security: String? = nil,
        signalLevel: Int? = nil,
        txRate: String? = nil
    ) -> WifiConnection {
        return WifiConnection(
            id: id ?? self.id,
            iface: iface ?? self.iface,
            model: model ?? self.model,
            ssid: ssid ?? self.ssid,
            bssid: bssid ?? self.bssid,
            channel: channel ?? self.channel,
            frequency: frequency ?? self.frequency,
            type: type ?? self.type,
            security: security ?? self.security,
            signalLevel: signalLevel ?? self.signalLevel,
            txRate: txRate ?? self.txRate
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// WifiNetwork.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let wifiNetwork = try WifiNetwork(json)

import Foundation

// MARK: - WifiNetwork
class WifiNetwork: Codable {
    let ssid, bssid, mode: String
    let channel, frequency, signalLevel, quality: Int
    let security, wpaFlags: [String]
    let rsnFlags: [JSONAny]

    init(ssid: String, bssid: String, mode: String, channel: Int, frequency: Int, signalLevel: Int, quality: Int, security: [String], wpaFlags: [String], rsnFlags: [JSONAny]) {
        self.ssid = ssid
        self.bssid = bssid
        self.mode = mode
        self.channel = channel
        self.frequency = frequency
        self.signalLevel = signalLevel
        self.quality = quality
        self.security = security
        self.wpaFlags = wpaFlags
        self.rsnFlags = rsnFlags
    }
}

// MARK: WifiNetwork convenience initializers and mutators

extension WifiNetwork {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(WifiNetwork.self, from: data)
        self.init(ssid: me.ssid, bssid: me.bssid, mode: me.mode, channel: me.channel, frequency: me.frequency, signalLevel: me.signalLevel, quality: me.quality, security: me.security, wpaFlags: me.wpaFlags, rsnFlags: me.rsnFlags)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        ssid: String? = nil,
        bssid: String? = nil,
        mode: String? = nil,
        channel: Int? = nil,
        frequency: Int? = nil,
        signalLevel: Int? = nil,
        quality: Int? = nil,
        security: [String]? = nil,
        wpaFlags: [String]? = nil,
        rsnFlags: [JSONAny]? = nil
    ) -> WifiNetwork {
        return WifiNetwork(
            ssid: ssid ?? self.ssid,
            bssid: bssid ?? self.bssid,
            mode: mode ?? self.mode,
            channel: channel ?? self.channel,
            frequency: frequency ?? self.frequency,
            signalLevel: signalLevel ?? self.signalLevel,
            quality: quality ?? self.quality,
            security: security ?? self.security,
            wpaFlags: wpaFlags ?? self.wpaFlags,
            rsnFlags: rsnFlags ?? self.rsnFlags
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// JSONSchemaSupport.swift

import Foundation

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
