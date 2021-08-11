variable state_bucket_name {
  type    = string
  # A random bucket name by default
  default = "miguel-terraform-states"
}

variable state_lock_table_name {
  type    = string
  default = "tf-serverless-jenkins-lock"
}