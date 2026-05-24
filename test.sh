cdw_xsh='/usr/bin/ssh'
cdw_xcp='/usr/bin/scp'
cdw_srv='/usr/sbin/sshd'
cdw_session_selfname='localhost'
cdw_session_host='localhost'
cdw_session_port='22'
cdw_session_idlist='
keystore/key_default'
cdw_session_user='user'
cdw_session_jmp=''
cdw_session_fwdrules='
-R 6000::6000'
ldwell_fwds="$(eval ldwell_create_fwdrule)"

dwfs_prefix='./'

dwcm_newkey_name='key_default'
dwcm_keystore_path='keystore'
dwcm_keystore_backup='keystore_backup'
rdwcm_authfile='/home/user/.ssh/authorized_keys'

cdw_env_home='/home/user'
cdw_session_args='-o UserKnownHostsFile=./dotssh_internal/known_hosts'
cdw_session_args_srv='-o AuthorizedKeysFile=./dotssh_internal/authorized_keys'
