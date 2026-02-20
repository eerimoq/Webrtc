import libdatachannel

public enum DataChannelConnectionState {
    case new
    case connecting
    case connected
    case disconnected
    case failed
    case closed

    public init?(value: rtcState) {
        switch value {
        case RTC_NEW:
            self = .new
        case RTC_CONNECTING:
            self = .connecting
        case RTC_CONNECTED:
            self = .connected
        case RTC_DISCONNECTED:
            self = .disconnected
        case RTC_FAILED:
            self = .failed
        case RTC_CLOSED:
            self = .closed
        default:
            return nil
        }
    }
}

public enum DataChannelGatheringState {
    case new
    case inProgress
    case complete

    public init?(value: rtcGatheringState) {
        switch value {
        case RTC_GATHERING_NEW:
            self = .new
        case RTC_GATHERING_INPROGRESS:
            self = .inProgress
        case RTC_GATHERING_COMPLETE:
            self = .complete
        default:
            return nil
        }
    }
}
