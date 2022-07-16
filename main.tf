locals {
  cluster = {
    hosts = [
      {
        name : "host0"
        vms = [
          {
            name : "host0-vm0"
          },
          {
            name : "host0-vm1"
          }
        ]
      },
      {
        name : "host1"
        vms = [
          {
            name : "host1-vm0"
          }
        ]
      }
    ]
  }
}

output "vm_name" {
  value = local.cluster.hosts[0].vms.*.name
}