clearfifo() {
  FIFO="/tmp/cmds"
  rm -fr $FIFO
}

readfifo() {
  clearfifo
  FIFO="/tmp/cmds"
  mkfifo $FIFO
  while ; do bash < $FIFO && echo "== OK ==" || echo "!! ERR !!"; done
}
