#________________________________________
#
#

#
#
#

Chef::Log.info("[DEBUG] #{node['platform_family']})

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
  
