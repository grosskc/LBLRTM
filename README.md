# Notes

Forked from [AER's LBLRTM git repository](https://github.com/AER-RC/LBLRTM). See [RTWeb](http://rtweb.aer.com) for more details.

```bash
git clone --recursive https://github.com/grosskc/LBLRTM.git
docker build --tag rs/lblrtm:latest -f Dockerfile ./
```

To run the LBLRTM executable from the command line in a folder with the appropriate `TAPE3` and `TAPE5` files, perform:

  * linux / macOS

      ```bash
      docker run --rm --volume "`pwd`:/data" -it rs/lblrtm lblrtm
      ```
  * Windows

      ```bash
      docker run --rm --volume ${PWD}:/data -it rs/lblrtm lblrtm
      ```
