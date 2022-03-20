# mightyMixxxTapper
mightyMixxxTapper connects to streaming MP3 servers and downloads the tracks to your hard drive.
![alt text](https://github.com/terrorist-squad/mightyMixxxTapper/blob/master/screens/1.png "record")

## 1.) build mightyMixxxTapper
```
$ docker build -t mighty-mixxx-tapper:1.0 .
```

## 2.) run mightyMixxxTapper
```
$ docker run -it -p 8000:80 -v /Users/CharlieScene/NetBeansProjects/mixtapper/res:/var/www/html/res -v /Users/CharlieScene/NetBeansProjects/mixtapper/ripps:/tmp/ripps mixtapper:1.0
```
After that I can call my mightyMixxxTapper server with the IP of the server / diskstation and the assigned port 8000. Great!
