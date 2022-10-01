# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Artist.destroy_all
Song.destroy_all
Download.destroy_all

artists = Artist.create([{name: "Arty"}, {name: "Jay-Z"}, {name: "Nero"}])

songs = Song.create([{title: "One", length: "2:15", filesize: 2.7, artist: artists[0]},
             {title: "Two", length: "2:00", filesize: 2.3, artist: artists[0]},
             {title: "Three", length: "2:45", filesize: 3.0, artist: artists[0]},
             {title: "Four", length: "2:36", filesize: 2.9, artist: artists[1]},
             {title: "Five", length: "3:00", filesize: 3.2, artist: artists[1]},
             {title: "Six", length: "2:23", filesize: 2.4, artist: artists[1]},
             {title: "Seven", length: "2:36", filesize: 2.9, artist: artists[2]},
             {title: "Eight", length: "3:00", filesize: 3.2, artist: artists[2]},
             {title: "Nine", length: "2:23", filesize: 2.4, artist: artists[2]}])

downloads = Download.create([{song: songs[0]},{song: songs[0]}, {song: songs[0]}, {song: songs[0]},
                 {song: songs[1]},{song: songs[1]},
                 {song: songs[2]},{song: songs[2]}, {song: songs[2]}, {song: songs[2]}, {song: songs[2]},
                 {song: songs[3]},
                 {song: songs[4]},{song: songs[4]}, {song: songs[4]},
                 {song: songs[5]},{song: songs[5]}, {song: songs[5]}, {song: songs[5]},
                 {song: songs[6]},{song: songs[6]}, {song: songs[6]},
                 {song: songs[7]}, {song: songs[7]},{song: songs[7]}, {song: songs[7]},
                 {song: songs[7]},
                 {song: songs[8]},{song: songs[8]}])
