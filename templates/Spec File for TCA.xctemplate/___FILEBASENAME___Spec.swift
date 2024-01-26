//___FILEHEADER___

import ComposableArchitecture
import Foundation
import Nimble
import Quick

@testable import ___VARIABLE_productName:identifier___

typealias Test___VARIABLE_productName:identifier___Store = TestStoreOf<___VARIABLE_productName:identifier___>

final class ___FILEBASENAMEASIDENTIFIER___: QuickSpec {
  private let scheduler: TestSchedulerOf<DispatchQueue> = DispatchQueue.test

  private func getSut() -> Test___VARIABLE_productName:identifier___Store {
    var sut: Test___VARIABLE_productName:identifier___Store
    sut = .init(
      initialState: .init(),
      reducer: ___VARIABLE_productName:identifier___()
    )
    sut.exhaustivity = .off

    // set mock environment here

    return sut
  }

  override func spec() {
    describe("___VARIABLE_productName:identifier___") {
      var sut: Test___VARIABLE_productName:identifier___Store
      sut = self.getSut()

      context("When") {
        it("should do") {}
      }
    }
  }
}
