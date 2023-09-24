variable "loop_ec2" {
  type        = map(any)
}

# variable "loop_s3" {
#   type        = map(any)
# }
variable "owner" {
  type        = list(string)
}
variable "purpose" {
  type        = list(string)
}
variable "environment" {
  type        = list(string)
}
variable "bucket" {
  type        = list(string)
}
variable "bucketname" {
  type        = list(string)
}