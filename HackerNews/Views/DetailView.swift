//
//  DetailView.swift
//  HackerNews
//
//  Created by Veldanov, Anton on 3/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import SwiftUI

struct DetailView: View {
  
  let url:String?
  
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
      DetailView(url: "https://google.com")
    }
}


