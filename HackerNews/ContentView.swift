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
    List{
        Text("Hello, World!")
        Text("Goodbye World")
      }
    }
  
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
