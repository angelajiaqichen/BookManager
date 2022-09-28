//
//  LibraryView.swift
//  BookManager
//
//  Created by Angela Chen on 9/26/22.
//

import SwiftUI

struct LibraryView: View {
  @EnvironmentObject var library: Library
  
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //.padding()
        //List(library.books) { book in
         //     Text(book.title)
         //       .fontWeight(.bold)
         //       .font(.body)
        //}
      NavigationView {
            List{
              ForEach(library.books) { book in
                BookRowView(book: book)
              }.onDelete(perform: removeRows)
            }.navigationBarTitle("Library")
      }

    }
  
    func removeRows(at offsets: IndexSet) {
      library.books.remove(atOffsets: offsets)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}


