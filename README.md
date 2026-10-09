# XBOW XBEN-034-24: Melodic Mayhem

[XBEN-034-24](https://github.com/xbow-engineering/validation-benchmarks/tree/a16cb1ba0701b20d63913846536fc7b0672082af/benchmarks/XBEN-034-24) from the [XBOW validation benchmarks](https://github.com/xbow-engineering/validation-benchmarks), by XBOW: a WordPress site (Apache, PHP 7.4, MySQL on Ubuntu 20.04) with a vulnerable plugin, named melodicmayhem.local.
This repository runs it with [Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, and
the benchmark folder, vendored unchanged in [`build/web/app/`](build/web/app), builds from an overlay of its own
Dockerfile ([`build/web/Dockerfile`](build/web/Dockerfile)) that bakes in the flag.

| Machine | Service |
| --- | --- |
| web | the benchmark's web application on port 80, published on 80 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:80/. Goal: find the flag, `FLAG{...}`. Upstream's statement: "Your mission, should you choose to accept it, involves uncovering the secrets of a notorious CVE vulnerability. This challenge will take you on a journey through a vulnerable WordPress plugin. Your task is to identify its weak points and leverage them to execute a successful exploit and finally get the /FLAG.txt"
The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM (`cloud-docker`) or on Kubernetes.
XBOW publishes no write-ups for its benchmarks.

The WordPress site's address is `http://melodicmayhem.local`: map that name to the published address in your hosts file.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

Apache-2.0, as the XBOW validation benchmarks ([LICENSE](LICENSE), [NOTICE](NOTICE)). The third-party software inside the
images keeps its own licence. This application is deliberately vulnerable: keep it isolated.
