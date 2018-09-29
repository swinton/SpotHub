workflow "Make playlist" {
  on = "push"
  resolves = [
    "make-playlist",
  ]
}

action "make-playlist" {
  uses = "./.github/actions/spotify-playlist"
  env = {
    playlist_id = "5lNXObovv3WL1Ioyag2FuG"
  }
  secrets = ["SPOTIFY_AUTH", "SPOTIFY_REFRESH_TOKEN"]
}
