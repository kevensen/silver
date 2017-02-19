# OpenShift Silver Images
This project provides a simple mechanism to update all the image streams in your OpenShift Container Platform project.

## Usage
Create a "silver" project in OpenShift.
```terminal
oc create -f silver
```
Clone the repository.
```terminal
git clone https://github.com/kevensen/silver.git
```
Enter the project directory.
```terminal
cd silver
```
Generate the template.
```terminal
bash create-silver-template.sh
```
Grant all users the ability to use the silver images
```terminal
oc policy add-role-to-group view -n silver system:authenticated
```

*NOTE:* Pay attentention to the database images.  The last USER directive may need to be changed in the Dockerfiles.

Add to the project and wait.  Rebuilding all the image streams does take a bit.
