variable "pagerduty_token" {}

variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "name" {
  description = "Name of escalation policy. Make it meaningful"
}

variable "type" {
  description = "Can be user, schedule, user_reference or schedule_reference"
  default     = "schedule"
}

variable "escalation_delay_in_minutes" {
  default = 15
}

variable "escalation_policy_target_id" {}
