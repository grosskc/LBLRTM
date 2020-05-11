# Notes

Forked from [AER's LBLRTM git repository](https://github.com/AER-RC/LBLRTM), with modifications to enable single-precision calculations and my own `compute_OD` Python function. See [RTWeb](http://rtweb.aer.com) for more details.

To build the Docker environment, complete the one-time set-up:

```bash
git clone --recursive https://github.com/grosskc/LBLRTM.git
make rs-lblrtm
```

Or, load the Docker image directly, making it available to your system:

```bash
  # make it available to docker
  docker load --input /path/to/ownCloud/RS-EOIR-Group/Projects/CAM2ELOT/3-Code/RadTxfr/rs-lblrtm-latest.tar.gz
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
