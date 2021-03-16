//
//  SettingsModels.swift
//  simnext
//
//  Created by Kristina Krivošija on 12/03/2021.
//

import Foundation


struct Section {
    let title: String
    let options: [Option]
}
struct Option {
    let title: String
    let handler: () -> Void
}
