# Operation

## Disaster Recovery

### How to handle backup?
 - Compute Engine snapshot while stopping application I/O (service stop, Microsoft VSS)
 - Cron job backing up database and copying file to persistent disk / Cloud Storage bucket
 - Object versioning in Cloud Storage bucket
 - Application Engine or large Compute Engine Instance Group should use rolling update

