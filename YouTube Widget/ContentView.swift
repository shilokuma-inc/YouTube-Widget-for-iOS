//
//  ContentView.swift
//  YouTube Widget
//
//  Created by YutaroSakai on 2024/06/11.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var channelListApi = ChannelListAPI()

    var body: some View {
        List {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    @Previewable @State var channelListApi = ChannelListAPI()
//    let mockData = ChannelListResponse(kind: "",
//                                       etag: "",
//                                       nextPageToken: nil,
//                                       prevPageToken: nil,
//                                       pageInfo: .init(totalResults: 1, resultsPerPage: 1),
//                                       items: .init(kind: "", etag: "", id: "UCwrVwiJllwhJUKXKmjLcckQ", contentDetails: .init(relatedPlaylists: .init(uploads: "UUwrVwiJllwhJUKXKmjLcckQ"))))
    ContentView(channelListApi: channelListApi)
}
