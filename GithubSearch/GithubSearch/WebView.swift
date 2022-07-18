//
//  WebView.swift
//  GithubSearch
//
//  Created by lison on 2022/07/19.
//

import SafariServices
import SwiftUI

struct WebView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<WebView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<WebView>) {}
}
