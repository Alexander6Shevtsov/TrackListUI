//
//  AlbumDetail.swift
//  TrackListUI
//
//  Created by Alexander Shevtsov on 12.03.2025.
//

import SwiftUI

struct AlbumDetail: View {
    let album = Album.getAlbum()
    
    var body: some View {
        List(album.songs) { song in
            HStack {
                Image(album.cover)
                    .resizable()
                    .frame(width: 60, height: 60) // размер
                VStack(alignment: .leading) {
                    Text(song.title)
                    Text(song.artist.name)
                        .foregroundStyle(.secondary)
                }
            }
        }
    }
}

#Preview {
    AlbumDetail()
}
