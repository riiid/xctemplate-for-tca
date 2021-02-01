//___FILEHEADER___

import ComposableArchitecture

typealias ___FILEBASENAMEASIDENTIFIER___ = Reducer<
  ___VARIABLE_productName:identifier___State,
  ___VARIABLE_productName:identifier___Action,
  ___VARIABLE_productName:identifier___Environment
>

extension ___FILEBASENAMEASIDENTIFIER___ {
  init() {
    self = .init { state, action, environment in
      switch action {
      case .increase:
        state.counter += 1
        return .none

      case .decrease:
        state.counter -= 1
        return .none
      }
    }
  }
}
