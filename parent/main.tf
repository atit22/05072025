module "RG" {
source = "../child/RG"
resource_group_name = "RG-Atit"
location="centralindia"
}

module "RG" {
source = "../child/RG"
resource_group_name = "RG-Atit2"
location="centralindia"
}