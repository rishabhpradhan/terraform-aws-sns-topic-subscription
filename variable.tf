variable "topic_arn" {
  description = "The ARN of the topic the subscription belongs to"
  type        = string
  default     = null
}

variable "protocol" {
  description = "The protocol being used"
  type        = string
  default     = "sqs"
}

variable "endpoint" {
  description = "The full endpoint to send data to (SQS ARN, HTTP(S) URL, Application ARN, SMS number, etc.)"
  type        = string
  default     = null
}

variable "endpoint_auto_confirms" {
  description = "(Optional) Boolean indicating whether the end point is capable of auto confirming subscription e.g., PagerDuty (default is false)"
  type        = bool
  default     = false
}

variable "confirmation_timeout_in_minutes" {
  description = "(Optional) Integer indicating number of minutes to wait in retying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols (default is 1 minute)."
  type        = number
  default     = 1
}

variable "raw_message_delivery" {
  description = "(Optional) Boolean indicating whether or not to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property)"
  type        = bool
  default     = false
}

variable "filter_policy" {
  description = "(Optional) JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the SNS docs for more details"
  type        = string
  default     = null
}

variable "delivery_policy" {
  description = "(Optional) JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the SNS docs for more details."
  type        = string
  default     = null
}


