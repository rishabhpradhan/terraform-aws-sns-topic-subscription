# terraform-aws-sns-topic-subscription
Terraform module for AWS SNS Topic Subscription

[Reference Link](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription)


##Usage
```
    module "terraform-aws-sns-topic-subscription" {
        source = "git::https://github.com/rishabhpradhan/terraform-aws-sns-topic-subscription.git"
        topic = module.terraform-aws-sns-topic.sns_topic_arn
        protocol = "sqs"
        endpoint = module.terraform-aws-sqs-queue.sqs_queue_arn
    }
 ```
