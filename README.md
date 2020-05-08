# Notes

Forked from [AER's LBLRTM git repository](https://github.com/AER-RC/LBLRTM). See [RTWeb](http://rtweb.aer.com) for more details.

```bash
docker build --tag rs/lblrtm:latest -f Dockerfile ./
docker run --rm --volume "`pwd`:/data" -it rs/lblrtm
```
