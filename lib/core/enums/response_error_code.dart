enum ResponseErrorCode {
  ConnectionLost,
  ServerError,
}

extension RespIntExtensions on int {
  ResponseErrorCode? get code {
    switch (this) {
      case 1:
        return ResponseErrorCode.ServerError;
      case -1:
        return ResponseErrorCode.ConnectionLost;
      default:
        return null;
    }
  }
}

extension RespExtensions on ResponseErrorCode {
  int? get rawValue {
    switch (this) {
      case ResponseErrorCode.ServerError:
        return 1;
      case ResponseErrorCode.ConnectionLost:
        return -1;
      default:
        return null;
    }
  }
}