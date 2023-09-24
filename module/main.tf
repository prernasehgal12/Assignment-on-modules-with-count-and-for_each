module "ec2" {
  source = "../ec2"
  for_each = var.loop_ec2
  ami           = each.value.ami
  instance_type = each.value.instance_type
  subnet_id = each.value.subnet_id
  purpose = each.value.purpose
  owner = each.key
  name = each.value.name
  
}

module "s3" {
  source = "../s3"
  count = 2

  
  bucket = var.bucket[count.index]
  purpose = var.purpose[0]
  owner = var.owner[0]
  environment = var.environment[0]
  bucketname = var.bucketname[0]
}
# module "s3" {
#   source = "../s3"
#   for_each = var.loop_s3
#   bucket = each.value.bucket
#   owner = each.key
#   environment = each.value.environment
#   bucketname = each.value.bucketname
# }
