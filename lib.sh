ldwell_print_alias='echo "`eval "\`echo "$ldwell_print" | sed '\''s,^,echo ,'\'' | sed '\''s,&&,\\\&\\\&,g'\'' | sed '\''s,\([^\\]\)&,\1\\&,g'\'' | sed '\''s,;,\\\;,g'\''| sed '\''s,>,\\\>,g'\'' | sed '\''s,<,\\\<,g'\''| sed '\''s,|,\\\|,g'\''\`"`"'
alias ldwell_print_alias="$ldwell_print_alias"

ldwell_config_list='cat "$ldwell_path/$ldwell_config_lfile"'
alias ldwell_config_list="$ldwell_config_list"

ldwell_config_list_is='read ldwell_config_lfile'
alias ldwell_config_list_is="$ldwell_config_list_is"

ldwell_current_config='ldwell_config_list | grep '\"' *$ldwell_config_file$'\"' | sed '\''s,^[^ ]* *,,'\'''
alias ldwell_current_config="$ldwell_current_config"

ldwell_load_config='. "$ldwell_path/$ldwell_config_file"'
alias ldwell_load_config="$ldwell_load_config"

ldwell_set_config='
ldwell_config_file="`ldwell_config_list | grep "^$ldwell_config_alias " | sed '\''s,^[^ ]* *,,'\''`"'
#alias ldwell_update_config="ldwell_config_file="\""$(eval $ldwell_update_config)"\"""
alias ldwell_set_config="$ldwell_set_config"

ldwell_config_is='
read ldwell_config_alias
ldwell_set_config'
alias ldwell_config_is="$ldwell_config_is"

ldwell_call_config='
ldwell_set_config
ldwell_load_config
ldwell_gen_idopts
echo
echo path - "$ldwell_path"
echo host - "ssh://$cdw_session_host:$cdw_session_port"
echo  id  - "$cdw_session_idlist"
echo
echo host path prefix
echo "`echo "$dwfs_prefix" | sed '\''s,^$,(empty),'\''`"
echo remote path prefix
echo "`echo "$rdwfs_prefix" | sed '\''s,^$,(empty),'\''`"
echo
echo auth \> dwell_auth
echo conn \> dwell_con
echo exec \> dwell_cone
echo '\'' new'\'' \> dwell_env
echo inst \> dwell_new_key
echo
'
alias ldwell_call_config="$ldwell_call_config"

ldwell_create_fwdrule='echo "$cdw_session_fwdrules" | sed '\"'s,\([^:]\)::\([^:]\),\1:$cdw_session_selfname:\2,'\"' | tr \\n " "'
alias ldwell_create_fwdrule="$ldwell_create_fwdrule"

ldwell_flatten_idlist='
echo "$cdw_session_idlist" | tr \\n \  | sed '\''s,^ *,,'\'' | sed '\''s, *$,,'\''
'
alias ldwell_flatten_idlist="$ldwell_flatten_idlist"

ldwell_gen_idopts='
cdw_session_id="`echo "\`ldwell_flatten_idlist\`" | sed '\''s, , -i ,g'\'' | sed '\''s,^ -i ,,g'\'' | sed '\''s,\( -i\)*$,,'\''`"'
alias ldwell_gen_idopts="eval $ldwell_gen_idopts"
