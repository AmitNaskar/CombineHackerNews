//
//  StoryListViewModel.swift
//  HackerNews
//
//  Created by Amit Naskar on 23/02/20.
//  Copyright © 2020 Amit Naskar. All rights reserved.
//

import Foundation
import Combine

class StoryListViewModel: ObservableObject {
    
    @Published var stories = [StoryViewModel]()
    private var cancellable: AnyCancellable?
    
    init() {
        fetchTopStories()
    }
    
    private func fetchTopStories() {
        
        self.cancellable = Webservice().getAllTopStories().map { stories in
            stories.map { StoryViewModel(story: $0) }
        }.sink(receiveCompletion: { _ in }, receiveValue: { storyViewModels in
            self.stories = storyViewModels
        })
        
    }
    
}

struct StoryViewModel {
    
    let story: Story
    
    var id: Int {
        return self.story.id
    }
    
    var title: String {
        return self.story.title
    }
    
    var url: String {
        return self.story.url
    }
    
}
