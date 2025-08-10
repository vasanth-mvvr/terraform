resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = [ "sg-0aaab2bdfa4e9f45a" ]
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
            Environment = "${var.environment}"
        }
    )
}