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

```x


## Enumerate DomainComputers
```
Get-NetComputer
Get-DomainComputer
Get-DomainComputer  | select name, operatingsystemversion
```

## Enumerate DomainGroups
```
Get-NetGroup
```

## Enumerate DomainShares

## Enumerate DomainGPOs and OUs

## Enumerate Domain Trusts and Forest Trusts

## Enumerate ACLs

## Enumerate AS-REP roastable accounts

## Enumerate Keberoastable accounts

