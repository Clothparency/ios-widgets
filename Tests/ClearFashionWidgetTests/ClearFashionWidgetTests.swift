import XCTest
@testable import ClearFashionWidget

final class ClearFashionWidgetTests: XCTestCase {
    func productNotNil() throws {
        XCTAssertNotNil(ClearFashionWidget(brandId: "clear-fashion", productId: "fakeId", lang: "fr").product)
    }
}
