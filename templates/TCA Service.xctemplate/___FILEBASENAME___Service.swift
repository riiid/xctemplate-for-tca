//___FILEHEADER___

import ComposableArchitecture

protocol ___FILEBASENAMEASIDENTIFIER___ {
  func greeting() -> Effect<String, Never>
}

final class ___FILEBASENAMEASIDENTIFIER___Live: ___FILEBASENAMEASIDENTIFIER___ {
  func greeting() -> Effect<String, Never> {
    .fireAndForget {
      print("Hello")
    }
  }
}

extension ___FILEBASENAMEASIDENTIFIER___ where Self == ___FILEBASENAMEASIDENTIFIER___Live {
  static var live: Self {
    .init()
  }
}

#if DEBUG
struct ___FILEBASENAMEASIDENTIFIER___Mock: ___FILEBASENAMEASIDENTIFIER___ {
  let greetingEffect: Effect<String, Never>

  func greeting() -> Effect<String, Never> { greetingEffect }
}

extension ___FILEBASENAMEASIDENTIFIER___ where Self == ___FILEBASENAMEASIDENTIFIER___Mock {
  static func mock(
    greeting: Effect<String, Never> = .none
  ) -> Self {
    .init(
      greetingEffect: greeting
    )
  }

  static var noop: Self {
    .init(
      greetingEffect: .none
    )
  }

  static var failing: Self {
    .init(
      greetingEffect: .fireAndForget {
        fatalError("Not implemented yet")
      }
    )
  }
}
#endif
