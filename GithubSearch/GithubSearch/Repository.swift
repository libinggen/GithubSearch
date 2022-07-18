//
//  Repository.swift
//  GithubSearch
//
//  Created by lison on 2022/07/19.
//

import Foundation

struct Repository: Decodable, Identifiable {
    let id: Int
    let fullName: String
    let description: String?
    let stargazersCount: Int
    let htmlUrl: URL
}
