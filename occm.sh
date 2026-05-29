dwell_create_config='
echo ldwell_path='\\\''"$PWD"'\\\''
echo cdw_xsh='\\\''/usr/bin/ssh'\\\''
echo cdw_xcp='\\\''/usr/bin/scp'\\\''
echo cdw_srv='\\\''/usr/sbin/sshd'\\\''
echo cdw_session_selfname='\\\''localhost'\\\''
echo cdw_session_host='\\\''localhost'\\\''
echo cdw_session_port='\\\''22'\\\''
echo cdw_session_idlist='\\\'\''
key_default'\'\\\''
echo cdw_session_user='\\\''user'\\\''
echo cdw_session_jmp='\\\'''\\\''
echo cdw_session_fwdrules='\\\'\''
-R 6000::6000'\'\\\''
echo ldwell_fwds='\''"`eval ldwell_create_fwdrule`"'\''
echo
echo dwfs_prefix='\\\''./'\\\''
echo rdwfs_prefix='\\\''./'\\\''
echo
echo dwcm_newkey_name='\\\''key_default'\\\''
echo dwcm_keystore_path='\\\''keystore'\\\''
echo dwcm_keystore_backup='\\\''keystore_backup'\\\''
echo rdwcm_authfile='\\\''/home/user/.ssh/authorized_keys'\\\''
echo 
echo cdw_env_home='\\\''"$HOME"'\\\''
echo cdw_session_args='\''"-o UserKnownHostsFile=$ldwell_path/dotssh_internal/known_hosts"'\''
echo cdw_session_args_srv='\''"-o AuthorizedKeysFile=$ldwell_path/dotssh_internal/authorized_keys"'\''
echo cdw_session_idlist='\''"`echo "\`ldwell_flatten_idlist\`" | sed "s,\(^\| \),$ldwell_path/$dwcm_keystore_path/&,g"`"'\''
'
alias dwell_create_config="$dwell_create_config"

dwell_save_config='echo "`dwell_create_config`" >> "$ldwell_path/$ldwell_config_file"'
alias dwell_save_config="$dwell_save_config"

dwell_rm_config='rm -f "$ldwell_path/$ldwell_config_file"'
alias dwell_rm_config="$dwell_rm_config"

dwell_new_key='
mkdir -p "$ldwell_path/$dwcm_keystore_path"
mkdir -p "$ldwell_path/$dwcm_keystore_backup"
mv "$ldwell_path/$dwcm_keystore_path/$dwcm_newkey_name" "$ldwell_path/$dwcm_keystore_backup/$dwcm_newkey_name"
mv "$ldwell_path/$dwcm_keystore_path/$dwcm_newkey_name".pub "$ldwell_path/$dwcm_keystore_backup/$dwcm_newkey_name".pub
ssh-keygen -t ed25519 -N "" -f "$ldwell_path/$dwcm_keystore_path/$dwcm_newkey_name"
chmod 0700 "$ldwell_path/$dwcm_keystore_path"
chmod -R 0600 "$ldwell_path/$dwcm_keystore_path"/*'
alias dwell_new_key="$dwell_new_key"
