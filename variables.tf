variable "enabled" {
  type        = bool
  default     = true
  description = "Gives ability to enable or disable a module"
}

variable "name" {
  description = "Name of escalation policy. Make it meaningful"
}

variable "repeat_loops" {
  description = "The number of times the escalation policy will repeat after reaching the end of its escalation."
  default = 2
}

variable "type" {
  description = "Can be user, schedule, user_reference or schedule_reference"
  default     = "schedule"
}

variable "escalation_delay_in_minutes" {
  default = 15
}

variable "escalation_policy_users_targets" {
  default = []
}

variable "escalation_policy_schedule_targets" {
  default = []
}
