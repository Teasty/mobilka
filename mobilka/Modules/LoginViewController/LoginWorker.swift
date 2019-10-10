//
//  LoginWorker.swift
//  mobilka
//
//  Created by Андрей Лихачев on 10/10/2019.
//  Copyright (c) 2019 Андрей Лихачев. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class LoginWorker
{
  func greeting()
  {
    print("Hello Worker!")
  }
    
    func singIn(request: Login.userInfo.Request, onSuccess: (() -> Void)?, onFail: (() -> Void)?) {
        Auth.auth().signIn(withEmail: request.email, password: request.password) { (result, error) in
            if error != nil{
                print("Error: ", error!.localizedDescription)
                onFail?()
            } else{
                onSuccess?()
                print(result?.user.uid)
            }
        }
    }
    
    func validate(request:Login.userInfo.Request, onSuccess: (() -> Void)?, onFail: (() -> Void)?) {
            onSuccess?()
    }
    
    
}
