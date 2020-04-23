To copy the ssh public key from windows to linux:

```
type id_rsa.pub | ssh -o IdentitiesOnly=yes someone@192.168.1.1 "mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && chmod -R go= ~/.ssh && cat >> ~/.ssh/authorized_keys"
```
