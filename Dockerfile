from almalinux:latest
run mkdir -p /home/user/testdocker
workdir /home/user/testdocker
copy . /home/user/testdocker
run chmod +x /home/user/testdocker/script.sh
cmd ["/home/user/testdocker/script.sh"]
