##############################################################################
# IBM Cloud Provider
# > This block needs to be here to use in schematics
##############################################################################

provider ibm {
  ibmcloud_api_key      = "${var.ibmcloud_api_key}"
  region                = "${var.ibm_region}"
}

##############################################################################



