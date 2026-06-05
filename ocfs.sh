dwell_get='
echo "[ ssh.well File-sharing ]"
echo "connecting to $cdw_session_user@$cdw_session_host:$cdw_session_port via ssh"
echo "retrieving $dwfs_src"
ldwell_gen_idopts
$cdw_xcp -i $cdw_session_id -OCrp -P "$cdw_session_port" $cdw_session_jmp $cdw_session_args "${cdw_session_user}@${cdw_session_host}:$rdwfs_prefix$dwfs_src" "$dwfs_prefix$dwfs_dst"'
alias dwell_get="$dwell_get"

dwell_send='
echo "[ ssh.well file transfer ]"
echo "connecting to $cdw_session_user@$cdw_session_host:$cdw_session_port via ssh"
echo "sending $dwfs_src"
ldwell_gen_idopts
$cdw_xcp -i $cdw_session_id -OCrp -P "$cdw_session_port" $cdw_session_jmp $cdw_session_args "$dwfs_prefix$dwfs_src" ${cdw_session_user}@${cdw_session_host}:"$rdwfs_prefix$dwfs_dst"
echo "saved to $dwfs_dst"'
alias dwell_send="$dwell_send"

sdwsrc='
echo Press Ctrl-D to end interactive input
dwfs_src="`cat -`"'
alias sdwsrc="$sdwsrc"

sdwdst='
echo Press Ctrl-D to end interactive input
dwfs_dst="`cat -`"'
alias sdwdst="$sdwdst"
