//
//  GithubSearchApp.swift
//  GithubSearch
//
//  Created by LiBinggen on 2022/07/16.
//

import SwiftUI

@main
struct GithubSearchApp: App {
    var body: some Scene {
        WindowGroup {
            RepositoryListView(viewModel: RepositoryListViewModel(mainScheduler: DispatchQueue.main))
        }
    }
}
