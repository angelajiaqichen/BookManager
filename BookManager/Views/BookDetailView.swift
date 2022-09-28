//
//  BookDetailView.swift
//  BookManager
//
//  Created by Angela Chen on 9/28/22.
//

import SwiftUI

struct BookDetailsView: View {
      var book: Book
      
      var body: some View {
        
        
        VStack(alignment: .leading, spacing: 6) {
          Text(book.title)
            .fontWeight(.bold)
            .font(.custom("Nunito", size: 25))
          Text(book.author)
            .font(.body).foregroundColor(.green)
          Text(book.gender)
            .font(.body)
            .fontWeight(.light)
        }
        .frame(width: 300, height: 300, alignment: .topLeading)
        Spacer()
        
        
       }
  
      
}
