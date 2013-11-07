#________________________________________
#
#

#
#
#

default['foundation']['packages'] = \
  case node['platform']

  when 'centos'
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
  
