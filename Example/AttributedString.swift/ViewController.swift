//
//  ViewController.swift
//  AttributedString.swift
//
//  Created by michaelhenry on 08/21/2019.
//  Copyright (c) 2019 michaelhenry. All rights reserved.
//

import UIKit
import AttributedString_swift

class ViewController: UIViewController {
  
  @IBOutlet weak var label1:UILabel!
  @IBOutlet weak var label2:UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let attrs1:[NSAttributedString.Attribute] = [
      .font(UIFont.boldSystemFont(ofSize: 30)),
      .link("https://www.google.com")
    ]
    
    label1.attributedText = NSAttributedString(
      string: "Hello World", attrs:attrs1)

    let attrText2 = NSMutableAttributedString(
      string: "The quick brown fox jump over the lazy dog.",
      attrs: [
        .font(.systemFont(ofSize: 18)),
        .foregroundColor(UIColor.orange)
      ])
    
    // Adding more attributes!
    attrText2.addAttributes(
      attrs: [
        .font(.boldSystemFont(ofSize: 50)),
        .foregroundColor(UIColor.gray)
      ],
      for: .subtext("The"))
    
    attrText2.addAttributes(
      attrs: [
        .foregroundColor(.green),
        .font(.systemFont(ofSize: 50))],
      for: .closedRange(4...8))
    
    attrText2.addAttributes(
      attrs: [
        .foregroundColor(.red),
        .font(.boldSystemFont(ofSize: 50))],
      for: .closedRange(10...15))
    
    attrText2.addAttributes(
      attrs: [
        .font(.boldSystemFont(ofSize: 30)),
        .link("https://en.wikipedia.org/wiki/Dog"),
      ],
      for: .subtext("dog"))
    
    // With paragraph style for whole text
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.alignment = .center
    attrText2.addAttributes(
      attrs: [
        .paragraphStyle(paragraphStyle)
      ],
      for: .all)
    label2.attributedText = attrText2
  }
}


