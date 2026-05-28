#!/bin/sh

dwell_cinfo='
ldwell_gen_idopts
echo "[ ssh.well session manager ]"
echo "connecting to $cdw_session_user@$cdw_session_host:$cdw_session_port via ssh"
echo "Using ID Key: $cdw_session_id"
echo "forwarding rules:"
echo "$ldwell_fwds"'
alias dwell_cinfo="$dwell_cinfo"

dwell_con='dwell_cinfo
$cdw_xsh -YC -p "$cdw_session_port" $cdw_session_jmp $ldwell_fwds -i $cdw_session_id $cdw_session_args $cdw_session_user@"$cdw_session_host"'
alias dwell_con="$dwell_con"

dwell_tnl='
ldwell_gen_idopts
$cdw_xsh -YCTNnf -p "$cdw_session_port" $cdw_session_jmp $ldwell_fwds -i $cdw_session_id $cdw_session_args $cdw_session_user@"$cdw_session_host"'
alias dwell_tnl="$dwell_tnl"

dwell_srv='
ldwell_gen_idopts
echo "[ ssh.well server wrapper ]"
echo "starting server instance"
echo "with config file $ldwell_config_file"
echo "hostkey $cdw_session_id"
echo "listening on port $cdw_session_port"
$cdw_xsv -h "$cdw_session_id" -p "$cdw_session_port" $cdw_session_args_srv'
alias dwell_srv="$dwell_srv"

dwell_cone='
ldwell_gen_idopts
$cdw_xsh -YC -p "$cdw_session_port" $cdw_session_jmp $ldwell_fwds -i $cdw_session_id $cdw_session_args $cdw_session_user@"$cdw_session_host" -t "$rdw_cmd"'
alias dwell_cone="$dwell_cone"

dwell_set_cmd='read rdw_cmd'
alias dwell_set_cmd="$dwell_set_cmd"

dwell_auth='
ldwell_gen_idopts
rdw_keylist="`echo "\`ldwell_flatten_idlist\`" | sed '\''s,\( \|$\),.pub&,g'\''`"
rdw_key="`cat $rdw_keylist`"
rdw_kpath="`echo "$rdwcm_authfile" | sed "s,/[^/]*$,,"`"
rdw_cmd="mkdir -p $rdw_kpath && echo '\''$rdw_key'\'' >> $rdwcm_authfile && chmod 0600 $rdwcm_authfile"
dwell_cone'
alias dwell_auth="$dwell_auth"

dwell_env='
mkdir "$ldwell_path"/dotssh_internal
dwell_new_key'
alias dwell_env="$dwell_env"
