import Foundation
import DatadogCore
import DatadogInternal
import DatadogLogs
import DatadogTrace
import DatadogRUM

public enum DatadogProxy {
    public static func start() {
        RUM.enable(with: config)
    }

    static var config: RUM.Configuration {
        return RUM.Configuration(applicationID: "id", sessionSampleRate: 100)
    }
}

