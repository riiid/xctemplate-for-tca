//___FILEHEADER___

import ComposableArchitecture
import SwiftUI

// MARK: View

struct ___FILEBASENAMEASIDENTIFIER___: View {

  let store: ___VARIABLE_productName:identifier___Store

  var body: some View {
    WithViewStore(store) { viewStore in
      HStack {
        Button("-") { viewStore.send(.decrease) }
        Text(String(viewStore.counter))
        Button("+") { viewStore.send(.increase) }
      }
    }
  }
}

// MARK: Store

typealias ___VARIABLE_productName:identifier___Store = Store<
  ___VARIABLE_productName:identifier___State,
  ___VARIABLE_productName:identifier___Action
>

// MARK: - Preview

struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {

  static var previews: some View {
    ___FILEBASENAMEASIDENTIFIER___(store: store)
      .preferredColorScheme(.light)
    ___FILEBASENAMEASIDENTIFIER___(store: store)
      .preferredColorScheme(.dark)
  }

  static let store: ___VARIABLE_productName:identifier___Store = .init(
    initialState: .init(),
    reducer: ___VARIABLE_productName:identifier___Reducer(),
    environment: .init()
  )
}
