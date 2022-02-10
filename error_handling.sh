lib_name='trap'
lib_version=20121026

stderr_log="/tmp/archhardening_stderr.log"


set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   ## set -u : exit the script if you try to use an uninitialised variable
set -o errexit   ## set -e : exit the script if any statement returns a non-true return value

exec 2>"$stderr_log"

function print_error() {
 echo `tail -n 1 "$stderr_log"`	
}

