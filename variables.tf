variable "name" {
  type        = string
  description = "Name of the Repository"
  default     = ""
}

variable "description" {
  type        = string
  description = "Description of the Repository"
  default     = ""
}

variable "homepage_url" {
  type        = string
  description = "URL of a page describing the Repository"
  default     = ""
}

variable "private" {
  type        = bool
  description = "Toggle to create a Private Repository"
  default     = true
}

variable "has_issues" {
  type        = bool
  description = "Toggle to enable GitHub Issues for the Repository"
  default     = true
}

variable "has_projects" {
  type        = bool
  description = "Toggle to enable GitHub Projects for the Repository"
  default     = true
}

variable "has_wiki" {
  description = "Toggle to enable GitHub Wiki for the Repository"
  default     = true
}

variable "allow_merge_commit" {
  type        = bool
  description = "Toggle to enable Merge Commits for the Repository"
  default     = true
}

variable "allow_squash_merge" {
  type        = bool
  description = "Toggle to enable Squash Merges for the Repository"
  default     = true
}

variable "allow_rebase_merge" {
  type        = bool
  description = "Toggle to enable Rebase Merges for the Repository"
  default     = true
}

variable "has_downloads" {
  type        = bool
  description = "Toggle to enable (deprecated) GitHub Downloads for the Repository"
  default     = false
}

variable "auto_init" {
  type        = bool
  description = "Toggle to create an initial commit in the Repository"
  default     = false
}

variable "gitignore_template" {
  type        = string
  description = "Template to use for initial `.gitignore` file for the Repository"
  default     = ""
}

variable "license_template" {
  type        = string
  description = "Identifier to use for initial `LICENSE` file for the Repository"
  default     = ""
}

variable "default_branch" {
  type        = string
  description = "Name of the Default Branch of the Repository"
  default     = "master"
}

variable "archived" {
  type        = bool
  description = "Toggle to archive the Repository (see notes in `README.md`)"
  default     = false
}

variable "topics" {
  type        = list(string)
  description = "List of Topics of the Repository"
  default     = []
}

variable "template" {
  type        = map(string)
  description = "Template Repository to use when creating the Repository"
  default     = {}
}

variable "branch_protections" {
  // TODO: consider switching this to a more strict validation
  type        = list(any)
  description = "List of Branch Protection Objects"
  default     = []
}

// TODO: add support for `github_repository_webhook`

variable "deploy_keys" {
  type        = list(object({ title = string, key = string, read_only = bool }))
  description = "List of Deploy Key Objects"
  default     = []
}

variable "repository_collaborators" {
  // `repository_collaborators.permission` is optional and defaults to `push`
  type        = list(object({ username = string }))
  description = "List of Collaborator Objects"
  default     = []
}

variable "team_repository_teams" {
  // `team_repository_teams.permission` is optional and defaults to `push`
  type        = list(object({ team_id = string }))
  description = "List of Team Repository Team Objects"
  default     = []
}

variable "issue_labels" {
  // `issue_labels.description` is optional and defaults to `""`
  type        = list(object({ name = string, color = string }))
  description = "List of Issue Label Objects"
  default     = []
}

// TODO: add support for `github_repository_project`
