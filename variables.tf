# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  type = object({
    Owner = string
    Purpose = string
  })
  default = {
    Owner = "greg.janco@mezmo.com"
    Purpose = "engtest"
  }
}