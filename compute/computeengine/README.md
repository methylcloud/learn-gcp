# Compute Engine

## Overview

### What is Compute Engine?
 - Google Compute Engine (GCE) is GCP Infrastructure as a Service (IaaS) service.
 - Virtualize hardware, network and system to run servers (CPU, RAM, Storage, Networking, Firewall, OS)

### What are GCE advantages compared to cloud providers?
 - provide the most performance for the value
 - Fastest VMs to boot
 - Attach local SSD to VMs
 - Bill VM usage by the minutes (with a 10 minutes minimum charge)
 - Fully owned global network so the traffic does not transit over the public internet

## Storage option
### Root disk
 - Store the OS
### Persistent disk
 - Logical disk attached over the network made of several physical disks
 - Not directly attached to one VM, so easy to move between instances
 - Performance linear to storage (More IOPS for each GB)
 - No need for RAID, partitioning
 - By default HDD, or can be SSD
### Local SSD
 - Attached directly to the VM but disk can't be reattached and is lost with instance termination
 - Better performance but less reliable
 - Cannot be a boot device
 - Best used for temporary use for high-perf
 - 375GB size

## Images
 - Read-only copy of a disk used to deploy instances
 - Better taken when the OS is powered down
 - Image family allow grouping of image versions

### What are image deprecation state?
   - Active can be used
   - Deprecated display a deprecation message
   - Obsolete cannot be used for new deployment
   - Deleted cannot be used

### How to share images?
 - Possible to share image across projects
 - Require IAM role Compute Engine Image User in target project

### How to export image to Cloud Storage?
 - Linux images can be exported in a tar.gz file
 - Does not require project permission

## Snapshots
### What are snapshots?
 - Ready-only copy of a disk for backup purpose
 - Only usable within the same project
 - Incremental copy meaning they only save data changed since last snapshot

### How snapshot storage works?
 - Full copy for the first snapshot
 - Incremental copy of data changed since snapshot 1
 - Incremental copy of data changed since snapshot 2

### What happen if an intermediate snapshot is deleted?
 - Compute Engine copies the data to its parent snapshot
 - Process transparent to users

### What are best practices for snapshots?
 - Stop running application on the instance during snapshots
 - In Windows, enable Volume Shadow Copy Service (VSS)
 - In Linux, use ext4 file system
 - In Linux, use fstrim to clean up the disk and decrease snapshot size
 - Perform one snapshot at a time per disk
 - Schedule snapshots when the application is least utilized

## Startup scripts
### What is a startup script?
 - Automate configuration at instance provisioning
 - Can run any language supported by the OS (Bash, Python)

### How do you run a startup script?
 - Paste script content in the Startup Script field in the console
 - Store the script in a Cloud Storage bucket and define the path in Metadata

### What is a shutdown script?
 - Perform graceful shutdown actions (Good for preemptible instances)
 - The script has only 30 seconds to run before GCE power down the VM

### What is a Metadata server?
 - GCE service to provide instance information (metadata) in a key:value pair
 - Provide system-generated value (OS, IP, VM configuration)
 - Can provide user-generated value for configuration management

# --- PREVIOUS NOTES ---

## VM Power down
Stopping an instance send an ACPI signal to the OS to gracefully shut down. If the instance does not respond, GCE perform a hard stop (power down) the VM after 2 minutes which could induce file corruption.

## VM creation
 - Cloud Launcher (Marketplace) is a way to quickly and easily deploy pre-packaged solutions (LAMP, Redis, Third party).
 - Once a VM is created, the instance cannot be moved in another zone. The only workaround would be to create a snapshot and use it to deploy a new instance in another zone.

## Machine type
Instances can be deployed in different hardware configuration using a machine type. They come with predefined machine type (1 vCPU 3.75 GB, 2 vCPU 7.5 GB) which can be customized with: number of cores, memory, GPUs.

## Boot disk
Instances store the Operating System in a boot disk. GCE offers a variety of OS (Linux, Windows) and versions to be chosen from. Linux Debian 9 is provided as default with a standard 10GB hard drive. The size of the disk varies depending of the OS (32 to 50GB minimum size for Windows). The boot disk can also be set with an application image (SQL Server, etc…) which may incur extra hourly costs for the license.

## Service account
GCE attaches a default service account to the instance. This can be changed to a custom IAM service account to provide the VM specific permissions to other GCP services.

Options
 - Labels are used as tags to track resources for reporting and billing.
 - Preemptible instances costs less but are terminated after 24 hours.

All the configuration put in the GCE New Instance wizard can be exported as a REST (JSON) or CLI command. This makes it easier to prepare programmatic logic or scripts.


Connecting to a Windows Server requires to install the Chrome RDP Client extension, and set an username and random password in the console.

The console provides information about VM performance in the Monitoring tab. Possibilities to edit the VM:
 - Serial port for troubleshooting.
 - Machine type (CPU and RAM) when the instance is powered down.
 - Attach a disk
 - Change a disk

Properties that cannot be changed after instance creation
 - Zone
 - Preemptibility

## Disks
Creating a new disk
 - The higher the size of a disk is, and the higher is the IOPS.
 - It is possible to create either a blank disk, snapshot or based on an image

Resize a disk
 - Require extending the partitions in the OS.

## Snapshots
Snapshots are used to create a point in time backup of a disk to restore at a later time. Snapshot only stores data actually used on the disk by the OS and files, and not the maximum capacity of the disk. Snapshots are incremental to avoid storing the same data between snapshots. So new snapshots stores less data and are faster to create. It is possible to create an instance from a snapshot in a different zone.

It is possible to create an image from a powered down instance. Images can be used between projects.

## Preemptible VMs
Preemptible VMs are low-cost VMs used for short lived jobs than can be interrupted (batch processing). They are cheaper (up to 80%) than regular ones.

## Instance Groups
Instance groups are a way to deploy a fleet of VM with a similar configuration to accomplish the same job and access them through an endpoint. Managed instance group provide:
 - Auto-scaling
 - Load balancing
 - Auto-healing by recreating a failed instance

Instances Groups require the creation of an instance template. Deleting the instance group deletes the instances.
