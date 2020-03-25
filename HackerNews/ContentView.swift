//
//  ContentView.swift
//  HackerNews
//
//  Created by Veldanov, Anton on 3/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      
      List(posts){post in
        Text(post.title)
      }
        
      .navigationBarTitle("HACKER NEWS")
      
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

//// Identifiable - means has to have an id
//struct Post: Identifiable{
//  let id: String
//  let title: String
//}

let posts = [
  Post(id: "1", title: "Hello1"),
  Post(id: "2", title: "Hello2"),
  Post(id: "3", title: "Hello3")


]
