//
//  AppState.swift
//  week01
//
//  Created by youngseo on 3/22/26.
//

import Observation

@Observable
final class AppState {
    var isLoggedIn: Bool = false
    var username: String = ""
}
