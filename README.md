# Docker image for [Circos](https://circos.ca/)

TODO: Migrate to [CircosAPI](https://github.com/kylase/CircosAPI)

# Usage

Run an interactive session with the current working directory (assuming the working directory is your Circos project directory) mounted as `/workspace`

```shell
docker run --rm -v $(pwd):/workspace yuanchuan/circos:0.69.9 circos -conf path/to/circos.conf
```

Once you are in the shell, you can run `circos -conf path/to/circos.conf` to generate the image(s)