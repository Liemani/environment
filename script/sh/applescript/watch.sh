if [[ $# -eq 0 ]]; then
  echo 'usage : watch <pid> <notification message>'
  return 1
fi



while [[ $? == 0 ]]; do
  sleep 1
  ps $1 >> /dev/null
done

shift

sh notification.sh "$*"
