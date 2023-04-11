# My ShellScripts Collection 

- [portfwd.sh](#portfwd)    

## Portfwd

Forword ports to external hosts using ncat.  

Example 

```  
$ ./portfwd.sh 

Enter IP Addess [127.0.0.1] :>
Enter Service port no. to Forword :> 8000
Enter External Port to Forword :> 9090
Ncat: Version 7.80 ( https://nmap.org/ncat )
Ncat: Listening on :::9090
Ncat: Listening on 0.0.0.0:9090
```   

Alias for the script 

```
alias portfwd='/home/vagrant/myscripts/portfwd.sh'
```
