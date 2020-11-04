# Below code is used to set backend only
s3_bucket                       =	    "ansible-tower-taniusha"
s3_folder_region                =	    "us-east-1"

# Change to any region to work, in my case default region is us-east-1
region1_vpc_id		    	    =	    "vpc-0a03cd78b513f8932"

# Change to second region to work, in my case oregon
region2_vpc_id		    	    =	    "vpc-0e23b9d5ec9623c7e"

# Change to second region to work, in my case ireland
region3_vpc_id		    	    =	    "vpc-0a4097cbd49b717dc"

zone_id			                =	    "Z05411523PJ66X4F07A4W" 
domain			                =	    "tatianamoraru.com"

management_region               =       "eu-west-2"
management_region_vpc_id        =       "vpc-0d1c65f797c0d7a8f"



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
