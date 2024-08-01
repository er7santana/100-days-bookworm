//
//  String+Extensions.swift
//  Bookworm
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 01/08/24.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
