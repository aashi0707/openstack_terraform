provider "openstack" {
  user_name   = "demo"
  tenant_name = "demo"
  password    = "password"
  auth_url    = "http://192.168.0.156:5000/v3.0"
  region      = "RegionOne"
}

resource "openstack_compute_instance_v2" "basic" {
  name            = "myos1"
  image_name      = "fedoralinux32"
  flavor_name     = "m1.small"
  
  network {
    name = "private"
  }
}




