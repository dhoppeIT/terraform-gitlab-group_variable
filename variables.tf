variable "group" {
  type        = string
  description = "The name or id of the group"
}

variable "key" {
  type        = string
  description = "The name of the variable"
}

variable "value" {
  type        = string
  description = "The value of the variable"
}

variable "description" {
  type        = string
  default     = null
  description = "The description of the variable"
}

variable "environment_scope" {
  type        = string
  default     = "*"
  description = "The environment scope of the variable"
}

variable "masked" {
  type        = bool
  default     = false
  description = "If set to true, the value of the variable will be hidden in job logs"
}

variable "protected" {
  type        = bool
  default     = false
  description = "If set to true, the variable will be passed only to pipelines running on protected branches and tags"
}

variable "raw" {
  type        = bool
  default     = false
  description = "Whether the variable is treated as a raw string"
}

variable "variable_type" {
  type        = string
  default     = "env_var"
  description = "The type of a variable"

  validation {
    condition     = contains(["env_var", "file"], var.variable_type)
    error_message = "Valid values are env_var, file"
  }
}
