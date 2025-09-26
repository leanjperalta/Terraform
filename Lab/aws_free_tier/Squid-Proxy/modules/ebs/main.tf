resource "aws_ebs_volume" "data" {
    size              = var.ebs_volume_size
    availability_zone = var.availability_zone
    tags = {
        Name = "DataVolume"
    }
  
}

resource "aws_volume_attachment" "ebs-att" {
    device_name = "/dev/xvdf"
    volume_id   = aws_ebs_volume.data.id
    instance_id = var.instance_id
    force_detach = true
  
}