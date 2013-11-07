#________________________________________
#
#

#
#
#

node['foundation']['packages'].each do |package_name|

  package package_name do
    action :upgrade
  end

end
