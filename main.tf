resource "pagerduty_escalation_policy" "this" {
  count     = var.enabled ? 1 : 0
  name      = var.name
  num_loops = var.repeat_loops

  rule {
    escalation_delay_in_minutes = var.escalation_delay_in_minutes

    dynamic "target" {
      for_each = var.escalation_policy_users_targets
      content {
        type = "user"
        id   = target.value
      }
    }

    dynamic "target" {
      for_each = var.escalation_policy_schedule_targets
      content {
        type = "schedule"
        id   = target.value
      }
    }
  }
}
