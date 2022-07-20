terraform {
  backend "remote" {
    organization = "nvteh"
    workspaces {
      name = "obstack"
    }
  }
}
