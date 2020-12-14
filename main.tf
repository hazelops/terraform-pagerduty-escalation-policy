resource "pagerduty_escalation_policy" "this" {
  count     = var.enabled ? 1 : 0
  name      = var.name
  num_loops = var.repeat_loops

  rule {
    escalation_delay_in_minutes = var.escalation_delay_in_minutes

    target {
      type = var.type
      id   = var.escalation_policy_target_id
    }
  }
}
