# This is for Prod
### chown first beforce building the image
`chown -R www-data html`

### set environment variable in Cloud Run
`SQL=<sql ip address>`

ex:
`SQL=10.10.0.2`

### then use the command to build the image
`docker build -t IMAGE_NAME:TAG .`

* if using cloud sql, you should not just import reports.sql, because you can't `GRANT ALL ON *.* TO 'tibame'@'%';`

* you should use `grant all on tibame.* to 'tibame'@'%'` to give privilage to user tibame after create database `tibame`

* take a look at `reports.sql` to check the note
