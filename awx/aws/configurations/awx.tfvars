# Below code is used to set backend only
s3_bucket                       =	    "acirrustech-iaac"
s3_folder_region                =	    "us-east-1"

# Change to any region to work, in my case default region is us-east-1
region1_vpc_id		    	    =	    "vpc-1471ad6e"

# Change to second region to work, in my case oregon
region2_vpc_id		    	    =	    "vpc-67dd1f1f"

# Change to second region to work, in my case ireland
region3_vpc_id		    	    =	    "vpc-908caaf6"

zone_id			                =	    "Z32OHGRMBVZ9LR" 
domain			                =	    "acirrustech.com"

management_region               =       "eu-west-2"
management_region_vpc_id        =       "vpc-ca45d3a2"



region1 			            = 	    "us-east-1"
region2 			            = 	    "us-west-2"
region3 			            = 	    "eu-west-1"







# Please do not change below
environment                     =   	"tools"
s3_folder_project               =   	"tower"
s3_folder_type                  =   	"tools"
s3_tfstate_file                 =   	"tower.tfstate"
instance_type		            =   	"t2.medium"
user		    	            =	    "centos"
key_name			            =	    "ansible"
ssh_key_location		        =	    "~/.ssh/id_rsa"
