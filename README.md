# terraform-aviatrix-common-smartgroups

### Description
This module allows you to easily create common smartgroups.


### Compatibility
Module version | Terraform version | Controller version | Terraform provider version
:--- | :--- | :--- | :---
v1.0.0 | >= 1.1.0 | >= 7.0 | ~> 3.0.0

### Usage Example
```
module "smartgroups" {
  source  = "terraform-aviatrix-modules/common-smartgroups/aviatrix"
  version = "1.0.0"
}
```

### Variables
There are no required variables. Default behavior is to create all smart groups contained in this module. If you want to exclude any, use the optional variables.

The following variables are optional:

key | default | value 
:---|:---|:---
group_any | false |  When set to true, it will create the any smart group
name_any | "any" |  Default name of the any smart group.
group_internet | true | When set to true, it will create the internet smart group (inverse RFC1918)
name_internet | "internet" |  Default name of the internet smart group.
group_rfc1918 | true | When set to true, it will create the RFC1918 smart group
name_rfc1918 | "rfc1918" |  Default name of the rfc1918 smart group.

### Outputs
This module will return the following outputs:

key | description
:---|:---
group_ids | Map of group ID's for the created smartgroups. Keys are based on the default smartgroup name.
