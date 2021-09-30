//
//  ViewCondition.swift
//  ViewCondition
//
//  Created by tokijh on 2021/09/30.
//  Copyright © 2021 tokijh. All rights reserved.
//

import SwiftUI

extension View {
  @ViewBuilder
  public func `if`<Content: View>(
    _ condition: @autoclosure @escaping () -> Bool,
    @ViewBuilder content: (Self) -> Content
  ) -> some View {
    if condition() {
      content(self)
    } else {
      self
    }
  }

  @ViewBuilder
  public func `if`<Value, Content: View>(
    `let` value: Value?,
    @ViewBuilder content: (_ view: Self, _ value: Value) -> Content
  ) -> some View {
    if let value = value {
      content(self, value)
    } else {
      self
    }
  }

  @ViewBuilder
  public func ifNot<Content: View>(
    _ notCondition: @autoclosure @escaping () -> Bool,
    @ViewBuilder content: (Self) -> Content
  ) -> some View {
    if notCondition() {
      self
    } else {
      content(self)
    }
  }

  @ViewBuilder
  public func then<Content: View>(@ViewBuilder content: (Self) -> Content) -> some View {
    content(self)
  }
}
