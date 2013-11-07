#________________________________________
#
#

#
# 
#

function add_repos () {

    case $1 in

	CentOS,5.8)

	    rpm -ivh http://mirrors.rit.edu/fedora/epel/5/i386/epel-release-5-4.noarch.rpm
	    ;;

	*)
	    echo '???'

    esac

}

#
# 
#

function bootstrap () {

    #
    #
    #

    case `get_distro_name_version` in

	CentOS,5.8)
	    bootstrap_centos_58
	    ;;

	*)
	    echo '???'

    esac

}

#
# 
#

function bootstrap_centos_58 () {

    add_repos

}

#
#
#

function get_distro_name_version () {

    #
    #
    #

    distro_name=
    distro_version=

    #
    #
    #

    if test -f /etc/lsb-release; then

	source /etc/lsb-release
	distro_name=`echo $DISTRIB_ID`
	distro_version=`echo $DISTRIB_RELEASE`

    elif test -f /etc/redhat-release; then

	distro_name=`cat /etc/redhat-release | cut -d' ' -f1`
	distro_version=`cat /etc/redhat-release | cut -d' ' -f3`

    fi

    echo "${distro_name},${distro_version}"

}
