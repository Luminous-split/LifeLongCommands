# Import or Invoke or Load PowerUp.ps1

## Enumerate Local User and Groups
```
Get-LocalUser | ft or fl name, enabled, lastlogon
Get-LocalGroup | ft or fl name, Description
net accounts
net user administrator
Get-NetIpConfiguration | fl interfacealias,interfaceindex, ipv4address
Get-DnsClientServerAddress -AddressFamily ipv4
```
## Enumerate Domain
```
Get-Domain
Get-Domain domain.local
Get-DomainSID
Get-DomainPolicy
(Get-DomainPolicy).systemaccess

```

## Enumerate DomainUsers
```
Get-DomainUser
Get-DomainUser | select samaccountusername, objectsid
Get-DomainUser -identity student -properties cn, useraccountcontrol

```


## Enumerate DomainComputers
```
Get-NetComputer
Get-DomainComputer
Get-DomainComputer  | select name, operatingsystemversion
```

## Enumerate DomainGroups
```
Get-NetGroup
Get-NetGroupMember | select membername
```

## Enumerate DomainShares
```
Get-Domainshare 
Get-DomainShare -computername prod.security.local -verbose
Get-DomainShare -computername prod.security.local -verbose -checkshareaccess
Get-Netshare (on localhost)
```

## Enumerate DomainGPOs and OUs
```
Get-NetGPO | select displayname
Get-NetOU | select name, brnyr
```

## Enumerate Domain Trusts and Forest Trusts
```
Get-NetDomainTrust 
Get-NetForest
Get-NetForestTrust
Get-NetForest -forest forestname

Get-NetForestDomain

Get-DomainTrustMapping
```

## Enumerate ACLs
```
Get-DomainObjectACL -samaccountname 'users' -resolveGUIDs
Get-DomainObjectACL -Identity 'Eliz_guizman' -resolveGUIDs
Find-InterestingDomainACL -resolveGUIDs
Get-ObjectACL -samacountname name -resolveGUIDs | ? { $_.ActiveDirectoryRights -like 'genericall'}

```


## Enumerate AS-REP roastable accounts
```
Get-NetUser -PreauthNotRequired | select samaccountname
```

## Enumerate Keberoastable accounts
```
Get-NetUser -SPN | select samaccountname, serviceprincipalname

```

