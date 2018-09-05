# xPurgeKerberosTickets
PowerShell DSC resources to purge kerberos tickets during a configuration

The **xPurgeKerberosTickets** module contains the **xPurgeKerberosTickets** resource, purging the Kerberos ticket cache for either the current user or the computer.

## Branches

### master

This is the branch containing the latest release - no contributions should be made
directly to this branch.

### dev

This is the development branch to which contributions should be proposed by contributors
as pull requests. This development branch will periodically be merged to the master
branch, and be released to [PowerShell Gallery](https://www.powershellgallery.com/).

## Resources

* **xPurgeKerberosTickets** purges all tickets from the Kerberos ticket cache.

### xPurgeKerberosTickets

* **Key**: Unique key to identify the resource. This parameter is not used for anything else.
* **Target**: Indicates whether the Kerberos tickets for the user or the computer account should be purged.

## Versions

### Unreleased

### 0.1.0

* Initial release with the following resources
  * **xPurgeKerberosTickets**
