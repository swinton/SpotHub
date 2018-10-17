workflow "Make playlist" {
  on = "push"
  resolves = [
    "Release Playlist",
  ]
}

action "Default Branch Filter" {
  uses = "actions/bin/filter@9dceb5d"
  args = "branch master"
}

action "Release Playlist" {
  needs = "Default Branch Filter"
  uses = "./.github/actions/spotify-playlist"
  secrets = ["SPOTIFY_AUTH", "SPOTIFY_REFRESH_TOKEN"]
  env = {
    playlist_id = "5lNXObovv3WL1Ioyag2FuG"
  }
}
