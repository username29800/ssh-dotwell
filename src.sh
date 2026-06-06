ldwell_loader='src.sh'

ldwell_path='.'
. "$ldwell_path"/lib.sh
. "$ldwell_path"/ocsn.sh
. "$ldwell_path"/occm.sh
. "$ldwell_path"/ocfs.sh

config_list='config_list'

default_config='test'

ldwell_config_lfile="$ldwell_path/$config_list"
ldwell_config_alias="$default_config"
ldwell_call_config
#ldwell_load_config
