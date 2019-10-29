# AWS Task 
# ALB ID

output "web_ecr_repository_url" {
  value       = aws_ecr_repository.web.repository_url
  description = "URL of ECR Repository for web Docker image"
}

output "cloudwatch_log_group_name" {
  value = aws_cloudwatch_log_group.main.name
}

output "load_balancer_arn" {
  value       = aws_lb.main.id
  description = "ARN of load balancer"
}

output "load_balancer_arn_suffix" {
  value       = aws_lb.main.id
  description = "ARN of load balancer"
}

output "load_balancer_dns_name" {
  value = aws_lb.main.dns_name
}

output "load_balancer_zone_id" {
  value = aws_lb.main.zone_id
}

output "load_balancer_listener_arn" {
  value = aws_lb_listener.front_end.arn
  # value       = var.alb_listener_default_action == "forward" ? aws_lb_listener.front_end_forward[0].arn : aws_lb_listener.front_end_redirect[0].arn
  description = "ARN of load balancer listener"
}

output "load_balancer_target_group_arn" {
  value       = aws_lb_target_group.app.arn
  description = "ARN of load balancer target group"
}

output "monitoring_sns_topic_arn" {
  value       = var.enable_monitoring ? module.notify-slack.this_slack_topic_arn : ""
  description = "ARN of SNS topic that Slack forwarder lambda is listening to (only set if enable_monitoring = true)"
}

output "task_iam_role_id" {
  value       = aws_iam_role.task.id
  description = "Id of IAM role that ECS task will assume"
}

output "task_security_group_id" {
  value       = aws_security_group.ecs_task.id
  description = "ID of Security Group for ECS Task"
}

output "lb_security_group_id" {
  value       = aws_security_group.lb.id
  description = "ID of Security Group for load balancer"
}
