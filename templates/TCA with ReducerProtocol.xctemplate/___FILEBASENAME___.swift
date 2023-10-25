//___FILEHEADER___

import ComposableArchitecture
import Dependencies

public struct ___VARIABLE_productName:identifier___: Reducer {
  @Dependency(\.environment___VARIABLE_productName:identifier___) private var environment

  public init() {}

  public var body: some Reducer<State, Action> {
    BindingReducer()
    Reduce<State, Action> { state, action in
      switch action {
      case .onAppear:
        return .none

      case .binding:
        return .none
      }
    }
  }
}
