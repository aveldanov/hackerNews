//
//  PostDataModel.swift
//  HackerNews
//
//  Created by Veldanov, Anton on 3/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

struct Results: Decodable{
  
  
  let hits: [Post]
  
  
}

struct Post: Decodable, Identifiable{
  // convering objectID to id
  var id: String{
    return objectID
  }
  
  
  let objectID: String
  let points: Int
  let title: String
  let url: String?
  
  
  
}
