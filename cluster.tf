
##############################################################################
# Create Cluster
##############################################################################

resource ibm_container_cluster classic_cluster {

    name              = "${var.cluster_name}"
    datacenter        = "${element(var.zones, 0)}"
    machine_type      = "${var.machine_type}"
    kube_version      = "${var.kube_version}"
    hardware          = "${var.hardware}"
    public_vlan_id    = "${element(var.public_vlan_ids, 0) }"
    private_vlan_id   = "${element(var.private_vlan_ids, 0)}"
    default_pool_size = "${var.default_pool_size}"

}

#############################################################################




