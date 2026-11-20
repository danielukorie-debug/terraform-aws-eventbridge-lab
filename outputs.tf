output "event_bus_name" {
  description = "Custom EventBridge event bus name."
  value       = aws_cloudwatch_event_bus.lab.name
}

output "event_bus_arn" {
  description = "Custom EventBridge event bus ARN after deployment."
  value       = aws_cloudwatch_event_bus.lab.arn
}

output "rule_name" {
  description = "EventBridge rule name."
  value       = aws_cloudwatch_event_rule.order_created.name
}

output "rule_arn" {
  description = "EventBridge rule ARN after deployment."
  value       = aws_cloudwatch_event_rule.order_created.arn
}
