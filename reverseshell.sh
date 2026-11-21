while true; do
  nc -lvnp 8000 2>>'/root/.zusy/nc.log' || nc -l -p 8000 2>>'/root/.zusy/nc.log' || nc -l 8000 2>>'/root/.zusy/nc.log'
  sleep 1
done
