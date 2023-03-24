//___FILEHEADER___

import Dependencies

public protocol ___FILEBASENAMEASIDENTIFIER___ {
}

// MARK: - Live

public struct ___FILEBASENAMEASIDENTIFIER___Live: ___FILEBASENAMEASIDENTIFIER___ {
  public init() {
  }
}

// MARK: - Mock

public struct ___FILEBASENAMEASIDENTIFIER___Mock: ___FILEBASENAMEASIDENTIFIER___ {
  public init() {
  }
}
// MARK: - DependencyKey

enum ___VARIABLE_productName:identifier___Key: DependencyKey {
  static let liveValue: ___VARIABLE_productName:identifier___Environment = ___VARIABLE_productName:identifier___EnvironmentLive()
  static let testValue: ___VARIABLE_productName:identifier___Environment = ___VARIABLE_productName:identifier___EnvironmentMock()
}

// MARK: - DependencyValues

public extension DependencyValues {
  var environment___VARIABLE_productName:identifier___: ___VARIABLE_productName:identifier___Environment {
    get { self[___VARIABLE_productName:identifier___Key.self] }
    set { self[___VARIABLE_productName:identifier___Key.self] = newValue }
  }
}
