
##############################################################################
# Create Cluster
##############################################################################

resource ibm_container_cluster_classic_cluster {

    name              = "${var.cluster_name}"
    resource_group_id = "5b0134601c214ccd90ab9221227c56e6"
    datacenter        = "${element(var.zones, 0)}"
    machine_type      = "${var.machine_type}"
    kube_version      = "${var.kube_version}"
    hardware          = "${var.hardware}"
    public_vlan_id    = "${var.private_only ? null : element(var.public_vlan_ids, 0) }"
    private_vlan_id   = "${element(var.private_vlan_ids, 0)}"
    default_pool_size = "${var.default_pool_size}"

}

