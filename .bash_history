for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc  && history -a
sudo fdisk /dev/sde
sudo fdisk /dev/sdd
sudo wipefs -a /dev/sde1
sudo wipefs -a /dev/sde2
sudo wipefs -a /dev/sdd1
sudo pvcreate /dev/sde1 /dev/sde2 /dev/sdd1
sudo vgcreate vg_datos /dev/sde1 /dev/sde2
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 400M vg_datos -n lv_docker
sudo lvcreate -L 1.49G vg_datos -n lv_workareas
sudo lvcreate -L 508M vg_temp -n lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_temp-lv_swap
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mkdir /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo swapon /dev/mapper/vg_temp-lv_swap
echo "/dev/mapper/vg_datos-lv_docker/ /var/lib/docker/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_datos-lv_workareas/ /work/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_temp-lv_swap/ none swap sw 0 0" | sudo tee -a /etc/fstab
cd
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd docker
ls
nano index.html 
nano Dockerfile
sudo systemctl restart docker
sudo systemctl status docker
sudo docker build -t web1-rojasperez .
docker images
sudo usermod -aG docker vagrant
id
docker images
docker run -d -p 8080:80 --name web1-container web1-rojasperez
ifconfig
sudo apt install net-tools
ifconfig
docker stop web1-container
ls
nano run.sh
docker login -u joser10
cat run.sh 
docker tag web1-tu-apellido joser10/web1-rojasperez
docker tag web1-rojasperez joser10/web1-rojasperez
docker push joser10/web1-rojasperez
cd ..
ls
cd ..
ls
cd ..
ls
cd RTA_Examen_20241118
ls
nano Punto_A.sh
ls
nano Punto_B.sh
cd ,,
cd ..
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd bash_script/
ls
nano Lista_Usuarios.txt
cd ..
ls
cd ..
ls
cd ..
ls
cd RTA_Examen_20241118/
ls
chmod +x *
sudo ./Punto_B.sh vagrant /home/vagrant/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
nano Punto_B.sh
cd ..
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd bash_script/
ls
cat Lista_Usuarios.txt
cd /work
ls
cd
ls
cd /usr/local/bin
sudo touch rojasperezAltaUser-Groups.sh
nano rojasperezAltaUser-Groups.sh
sudo nano rojasperezAltaUser-Groups.sh
cd
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ansible/
ls
nano playbook.yml
cd roles/
ls
cd 2do_parcial/
ls
cd tasks/
ls
cd ..
mkdir templates
pwd
l
cd templates/
l
ls
nano Datos_Alumno.txt
nano datos_alumno.txt
nano datos_equipo.txt
cd ..
cd tasks
ls
nano main.yml
cd ..
ls
cd. .
cd ..
ls
cd ..
ls
sudo apt update
sudo apt install ansible -y
ls
cd 202406
ls
cd ansible/
ls
ansible-playbook playbook.yml
cd
ls
cd UTN-FRA_SO_Examenes/
ls
cd ..
ls
ls -la
cd RTA_Examen_20241118/
git init
rm -r .git/
cd ..
git init
ls
git add RTA_Examen_20241118/
git status
git commit -m "ADD: Carpeta RTA_Examen_20241118"
git config --global user.email "joserojas061804@gmail.com"
git config --global user.name "jdrojas00"
git commit -m "ADD: Carpeta RTA_Examen_20241118"
git push origin main
git push -u origin main
git push --set-upstream origin main --force
git branch
git push -u origin master
git remote -v
git remote add origin https://github.com/jdrojas00/UTNFRA_SO_2do_Parcial_RojasPerez.git
git push -u origin master
ls
cd UTN-FRA_SO_Examenes/
ls
mv 202406 ../
cd ..
ls
git add 202406/
git commit -m "ADD: Carpeta 202406"
git push -u origin master
ls
cd RTA_Examen_20241118/
ls
nano Punto_C.sh
cd
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ..
ls
mv 202406 UTN-FRA_SO_Examenes/
cd UTN-FRA_SO_Examenes/
cd 202406
ls
cd docker
ls
pwd
cd ..
ls
cd ..
ls
cd RTA_Examen_20241118/
ls
nano Punto_C.sh
cd ..
cd UTN-FRA_SO_Examenes/
ls
cd 202410
ls
cd 1er2c_Parcial_2da_Parte_defensa/
ls
cat Genera_Ejercicios_Defensa.sh
cd
ls
cd
ls
cd RTA_Examen_20241118/
ls
cat Punto_C.sh
docker images
ls
cat Punto_C.sh 
cd
cd UTN-FRA_SO_Examenes/
ls
cd 202406
l;s
ls
cd bash_script/
pwd
ls
cd ..
ls
cd RTA_Examen_20241118/
l
sls -la
ls -la
cat Punto_C.sh
cd ..
ls
cd U
cd UTN-FRA_SO_Examenes/
ls
cd 202406
ls
cd ansible/
ls
cd roles
ls
cd 2do_parcial/
ls
cd ..
ls
cd. .
ls
cd ..
ls
cd ..
cd UTN-FRA_SO_Examenes/202406
ls
cd bash_script/
pwd
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd RTA_Examen_20241118/
ls
cat Punto_C.sh
cd ..
ls
git add .bash_history
git commit -m "ADD: bash_history"
git push -u origin master
git status
cp .bash_history foo/
