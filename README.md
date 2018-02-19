# Docker installation
```bash
sudo apt-get update
sudo apt-get install curl
curl -sSL https://get.docker.com | sudo sh
sudo usermod -aG docker $USER
```


Verify that Docker CE or Docker EE is installed correctly by running the hello-world image.
```bash
sudo docker run hello-world
```

# clone project
```
git clone https://github.com/HTLife/png_to_klg-docker
cd png_to_klg-docker
PROJECT_ROOT=$PWD
```

# Download dataset

1. Download TUM rgbd_dataset_freiburg1_360 and extract files to PROJECT_ROOT/rgbd_dataset_freiburg1_360
2. Example associations.txt are already provided in PROJECT_ROOT/rgbd_dataset_freiburg1_360 

# Generate klg file
```

cd $PROJECT_ROOT
./run.sh

```
