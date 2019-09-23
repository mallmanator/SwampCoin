Send your wallet that will become a masternode either 1k (light), 3k (medium) or 5k (full) SWAMP.  

Wait for 15 confirmations

open terminal or command line on your linux server

open firewall by entering command: sudo ufw allow 31110

if you have a router you will have to forward port 31110 to your linux server

1. enter command: masternode genkey
    save the response to a text file somewhere
2. enter command: masternode outputs
   remove the quotes and the colon from the result and save the response to a text file somewhere.  It will be something like this before removing the extra stuff
   "Th617hyRHN8kjjkhkjhkjhsdkjfrh676TYGUI": "0"

   and look like this after

   Sh617hyRHN8kjjkhkjhkjhsdkjfrh676TYGUI 0

a long string and number at the end.  the number will be a 1 or 0. 

Now you are going to update 2 .conf files which are in the data directory your wallet is using.  For me it is ~/.swamp

The first file you will update is named swamp.conf with any editor you like. I use nano. For me to open the file in nano I enter: sudo nano ~/.swamp/swamp.conf

add the following substituting in the info you gathered above

listen=1
server=1
daemon=1
rpcuser=<any username you want without brackets>
rpcpassword=<any password you want without brackets>
rpcallowip=127.0.0.1
masternode=1
masternodeprivkey=<enter the long string you got from step 1 without the brackets>
externalip=<enter the public ip of your linux server here without brackets>:31110

save your file.  To save in nano press control and x at the same time, press y to confirm, press enter save

next we will edit the .conf file named masternode.conf

For me to open the file in nano I enter: sudo nano ~/.swamp/masternode.conf

add the following substituting in the info we gathered above. 

mn <your public ip without brackets>:31110 <the result of #2 above without the brackets>

it will end up looking something like this
mn 67.166.248.227:31110 7Wowe2ZWhjRdh1FXxi5UqBqSvGNkx3NsYKY4NLnhStZEJYmMyqg 7422b6e19b55ae41cb153b9be83d50721c666fd78a365763a7d35d2840967d54 1

save the masternode.conf file.  If using nano press control and x at the same time, press y to confirm, press enter to save

When you restart your wallet you muat wait until its fully in sync and then use command: sudo <path to swamp-cli>/swamp-cli startmasternode alias false mn
"mn" in the command is the name you gave your node

You can check status of your masternode by using command: sudo <path to swamp-cli>/swamp-cli masternode status

If you did everything right you will see "Successfully Started" in the message given

