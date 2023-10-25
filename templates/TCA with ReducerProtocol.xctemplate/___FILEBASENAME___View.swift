//___FILEHEADER___

import SwiftUI

import ComposableArchitecture

// MARK: - View

public struct ___FILEBASENAMEASIDENTIFIER___: View {
  @ObservedObject
  private var viewStore: ViewStoreOf<___VARIABLE_productName:identifier___>
  private let store: StoreOf<___VARIABLE_productName:identifier___>

  public init(store: StoreOf<___VARIABLE_productName:identifier___>) {
    self.viewStore = .init(store, observe: { $0 })
    self.store = store
  }

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
}

// MARK: - Preview

let store: StoreOf<___VARIABLE_productName:identifier___> = .init(
  initialState: .init(),
  reducer: { ___VARIABLE_productName:identifier___() }
)

#Preview {
  ___FILEBASENAMEASIDENTIFIER___(store: store)
}
