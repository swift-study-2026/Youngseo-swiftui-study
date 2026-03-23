//
//  LoginViewModel.swift
//  week01
//
//  Created by youngseo on 3/20/26.
//

import Observation

@Observable
final class LoginViewModel {
    
    var username: String = ""
    var password: String = ""
    
    var showPasswordAlert: Bool = false
}
