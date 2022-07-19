//
//  userModel.swift
//  Euco API Client IOS
//
//  Created by Alexander Leschanz on 16.07.22.
//

// This file was generated from JSON Schema using codebeautify, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome2 = try Welcome2(json)

import Foundation

// MARK: - BaseJSON
//struct BaseJSON: Codable, Identifiable, Decodable {
//    let success: Bool
//    let time: String
//    let cpuUsage: Double
//    let devicesInNetwork: [DevicesInNetwork]
//    let performanceTest: Int
//    let sIdata: SIdata
//    let system: System
//    let uuid: UUID
//    let bios: BIOS
//    let baseboard: Baseboard
//    let chassis: Chassis
//    let cpu: CPU
//    let cpuFlags: String
//    let cpuCache: Cache
//    let memLayout: [MemLayout]
//    let battery: Battery
//    let graphics: Graphics
//    let osInfo: OSInfo
//    let shell: String
//    let versions: Versions
//    let users: [User]
//    let diskLayout: [DiskLayout]
//    let fsOpenFiles: FSOpenFiles
//    let fsStats: FSStats
//    let audio: [Audio]
//    let networkInterfaceDefault: String
//    let networkInterfaces: [NetworkInterface]
//    let networkGatewayDefault: String
//    let wifiInterfaces: [WifiInterface]
//}
//
//// MARK: - Audio
//struct Audio {
//    let id: Int
//    let name, manufacturer: String
//    let revision, driver: NSNull
//    let audioDefault: Bool
//    let channel, type: String
//    let audioIn, out: Bool
//    let status: String
//}
//
//// MARK: - Baseboard
//struct Baseboard {
//    let manufacturer, model, version, serial: String
//    let assetTag: String
//    let memMax: NSNull
//    let memSlots: Int
//}
//
//// MARK: - Battery
//struct Battery {
//    let hasBattery: Bool
//    let cycleCount: Int
//    let isCharging: Bool
//    let designedCapacity, maxCapacity, currentCapacity: Int
//    let voltage: Double
//    let capacityUnit: String
//    let percent, timeRemaining: Int
//    let acConnected: Bool
//    let type, model, manufacturer, serial: String
//}
//
//// MARK: - BIOS
//struct BIOS {
//    let vendor, version, releaseDate, revision: String
//}
//
//// MARK: - Chassis
//struct Chassis {
//    let manufacturer, model, type, version: String
//    let serial, assetTag, sku: String
//}
//
//// MARK: - CPU
//struct CPU {
//    let manufacturer, brand, vendor, family: String
//    let model, stepping, revision, voltage: String
//    let speed, speedMin, speedMax: Double
//    let governor: String
//    let cores, physicalCores, processors: Int
//    let socket, flags: String
//    let virtualization: Bool
//    let cache: Cache
//}
//
//// MARK: - Cache
//struct Cache {
//    let l1D, l1I, l2, l3: Int
//}
//
//// MARK: - DevicesInNetwork
//struct DevicesInNetwork {
//    let name, ip, mac: String
//}
//
//// MARK: - DiskLayout
//struct DiskLayout {
//    let device, type, name, vendor: String
//    let size: Int
//    let bytesPerSector, totalCylinders, totalHeads, totalSectors: NSNull
//    let totalTracks, tracksPerCylinder, sectorsPerTrack: NSNull
//    let firmwareRevision, serialNum, interfaceType, smartStatus: String
//    let temperature: NSNull
//}
//
//// MARK: - FSOpenFiles
//struct FSOpenFiles {
//    let max, allocated, available: Int
//}
//
//// MARK: - FSStats
//struct FSStats {
//    let rx, wx, tx: Int
//    let rxSEC, wxSEC, txSEC: Double
//    let ms: Int
//}
//
//// MARK: - Graphics
//struct Graphics {
//    let controllers: [Controller]
//    let displays: [Display]
//}
//
//// MARK: - Controller
//struct Controller {
//    let vendor, model, bus: String
//    let vramDynamic: Bool
//    let vram: Int
//    let deviceID, vendorID: String
//    let external: Bool
//    let cores: NSNull
//    let metalVersion: String
//}
//
//// MARK: - Display
//struct Display {
//    let vendor, vendorID, model, productionYear: String
//    let serial: NSNull
//    let displayID: String
//    let main, builtin: Bool
//    let connection: String
//    let sizeX, sizeY: NSNull
//    let pixelDepth, resolutionX, resolutionY, currentResX: Int
//    let currentResY, positionX, positionY: Int
//    let currentRefreshRate: NSNull
//}
//
//// MARK: - MemLayout
//struct MemLayout {
//    let size: Int
//    let bank, type: String
//    let ecc: Bool
//    let clockSpeed: Int
//    let formFactor, manufacturer, partNum, serialNum: String
//    let voltageConfigured, voltageMin, voltageMax: NSNull
//}
//
//// MARK: - NetworkInterface
//struct NetworkInterface {
//    let iface, ifaceName: String
//    let networkInterfaceDefault: Bool
//    let ip4: FQDN
//    let ip4Subnet: Ip4Subnet
//    let ip6: String
//    let ip6Subnet: Ip6Subnet
//    let mac: String
//    let networkInterfaceInternal, virtual: Bool
//    let operstate: Operstate
//    let type: TypeEnum
//    let duplex: Duplex
//    let mtu: Int
//    let speed: Double?
//    let dhcp: Bool
//    let dnsSuffix, ieee8021XAuth, ieee8021XState: String
//    let carrierChanges: Int
//}
//
//enum Duplex {
//    case full
//}
//
//enum FQDN {
//    case empty
//    case the1000111
//    case the127001
//}
//
//enum Ip4Subnet {
//    case empty
//    case the255000
//    case the2552552550
//}
//
//enum Ip6Subnet {
//    case empty
//    case ffffFfffFfffFfff
//}
//
//enum Operstate {
//    case down
//    case up
//}
//
//enum TypeEnum {
//    case wired
//    case wireless
//}
//
//// MARK: - OSInfo
//struct OSInfo {
//    let platform, distro, release, codename: String
//    let kernel, arch: String
//    let hostname, fqdn: FQDN
//    let codepage, logofile, serial, build: String
//    let servicepack: String
//    let uefi: Bool
//}
//
//// MARK: - SIdata
//struct SIdata {
//    let audio: [Audio]
//    let cpuCurrentSpeed: CPUCurrentSpeed
//    let cpuTemperature: CPUTemperature
//    let mem: [String: Int]
//    let battery: SIdataBattery
//    let processes: Processes
//    let services: [Any?]
//    let fsOpenFiles: FSOpenFiles
//    let fsStats: FSStats
//    let usb: [USB]
//    let printer: [Any?]
//    let networkStats: [NetworkStat]
//    let inetLatency: DockerInfo
//    let wifiNetworks: [WifiNetwork]
//    let wifiConnections: [WifiConnection]
//    let bluetoothDevices: [Any?]
//    let dockerInfo: DockerInfo
//    let dockerContainers, vboxInfo: [Any?]
//}
//
//// MARK: - SIdataBattery
//struct SIdataBattery {
//    let isCharging: Bool
//    let designedCapacity, maxCapacity, currentCapacity: Int
//    let capacityUnit: String
//    let percent: Int
//}
//
//// MARK: - CPUCurrentSpeed
//struct CPUCurrentSpeed {
//    let min, max, avg: Double
//    let cores: [Double]
//}
//
//// MARK: - CPUTemperature
//struct CPUTemperature {
//    let main: NSNull
//    let cores: [Any?]
//    let max: NSNull
//    let socket: [Any?]
//    let chipset: NSNull
//}
//
//// MARK: - DockerInfo
//struct DockerInfo {
//}
//
//// MARK: - NetworkStat
//struct NetworkStat {
//    let iface: String
//    let operstate: Operstate
//    let rxBytes, rxDropped, rxErrors, txBytes: Int
//    let txDropped, txErrors: Int
//    let rxSEC, txSEC: Double
//    let ms: Int
//}
//
//// MARK: - Processes
//struct Processes {
//    let all, running, sleeping, unknown: Int
//    let blocked: Int
//}
//
//// MARK: - USB
//struct USB {
//    let id: Int?
//    let bus, deviceID: NSNull
//    let name, type: String
//    let removable: Bool
//    let vendor, manufacturer: String
//    let maxPower, serialNumber: NSNull
//}
//
//// MARK: - WifiConnection
//struct WifiConnection {
//    let id, iface, model, ssid: String
//    let bssid: String
//    let channel, frequency: Int
//    let type, security: String
//    let signalLevel: Int
//    let txRate: String
//}
//
//// MARK: - WifiNetwork
//struct WifiNetwork {
//    let ssid, bssid, mode: String
//    let channel, frequency, signalLevel, quality: Int
//    let security, wpaFlags: [String]
//    let rsnFlags: [Any?]
//}
//
//// MARK: - System
//struct System {
//    let manufacturer, model, version, serial: String
//    let uuid, sku: String
//    let virtual: Bool
//}
//
//// MARK: - User
//struct User {
//    let user, tty, date, time: String
//    let ip, command: String
//}
//
//// MARK: - UUID
//struct UUID {
//    let os, hardware: String
//    let macs: [String]
//}
//
//// MARK: - Versions
//struct Versions {
//    let kernel, openssl, systemOpenssl, systemOpensslLIB: String
//    let node, v8, npm, yarn: String
//    let pm2, gulp, grunt, git: String
//    let tsc, mysql, redis, mongodb: String
//    let apache, nginx, php, docker: String
//    let versionsPostfix, postgresql, perl, python: String
//    let python3, pip, pip3, java: String
//    let gcc, virtualbox, bash, zsh: String
//    let fish, powershell, dotnet: String
//}
//
//// MARK: - WifiInterface
//struct WifiInterface {
//    let id, iface, model, vendor: String
//    let mac: String
//}
