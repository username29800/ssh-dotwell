dwell_get='
echo "[ ssh.well File-sharing ]"
echo "connecting to $cdw_session_user@$cdw_session_host:$cdw_session_port via ssh"
echo "retrieving $dwfs_src"
ldwell_gen_idopts
$cdw_xcp -i $cdw_session_id -OCrp -P "$cdw_session_port" $cdw_session_jmp $cdw_session_args "${cdw_session_user}@${cdw_session_host}:$dwfs_src" "$dwfs_dst"'
alias dwell_get="$dwell_get"

dwell_send='
echo "[ ssh.well file transfer ]"
echo "connecting to $cdw_session_user@$cdw_session_host:$cdw_session_port via ssh"
echo "sending $dwfs_src"
ldwell_gen_idopts
$cdw_xcp -i $cdw_session_id -OCrp -P "$cdw_session_port" $cdw_session_jmp $cdw_session_args "$dwfs_src" ${cdw_session_user}@${cdw_session_host}:"$dwfs_dst"
echo "saved to $dwfs_dst"'
alias dwell_send="$dwell_send"

alias sdwsrc="dwfs_src="\""\`echo"
alias sdwdst="dwfs_dst="\""\`echo"
