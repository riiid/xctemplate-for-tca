//___FILEHEADER___

import ComposableArchitecture
import SwiftUI

// MARK: View

public struct ___FILEBASENAMEASIDENTIFIER___: View {

  @ObservedObject
  private var viewStore: ___VARIABLE_productName:identifier___ViewStore

  private let store: ___VARIABLE_productName:identifier___Store

  public init(store: ___VARIABLE_productName:identifier___Store) {
    self.viewStore = ViewStore(store)
    self.store = store
  }

  public var body: some View {
    Text("Hello, ___VARIABLE_productName:identifier___!")
  }
}

// MARK: Store

public typealias ___VARIABLE_productName:identifier___Store = Store<
  ___VARIABLE_productName:identifier___State,
  ___VARIABLE_productName:identifier___Action
>

// MARK: ViewStore

public typealias ___VARIABLE_productName:identifier___ViewStore = ViewStore<
  ___VARIABLE_productName:identifier___State,
  ___VARIABLE_productName:identifier___Action
>

// MARK: Preview

struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {

  static var previews: some View {
    ___FILEBASENAMEASIDENTIFIER___(store: store)
      .previewLayout(.sizeThatFits)
  }

  static let store: ___VARIABLE_productName:identifier___Store = .init(
    initialState: .init(),
    reducer: .init(),
    environment: .init()
  )
}
