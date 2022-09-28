//
//  BookRowVIew.swift
//  BookManager
//
//  Created by Angela Chen on 9/28/22.
//

import SwiftUI

struct BookRowView: View {
    
    var book: Book
  
    var body: some View {
        NavigationLink(
          destination: BookDetailsView(book: book),
          label: {
            Text(book.title)
              .fontWeight(.bold)
              .font(.body)
        })
    }
}

//struct BookRowVIew_Previews: PreviewProvider {
    //static var previews: some View {
      //BookRowView()
      //BookRowView(book: book)
      //https://stackoverflow.com/questions/57234380/missing-argument-for-parameter-item-in-call
    //}
//}
