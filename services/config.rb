## This file was auto-generated by CloudCoreo CLI
## This file was automatically generated using the CloudCoreo CLI
##
## This config.rb file exists to create and maintain services not related to compute.
## for example, a VPC might be maintained using:
##
## coreo_aws_vpc_vpc "my-vpc" do
##   action :sustain
##   cidr "12.0.0.0/16"
##   internet_gateway true
## end
##


coreo_uni_util_notify "advise-redshift" do
  action :notify
  type 'email'
  allow_empty true
  send_on "always"
  payload '{}'
  payload_type "text"
  endpoint ({
      :to => 'joe@cloudcoreo.com', :subject => 'test alert'
  })
end
