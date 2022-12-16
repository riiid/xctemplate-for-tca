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
  private var viewStore: ViewStoreOf<___VARIABLE_productName:identifier___>
  private let store: StoreOf<___VARIABLE_productName:identifier___>

  public init(store: StoreOf<___VARIABLE_productName:identifier___>) {
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

  static let store: StoreOf<___VARIABLE_productName:identifier___> = .init(
    initialState: .init(),
    reducer: ___VARIABLE_productName:identifier___()
  )
}
