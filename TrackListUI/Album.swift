//
//  Album.swift
//  TrackListUI
//
//  Created by Alexander Shevtsov on 12.03.2025.
//

import Foundation

struct Album {
    let cover: String
    let songs: [Song]
    
    static func getAlbum() -> Album {
        Album(
            cover: "E-Spectro - End Station (Original Mix)",
            songs: [
                Song(artist: Artist(name: "Alberto Ruiz"), title: "7 Elements (Original Mix)"),
                Song(artist: Artist(name: "Dave Wincent"), title: "Red Eye (Original Mix)"),
                Song(artist: Artist(name: "E-Spectro"), title: "End Station (Original Mix)"),
                Song(artist: Artist(name: "Edna Ann"), title: "Phasma (Konstantin Yoodza Remix)"),
                Song(artist: Artist(name: "Ilija Djokovic"), title: "Delusion (Original Mix)"),
                Song(artist: Artist(name: "John Baptiste"), title: "Mycelium (Original Mix)"),
                Song(artist: Artist(name: "Lane 8"), title: "Fingerprint (Original Mix)"),
                Song(artist: Artist(name: "Mac Vaughn"), title: "Pink Is My Favorite Color (Alex Stein Remix)"),
                Song(artist: Artist(name: "Metodi Hristov, Gallya"), title: "Badmash (Original Mix)"),
                Song(artist: Artist(name: "Veerus, Maxie Devine"), title: "Nightmare (Original Mix)")
            ]
        )
    }
}

struct Song: Identifiable {
    let id = UUID()
    let artist: Artist
    let title: String
}

struct Artist {
    let name: String
}
