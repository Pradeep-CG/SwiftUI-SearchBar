//
//  SearchBarView.swift
//  ListAndNavigation
//
//  Created by Pradeep on 21/05/20.
//  Copyright © 2020 Pradeep. All rights reserved.
//

import SwiftUI

struct SearchBarView: UIViewRepresentable {
    
    
    
    @Binding var searchBarText:String
    
    func makeUIView(context: UIViewRepresentableContext<SearchBarView>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.searchBarStyle = .minimal
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBarView>) {
        uiView.text = searchBarText
    }
    
    typealias UIViewType = UISearchBar
    
    class Coordinator: NSObject, UISearchBarDelegate{
        
        @Binding var searchBarValue:String
        
        init(text:Binding<String>){
            _searchBarValue = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            searchBarValue = searchText
        }
    }
    func makeCoordinator() -> SearchBarView.Coordinator {
        return Coordinator(text: $searchBarText)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchBarText: .constant("test"))
    }
}
