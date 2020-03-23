module "project-example" {
  source  = "operatehappy/repository/github"
  version = "2.0.0"

  name    = "oh-demo-project-example"
  private = false // NOTE: private repositories require a paid subscription

  projects = [
    {
      name = "Internal Infrastructure"
      body = "Internal Infrastructure Project for Section 13"
    }
  ]
}