#!/bin/bash
exec varnishd -j unix,user=varnishd -F -f /etc/varnish/default.vcl -s malloc,${VARNISH_MEMORY} -a 0.0.0.0:${VARNISH_PORT} -p http_req_hdr_len=300000 -p idle_send_timeout=800s -p between_bytes_timeout=800s -p first_byte_timeout=800s -p http_resp_hdr_len=300000 ${VARNISH_DAEMON_OPTS}
