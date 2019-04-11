# Compute Engine

## Instances

## Cannot connect to SSH
export PROB_INSTANCE='methyl-instance-lab-vpn-1'
gcloud compute instances describe $PROB_INSTANCE --format='get(networkInterfaces[0].accessConfigs[0].natIP)'

## Disks

### Create a disk with CLI
gcloud compute disk create methyl-disk-lab-cli --size 50 --type pd-standard --zone us-east4-a

### Partition disk in Linux
```bash
# attach a disk to the instance
gcloud compute instances attach-disk methyl-instance-lab-resizelinux --disk methyl-disk-lab-resizelinux

# Format disk in Linux
sudo lsblk
sudo mkfs.ext4 -m 0 -F -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/sdb
sudo mkdir -p /mnt/disks/disk2
sudo mount -o discard,defaults /dev/sdb /mnt/disks/disk2
sudo chmod a+w /mnt/disks
sudo lsblk
```
### Partition disk in Windows
diskmgmt
 - initialize disk
 - Create partition with empty space

### Resize boot disk and partition in Console
 1. Compute Engine > VM Instances
 2. Click on instance
 3. Under Boot Disk, click on disk methyl-instance-lab-resizelinux
 4. Click on Edit, change Size to 20, click on Save

### Resize boot disk and partition in CLI
```Bash
gcloud compute disks resize methyl-instance-lab-resizelinux --size 30 --zone us-east4-a
```

### Resize boot partition in Linux
```Bash
sudo lsblk
sudo growpart /dev/sda 1
sudo resize2fs /dev/sda1
```

## Images
### Create an image with the console
 1. Compute Engine > Images
 2. Create Image
    - Name: methyl-image-lab-linux-http
    - Family: linux-http
    - Description: Debian Linux with Apache2 web server
    - Encryption: methyl-key-lab-us-east4
    - Source: Disk
    - Source disk: methyl-instance-lab-imagehttp

### Create an image with CLI
```Bash
gloud compute images create methyl-image-lab-linux-http-v2 \
--source-disk methyl-instance-lab-imagehttp \
--source-disk-zone us-east4-a \
--family linux-http
```

### Get information on images in a family
```Bash
gcloud compute images describe-from-family linux-http
```

### Deprecate an image in a family
 1. Compute Engine > Images
 2. Select an older image, click on Deprecate
    - State: Deprecated
    - Replacement: methyl-image-lab-linux-http-v2

### Change image deprecation status with CLI
```Bash
gcloud compute images deprecate methyl-image-lab-linux-http --state=ACTIVE
```

### Delete image with CLI
```Bash
gcloud compute images delete methyl-image-lab-linux-http
```

## Snapshots
### Create a snapshot in the console
 1. Compute Engine > Snapshots
 2. Create snapshot
    - Name: methyl-snapshot-lab-snapshothttp-v1
    - Source disk: methyl-instance-lab-imagehttp
    - Location: Regional
    - Location: us-east4

### Create a snapshot with CLI
```Bash
gcloud compute disks snapshot methyl-instance-lab-imagehttp \
--snapshot-names methyl-snapshot-lab-snapshothttp-v3 \
--zone us-east4
```

### Restore a snapshot in the console
 1. Compute Engine > VM Instances
 2. Create an instance
    - Name: methyl-instance-lab-imagehttp-restored
    - Boot disk: Snapshots - methyl-snapshot-lab-snapshothttp-v3

### Restore a snapshot as an extra disk
```bash
gcloud compute disks create methyl-disk-lab-imagehttp-snapshotrestore \
--source-snapshot=methyl-snapshot-lab-snapshothttp-v2 \
--zone us-east4-a
```

## Startup script
### Create a startup script
```Bash
gsutil cp script-startup-http.sh gs://methyl-bucket-lab-http
```

### Deploy an instance with a startup script content
 1. Compute Engine > VM Instances
 2. Create an instance
    - Name: methyl-instance-lab-startuphttp-hardcoded
    - Firewall: Allow HTTP
    - Startup script: <Copy/Paste content of script-startup.sh>

### Deploy an instance with a startup script URL
 1. Compute Engine > VM Instances
 2. Create an instance
    - Name: methyl-instance-lab-startuphttp-url
    - Firewall: Allow HTTP
    - Metadata: startup-script-url:gs://methyl-bucket-lab-http/startup-script-http.sh

### Troubleshoot startup script
```Bash
# Rerun the startup script
sudo google_metadata_script_runner --script-type startup --debug

```
