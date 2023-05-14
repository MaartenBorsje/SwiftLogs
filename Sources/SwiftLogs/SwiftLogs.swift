import Foundation

public struct Log {
    public static func info(_ message: String) {
        log(message, level: "INFO")
    }

    public static func debug(_ message: String) {
        log(message, level: "DEBUG")
    }
    
    public static func error(_ message: String) {
        log(message, level: "ERROR")
    }

    private static func log(_ message: String, level: String) {
        let timestamp = Date()
        let formattedDate = formatDate(timestamp)
        print("\(formattedDate) \(level) | \(message)")
    }

    private static func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss.SSS"
        formatter.locale = Locale.current
        formatter.timeZone = TimeZone.current
        return formatter.string(from: date)
    }
}
