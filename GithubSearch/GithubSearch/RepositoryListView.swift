//
//  RepositoryListView.swift
//  GithubSearch
//
//  Created by lison on 2022/07/19.
//

import SwiftUI

struct RepositoryListView : View {

    @ObservedObject var viewModel: RepositoryListViewModel

    var body: some View {

        NavigationView {

            VStack {

                HStack {
                    TextField("Search reposipories...", text: $viewModel.text)
                        .frame(height: 40)
                        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                        .border(Color.gray)
                        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))

                    Button<Text>(LocalizedStringKey("Search")) { self.viewModel.search() }
                        .frame(height: 40)
                        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                        .border(Color.blue)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                }

                List {
                    if viewModel.isLoading {
                        Text("Loading...")
                    } else {
                        viewModel.errorMessage.map(Text.init)?
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)

                        ForEach(viewModel.repositories) { repository in

                            NavigationLink(destination:
                                WebView(url: repository.htmlUrl)
                                    .navigationBarTitle(Text(repository.fullName))
                            ) {

                                RepositoryView(repository: repository)
                            }
                        }
                    }
                }
                .navigationBarTitle(Text("Search🔍"))
            }
        }
    }
}
