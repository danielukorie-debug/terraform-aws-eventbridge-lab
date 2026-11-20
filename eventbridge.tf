resource "aws_cloudwatch_event_bus" "lab" {
  name = "terraform-eventbridge-lab"

  tags = {
    Project     = "terraform-aws-eventbridge-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}

resource "aws_cloudwatch_event_rule" "order_created" {
  name           = "terraform-order-created-rule"
  description    = "Matches OrderCreated events from the lab application"
  event_bus_name = aws_cloudwatch_event_bus.lab.name
  state          = "ENABLED"

  event_pattern = jsonencode({
    source = [
      "lab.orders"
    ]

    detail-type = [
      "OrderCreated"
    ]
  })

  tags = {
    Project     = "terraform-aws-eventbridge-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
