#________________________________________
#
#

#
#
#

Chef::Log.info("[DEBUG] platform=-#{node['platform']}-")
Chef::Log.info("[DEBUG] platform_family=-#{node['platform_family']}-")

default['foundation']['packages'] = \
  case node['platform_family']

  when 'rhel'
    []

  when 'ubuntu'
    []

  else
    []

  end + %w{
  curl
  emacs
  git
  tmux
  wget
}
  
