//___FILEHEADER___

import Dependencies

public struct ___FILEBASENAMEASIDENTIFIER___ {
}

// MARK: - Live

extension ___FILEBASENAMEASIDENTIFIER___ {
  public static var liveValue: Self {
    return Self()
  }
}

// MARK: - Test

extension ___FILEBASENAMEASIDENTIFIER___ {
  public static var testValue: Self {
    return Self()
  }
}

// MARK: - Preview

extension ___FILEBASENAMEASIDENTIFIER___ {
  public static var previewValue: Self {
    return Self()
  }
}

// MARK: - DependencyKey

enum ___VARIABLE_productName:identifier___ServiceKey: DependencyKey {
  static let liveValue: ___FILEBASENAMEASIDENTIFIER___ = .liveValue
  static let previewValue: ___FILEBASENAMEASIDENTIFIER___ = .previewValue
  static let testValue: ___FILEBASENAMEASIDENTIFIER___ = .testValue
}

// MARK: - DependencyValues

public extension DependencyValues {
  var service___VARIABLE_productName:identifier___: ___VARIABLE_productName:identifier___Service {
    get { self[___VARIABLE_productName:identifier___ServiceKey.self] }
    set { self[___VARIABLE_productName:identifier___ServiceKey.self] = newValue }
  }
}
