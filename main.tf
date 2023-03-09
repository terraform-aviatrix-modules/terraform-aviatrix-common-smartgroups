resource "aviatrix_smart_group" "rfc1918" {
  count = var.group_rfc1918 ? 1 : 0
  name  = var.name_rfc1918
  selector {
    match_expressions {
      cidr = "10.0.0.0/8"
    }
    match_expressions {
      cidr = "192.168.0.0/16"
    }
    match_expressions {
      cidr = "172.16.0.0/12"
    }
  }
}

resource "aviatrix_smart_group" "any" {
  count = var.group_any ? 1 : 0
  name  = var.name_any
  selector {
    match_expressions {
      cidr = "0.0.0.0/0"
    }
  }
}

resource "aviatrix_smart_group" "internet" {
  count = var.group_internet ? 1 : 0
  name  = var.name_internet
  selector {
    match_expressions {
      cidr = "0.0.0.0/5"
    }
    match_expressions {
      cidr = "8.0.0.0/7"
    }
    match_expressions {
      cidr = "11.0.0.0/8"
    }
    match_expressions {
      cidr = "12.0.0.0/6"
    }
    match_expressions {
      cidr = "16.0.0.0/4"
    }
    match_expressions {
      cidr = "32.0.0.0/3"
    }
    match_expressions {
      cidr = "64.0.0.0/2"
    }
    match_expressions {
      cidr = "128.0.0.0/3"
    }
    match_expressions {
      cidr = "160.0.0.0/5"
    }
    match_expressions {
      cidr = "168.0.0.0/6"
    }
    match_expressions {
      cidr = "172.0.0.0/12"
    }
    match_expressions {
      cidr = "172.32.0.0/11"
    }
    match_expressions {
      cidr = "172.64.0.0/10"
    }
    match_expressions {
      cidr = "172.128.0.0/9"
    }
    match_expressions {
      cidr = "173.0.0.0/8"
    }
    match_expressions {
      cidr = "174.0.0.0/7"
    }
    match_expressions {
      cidr = "176.0.0.0/4"
    }
    match_expressions {
      cidr = "192.0.0.0/9"
    }
    match_expressions {
      cidr = "192.128.0.0/11"
    }
    match_expressions {
      cidr = "192.160.0.0/13"
    }
    match_expressions {
      cidr = "192.169.0.0/16"
    }
    match_expressions {
      cidr = "192.170.0.0/15"
    }
    match_expressions {
      cidr = "192.172.0.0/14"
    }
    match_expressions {
      cidr = "192.176.0.0/12"
    }
    match_expressions {
      cidr = "192.192.0.0/10"
    }
    match_expressions {
      cidr = "193.0.0.0/8"
    }
    match_expressions {
      cidr = "194.0.0.0/7"
    }
    match_expressions {
      cidr = "196.0.0.0/6"
    }
    match_expressions {
      cidr = "200.0.0.0/5"
    }
    match_expressions {
      cidr = "208.0.0.0/4"
    }
  }
}
