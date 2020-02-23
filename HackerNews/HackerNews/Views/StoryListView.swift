//
//  StoryListView.swift
//  HackerNews
//
//  Created by Amit Naskar on 23/02/20.
//  Copyright © 2020 Amit Naskar. All rights reserved.
//

import SwiftUI

struct StoryListView: View {
    
    @ObservedObject private var storyListVM = StoryListViewModel()
    
    var body: some View {
        NavigationView {
            
            List(self.storyListVM.stories, id: \.id) { storyVM in
                NavigationLink(destination: StoryDetailView(storyId: storyVM.id)) {
                    Text("\(storyVM.title)")
                }
            }
            
        .navigationBarTitle("Hacker News")
        }
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
    }
}
