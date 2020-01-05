https://certbot.eff.org/docs/using.html


```
Let's encrypt manual:

1)Generate certificate first manual command using option "1: Spin up a temporary webserver (standalone)"
sudo docker run -it --rm --name certbot -p 80:80 -p 443:443 -v "/etc/letsencrypt:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" certbot/certbot certonly -d test.com -d www.test.com -d subtest.test.com

Output:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Saving debug log to /var/log/letsencrypt/letsencrypt.log

How would you like to authenticate with the ACME CA?
-------------------------------------------------------------------------------
1: Spin up a temporary webserver (standalone)
2: Place files in webroot directory (webroot)
-------------------------------------------------------------------------------
Select the appropriate number [1-2] then [enter] (press 'c' to cancel): 1
Plugins selected: Authenticator standalone, Installer None
Enter email address (used for urgent renewal and security notices) (Enter 'c' to
cancel): test@gmail.com

-------------------------------------------------------------------------------
Please read the Terms of Service at
https://letsencrypt.org/documents/LE-SA-v1.2-November-15-2017.pdf. You must
agree in order to register with the ACME server at
https://acme-v01.api.letsencrypt.org/directory
-------------------------------------------------------------------------------
(A)gree/(C)ancel: A

-------------------------------------------------------------------------------
Would you be willing to share your email address with the Electronic Frontier
Foundation, a founding partner of the Let's Encrypt project and the non-profit
organization that develops Certbot? We'd like to send you email about EFF and
our work to encrypt the web, protect its users and defend digital rights.
-------------------------------------------------------------------------------
(Y)es/(N)o: N
Obtaining a new certificate
Performing the following challenges:
http-01 challenge for contiago.io
http-01 challenge for www.contiago.io
http-01 challenge for shop.contiago.io
Waiting for verification...
Cleaning up challenges

IMPORTANT NOTES:
 - Congratulations! Your certificate and chain have been saved at:
   /etc/letsencrypt/live/test.com/fullchain.pem
   Your key file has been saved at:
   /etc/letsencrypt/live/test.com/privkey.pem
   Your cert will expire on 2019-03-01. To obtain a new or tweaked
   version of this certificate in the future, simply run certbot
   again. To non-interactively renew *all* of your certificates, run
   "certbot renew"
 - Your account credentials have been saved in your Certbot
   configuration directory at /etc/letsencrypt. You should make a
   secure backup of this folder now. This configuration directory will
   also contain certificates and private keys obtained by Certbot so
   making regular backups of this folder is ideal.
 - If you like Certbot, please consider supporting our work by:

   Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
   Donating to EFF:                    https://eff.org/donate-le 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

2)Create temporary folder and copy all generated let's encrypt resources to it
mkdir tmpSSL
sudo cp -R /etc/letsencrypt/* tmpSSL/

3)Deploy new certbot configuration on the server

4)Copy certbot files to certbot container
sudo docker cp tmpSSL/. 6fdfc9792f35:/etc/letsencrypt/
```