//
//  WebViewInteractor.swift
//  mobilka
//
//  Created by Ac Lo on 23/10/2019.
//  Copyright (c) 2019 Андрей Лихачев. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol WebViewBusinessLogic
{
  func doSomething(request: WebView.Something.Request)
}

protocol WebViewDataStore
{
  //var name: String { get set }
}

class WebViewInteractor: WebViewBusinessLogic, WebViewDataStore
{
  var presenter: WebViewPresentationLogic?
  var worker: WebViewWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: WebView.Something.Request)
  {
    worker = WebViewWorker()
    worker?.doSomeWork()
    
    let response = WebView.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
