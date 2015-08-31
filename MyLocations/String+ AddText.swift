//
//  String+ AddText.swift
//  MyLocations
//
//  Created by 孙竞 on 15/4/7.
//  Copyright (c) 2015年 Razeware. All rights reserved.
//

extension String {
  mutating func addText(text: String?,
    withSeparator separator: String = "") {
      if let text = text {
        if !isEmpty {
          self += separator
        }
        self += text
      }
    }
  }