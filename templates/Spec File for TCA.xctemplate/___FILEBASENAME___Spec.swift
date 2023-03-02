//___FILEHEADER___

import ComposableArchitecture
import Foundation
import Models
import Nimble
import Quick
import Tests

@testable import ___VARIABLE_productName:identifier___

typealias TEST___VARIABLE_productName:identifier___ = TestStore<
  ___VARIABLE_productName:identifier___.State,
  ___VARIABLE_productName:identifier___.Action,
  ___VARIABLE_productName:identifier___.State,
  ___VARIABLE_productName:identifier___.Action,
  Void
>

final class ___FILEBASENAMEASIDENTIFIER___: QuickSpec {
  private let scheduler: TestSchedulerOf<DispatchQueue> = DispatchQueue.test

  private func getSut() -> TEST___VARIABLE_productName:identifier___ {
    var sut: TEST___VARIABLE_productName:identifier___
    sut = .init(
      initialState: .init(),
      reducer: TEST___VARIABLE_productName:identifier___()
    )
    sut.exhaustivity = .off

    // set mock environment here

    return sut
  }

  override func spec() {
    describe("___VARIABLE_productName:identifier___") {
      var sut: TEST___VARIABLE_productName:identifier___
      sut = self.getSut()

      context("When") {
        it("should do") {}
      }
    }
  }
}
