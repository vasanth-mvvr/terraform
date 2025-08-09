resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = [ "sg-0aaab2bdfa4e9f45a" ]
    instance_type = each.key 

    tags = merge(
        var.common,
    {
      
      Name = each.key
      Name = each.key
    }
    )
}