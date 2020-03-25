//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Veldanov, Anton on 3/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

// protocol ObservableObject - broadcasting
class NetworkManager: ObservableObject{
  
  @Published var posts = [Post]()
  
  
  
  
  func fetchData(){
    
    if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page" ){
      let session = URLSession(configuration: .default)
      let task = session.dataTask(with: url) { (data, response, error) in
        if error == nil{
          let decoder = JSONDecoder()
          if let safeData = data{
            do{
              let results = try decoder.decode(Results.self, from: safeData)
              DispatchQueue.main.async {
                self.posts = results.hits
                           print(self.posts)
              }
           
            } catch{
              print(error)
            }
            
            
          }
          
          
        }
      }
      
      task.resume()
      
      
    }
    
  }
  
  
  
  
}
