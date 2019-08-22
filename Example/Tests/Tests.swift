import XCTest
import AttributedString_swift

class Tests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
  }
  
  func testForegroundColor() {
    let color = UIColor.red
    let attributedText = NSAttributedString(
      string: "Hello World",
      attrs: [.foregroundColor(color)])
    let attributes = attributedText.attributes(at: 0, effectiveRange:nil)
    XCTAssertEqual(attributes[.foregroundColor] as! UIColor, color)
  }
  
  func testBackgroundColor() {
    let color = UIColor.red
    let attributedText = NSAttributedString(
      string: "Hello World",
      attrs: [.backgroundColor(color)])
    let attributes = attributedText.attributes(at: 0, effectiveRange:nil)
    XCTAssertEqual(attributes[.backgroundColor] as! UIColor, color)
  }
  
  func testFont() {
    let font = UIFont.systemFont(ofSize: 100)
    let attributedText = NSAttributedString(
      string: "Hello World",
      attrs: [.font(font)])
    let attributes = attributedText.attributes(at: 0, effectiveRange:nil)
    XCTAssertEqual(attributes[.font] as! UIFont, font)
  }
}
