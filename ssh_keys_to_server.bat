@Echo Off
If "%1"=="" (
  Echo Need to specify the IP to configure
) Else (
  type "%userprofile%\.ssh\id_rsa.pub" | ssh root@%1 "cat >> .ssh/authorized_keys")
)
