DB2PORT=50000

fail() {
    local -r mess="$1"
    echo "$mess - cannot continue"
    exit 4
}

createcat() {
  local -r CAT=$1
  local -r REM=$2
  local -r PORT=$3
  echo "Catalog $CAT at node $REM : $PORT"
  db2 uncatalog node $CAT  
  db2 catalog tcpip node $CAT remote $REM server $PORT
  [ $? -eq 0 ] || fail "Catalog node $CAT failed"
}

createdb() {
  local -r CAT=$1
  local -r DB=$2
  echo "Catalog database $DB at node $CAT"
  db2 uncatalog db $DB
  db2 catalog db $DB at node $CAT
  [ $? -eq 0 ] || fail "Catalog database $DB failed"
}

catdb() {
  local -r CAT=$1
  local -r REM=$2
  local -r PORT=$3
  local -r DB=$4
  createcat $CAT $REM $PORT
  createdb $CAT $DB
}

help() {

cat << EOF
 Catalogs node and database. 
 Imporant: uncatalogs existing node and database having the same name

 ./icat.sh /nodename/ /remote host/ /database/
   /node name/ - local node name
   /remove host/ - remote host name
   /database/ - database name

 Example:
  ./icat.sh DBREMOT thinkde SAMPLE

EOF
  exit 4

}

run() {
  [ $# -ne 3 ] && help
  catdb $1 $2 $DB2PORT $3
}
