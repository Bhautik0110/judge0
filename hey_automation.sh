#!/bin/bash
set -ex

date

echo "+--------------+-------+
| Replicas     | 1     |
+--------------+-------+
| CPU limit    | 125m  |
+--------------+-------+
| Memory limit | 125Mi |
+--------------+-------+"

Hey () {
    hey -n 1 -c 1 -m POST -H "Content-Type: application/json" -D "./body.json" http://localhost:31234/submissions?wait=true
}

echo "
░██████╗░░█████╗░██╗░░░░░░█████╗░███╗░░██╗░██████╗░
██╔════╝░██╔══██╗██║░░░░░██╔══██╗████╗░██║██╔════╝░
██║░░██╗░██║░░██║██║░░░░░███████║██╔██╗██║██║░░██╗░
██║░░╚██╗██║░░██║██║░░░░░██╔══██║██║╚████║██║░░╚██╗
╚██████╔╝╚█████╔╝███████╗██║░░██║██║░╚███║╚██████╔╝
░╚═════╝░░╚════╝░╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝░╚═════╝░"

cat << EOF > ./body.json
{"source_code":"cHVibGljIGNsYXNzIE1haW4gewogICAgcHVibGljIHN0YXRpYyB2b2lkIG1haW4oU3RyaW5nW10gYXJncykgewogICAgICAgIFN5c3RlbS5vdXQucHJpbnRsbigiaGVsbG8sIHdvcmxkIik7CiAgICB9Cn0K","language_id":63,"stdin":"","compiler_options":"","command_line_arguments":"","redirect_stderr_to_stdout":true}
EOF

Hey

echo "
░░░░░██╗░█████╗░██╗░░░██╗░█████╗░
░░░░░██║██╔══██╗██║░░░██║██╔══██╗
░░░░░██║███████║╚██╗░██╔╝███████║
██╗░░██║██╔══██║░╚████╔╝░██╔══██║
╚█████╔╝██║░░██║░░╚██╔╝░░██║░░██║
░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝"

cat << EOF > ./body.json
{"source_code":"cHVibGljIGNsYXNzIE1haW4gewogICAgcHVibGljIHN0YXRpYyB2b2lkIG1haW4oU3RyaW5nW10gYXJncykgewogICAgICAgIFN5c3RlbS5vdXQucHJpbnRsbigiaGVsbG8sIHdvcmxkIik7CiAgICB9Cn0K","language_id":62,"stdin":"","compiler_options":"","command_line_arguments":"","redirect_stderr_to_stdout":true}
EOF

Hey

echo "
░░░░░██╗░█████╗░██╗░░░██╗░█████╗░░██████╗░█████╗░██████╗░██╗██████╗░████████╗
░░░░░██║██╔══██╗██║░░░██║██╔══██╗██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝
░░░░░██║███████║╚██╗░██╔╝███████║╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░
██╗░░██║██╔══██║░╚████╔╝░██╔══██║░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░
╚█████╔╝██║░░██║░░╚██╔╝░░██║░░██║██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░
░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░"

cat << EOF > ./body.json
{"source_code":"Y29uc29sZS5sb2coImhlbGxvLCB3b3JsZCIpOw==","language_id":63,"stdin":"","compiler_options":"","command_line_arguments":"","redirect_stderr_to_stdout":true}
EOF

Hey

echo "
██████╗░██╗░░░██╗████████╗██╗░░██╗░█████╗░███╗░░██╗
██╔══██╗╚██╗░██╔╝╚══██╔══╝██║░░██║██╔══██╗████╗░██║
██████╔╝░╚████╔╝░░░░██║░░░███████║██║░░██║██╔██╗██║
██╔═══╝░░░╚██╔╝░░░░░██║░░░██╔══██║██║░░██║██║╚████║
██║░░░░░░░░██║░░░░░░██║░░░██║░░██║╚█████╔╝██║░╚███║
╚═╝░░░░░░░░╚═╝░░░░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░╚═╝░░╚══╝"

cat << EOF > ./body.json
{"source_code":"cHJpbnQoImhlbGxvLCB3b3JsZCIp","language_id":71,"stdin":"","compiler_options":"","command_line_arguments":"","redirect_stderr_to_stdout":true}
EOF

Hey

date
