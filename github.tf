terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

#Configure the GitHub Provider
provider "github" {
    token ="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"
}
