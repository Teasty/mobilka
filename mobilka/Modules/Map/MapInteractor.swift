//
//  MapInteractor.swift
//  mobilka
//
//  Created by Андрей Лихачев on 03.12.2019.
//  Copyright (c) 2019 Андрей Лихачев. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MapBusinessLogic
{
  func getCities(request: Map.Coordinates)
}

protocol MapDataStore
{
  //var name: String { get set }
}

class MapInteractor: MapBusinessLogic, MapDataStore
{
  var presenter: MapPresentationLogic?
  var worker: MapWorker?
  //var name: String = ""
  
  // MARK: Do something
  
    func getCities(request: Map.Coordinates)
  {
    worker = MapWorker()
    worker?.getMapData(coordinates: request, onSuccess: { cities in
        self.presenter?.showAnnotations(cities: cities)
    })
    
  }
}
