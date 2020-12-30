output "id" {
  value = var.enabled ? pagerduty_escalation_policy.this[0].id : ""
}
