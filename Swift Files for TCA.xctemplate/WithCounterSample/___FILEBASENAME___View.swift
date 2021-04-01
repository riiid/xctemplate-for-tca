//___FILEHEADER___

import ComposableArchitecture
import SwiftUI

// MARK: View

struct ___FILEBASENAMEASIDENTIFIER___: View {

  private let store: ___VARIABLE_productName:identifier___Store
  @ObservedObject private var viewStore: ___VARIABLE_productName:identifier___ViewStore

  init(store: ___VARIABLE_productName:identifier___Store) {
    self.store = store
    self.viewStore = ViewStore(store)
  }

  var body: some View {
    HStack {
      Button("-") { viewStore.send(.decrease) }
      Text(String(viewStore.counter))
      Button("+") { viewStore.send(.increase) }
    }
  }
}

// MARK: Store

typealias ___VARIABLE_productName:identifier___Store = Store<
  ___VARIABLE_productName:identifier___State,
  ___VARIABLE_productName:identifier___Action
>

// MARK: ViewStore

typealias ___VARIABLE_productName:identifier___ViewStore = ViewStore<
  ___VARIABLE_productName:identifier___State,
  ___VARIABLE_productName:identifier___Action
>

// MARK: Preview

struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {

  static var previews: some View {
    ForEach(ColorScheme.allCases, id: \.self) { colorScheme in
			___FILEBASENAMEASIDENTIFIER___(store: store)
        .preferredColorScheme(colorScheme)
        .previewLayout(.sizeThatFits)
    }
  }

  static let store: ___VARIABLE_productName:identifier___Store = .init(
    initialState: .init(),
    reducer: .init(),
    environment: .init()
  )
}
