public extension NSAttributedString {
  
  enum Attribute {
    case attachment(NSTextAttachment)
    case backgroundColor(UIColor)
    case baselineOffset(NSNumber)
    case font(UIFont)
    case foregroundColor(UIColor)
    case kern(NSNumber)
    case ligature(NSNumber)
    case link(String) // string for flexibility, instead of URL
    case paragraphStyle(NSParagraphStyle)
    case shadow(NSShadow)
    case underlineColor(UIColor)
  }

  // Define the equivalent kv here.
  fileprivate static func kvFor(_ attributeKey: Attribute) -> (Key, Any) {
    switch attributeKey {
    case .attachment(let value):
      return (.attachment, value)
    case .backgroundColor(let value):
      return (.backgroundColor, value)
    case .font(let value):
      return (.font, value)
    case .foregroundColor(let value):
      return (.foregroundColor, value)
    case .baselineOffset(let value):
      return (.baselineOffset, value)
    case .kern(let value):
      return (.kern, value)
    case .ligature(let value):
      return (.ligature, value)
    case .link(let value):
      return (.link, value)
    case .paragraphStyle(let value):
      return (.paragraphStyle, value)
    case .shadow(let value):
      return (.shadow, value)
    case .underlineColor(let value):
      return (.underlineColor, value)
    }
  }
  
  enum Scope {
    case all
    case subtext(String)
  }
  
  convenience init(string:String, attrs:[Attribute] = []) {
    self.init(string: string, attributes: attrs.dictionaryValue)
  }
}

public extension NSMutableAttributedString {
  
  func addAttributes(attrs:[Attribute], for scope:Scope) {
    switch scope {
    case .all:
      addAttributes(attrs.dictionaryValue, range:NSRange(location: 0, length: length))
    case .subtext(let substr):
      let range = (string as NSString).range(of: substr)
      addAttributes(attrs.dictionaryValue, range:range)
    }
  }
}

extension Sequence where Element == NSAttributedString.Attribute {
  var dictionaryValue:[NSAttributedString.Key: Any] {
    return reduce([:]) { (result, attr) -> [NSAttributedString.Key: Any] in
      var result = result
      let kv = NSAttributedString.kvFor(attr)
      result[kv.0] = kv.1
      return result
    }
  }
}

