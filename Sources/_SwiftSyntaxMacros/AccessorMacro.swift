//
// Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import SwiftSyntax

/// Describes a macro that adds accessors to a given declaration.
public protocol AccessorMacro: AttachedMacro {
  /// Expand a macro that's expressed as a custom attribute attached to
  /// the given declaration. The result is a set of accessors for the
  /// declaration.
  static func expansion(
    of node: AttributeSyntax,
    attachedTo declaration: DeclSyntax,
    in context: inout MacroExpansionContext
  ) throws -> [AccessorDeclSyntax]
}

@available(*, deprecated, renamed: "AccessorMacro")
public typealias AccessorDeclarationMacro = AccessorMacro
