//___FILEHEADER___

import Dependencies

public protocol ___FILEBASENAMEASIDENTIFIER___ {
}

// MARK: - Live

public final class ___FILEBASENAMEASIDENTIFIER___Live: ___FILEBASENAMEASIDENTIFIER___ {
  public init() {
  }
}

// MARK: - Mock

public final class ___FILEBASENAMEASIDENTIFIER___Mock: ___FILEBASENAMEASIDENTIFIER___ {
  public init() {
  }
}

// MARK: - DependencyKey

enum ___VARIABLE_productName:identifier___Key: DependencyKey {
  static let liveValue: ___VARIABLE_productName:identifier___Service = ___VARIABLE_productName:identifier___ServiceLive()
  static let previewValue: ___VARIABLE_productName:identifier___Service = ___VARIABLE_productName:identifier___ServiceMock()
  static let testValue: ___VARIABLE_productName:identifier___Service = ___VARIABLE_productName:identifier___ServiceMock()
}

// MARK: - DependencyValues

public extension DependencyValues {
  var service___VARIABLE_productName:identifier___: ___VARIABLE_productName:identifier___Service {
    get { self[___VARIABLE_productName:identifier___Key.self] }
    set { self[___VARIABLE_productName:identifier___Key.self] = newValue }
  }
}
