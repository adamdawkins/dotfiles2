function vsql () {
  local query="$*"
  psql -d victory_development -c "$query"
}
