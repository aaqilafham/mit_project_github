terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token ="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"
}
resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

  template {
    owner                = "github"
    repository           = "terraform-template-module"
    include_all_branches = true
  }
}
