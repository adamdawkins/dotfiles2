function vsql () {
  local query="$*"
  psql -d victory_development -c "$query"
}

function vicpr () {
 prlist | grep $1
}
