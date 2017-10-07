# itn-converter
> ITN Converter, better known as ITNConv, is both a converter route supporting many formats, and a route planner simple and efficient.
> - http://www.benichou-software.com/

Unfortunately ITNConv is not and will not run under [Linux](http://www.benichou-software.com/index.php?option=com_content&view=article&id=21%3Aexiste-t-il-une-version-mac-ou-linux&catid=13%3Aitn-converter&Itemid=15&lang=en).

While I needed this tool and had no Windows PC around, I tried running it in [Docker and Wine](https://hub.docker.com/r/toaomatis/itn-converter/). It worked flawlessly!

So I decided to make an image out of it, so everyone can enjoy ITNConv under Linux.

## Image

This image can be found on the [Docker Hub](https://hub.docker.com/r/toaomatis/itn-converter/).

### Running

Pull and run the image
```
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD:/home/xclient/files toaomatis/itn-converter:latest
```

### Building

Clone this repository
```
git clone https://github.com/toaomatis/itn-converter.git
cd itn-converter.git
```
Build the image
```
docker build -t itn-converter:latest .
```
Run the image
```
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD/files:/home/xclient/files itn-converter:latest
```
