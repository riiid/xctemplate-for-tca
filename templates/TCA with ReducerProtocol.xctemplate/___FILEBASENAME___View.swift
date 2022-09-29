//___FILEHEADER___

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct ___FILEBASENAMEASIDENTIFIER___: View {
  public var body: some View {
    List {
      Text("Hello, ___VARIABLE_productName:identifier___!")
    }
    .task {
      await viewStore
        .send(.onAppear)
        .finish()
    }
  }

  @ObservedObject
  private var viewStore: ViewStore<___VARIABLE_productName:identifier___.State, ___VARIABLE_productName:identifier___.Action>
  private let store: Store<___VARIABLE_productName:identifier___.State, ___VARIABLE_productName:identifier___.Action>

  public init(store: Store<___VARIABLE_productName:identifier___.State, ___VARIABLE_productName:identifier___.Action>) {
    self.viewStore = .init(store)
    self.store = store
  }
}

// MARK: - Preview

struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {
  static var previews: some View {
    ___FILEBASENAMEASIDENTIFIER___(store: store)
      .previewLayout(.sizeThatFits)
  }

  static let store: Store<___VARIABLE_productName:identifier___.State, ___VARIABLE_productName:identifier___.Action> = .init(
    initialState: .init(),
    reducer: ___VARIABLE_productName:identifier___()
  )
}
