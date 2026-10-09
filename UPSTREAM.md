# Upstream

| | |
| --- | --- |
| Project | XBOW validation benchmarks |
| Repository | https://github.com/xbow-engineering/validation-benchmarks |
| Benchmark | `benchmarks/XBEN-034-24` (Melodic Mayhem, level 1) |
| Version | main (the repository has no releases) |
| Commit | a16cb1ba0701b20d63913846536fc7b0672082af |
| Licence | Apache-2.0 (with a NOTICE file) |

| Here | validation-benchmarks path |
| --- | --- |
| `build/web/app/` | [`benchmarks/XBEN-034-24`](https://github.com/xbow-engineering/validation-benchmarks/tree/a16cb1ba0701b20d63913846536fc7b0672082af/benchmarks/XBEN-034-24) |

The vendored folder is that commit's benchmark folder, unchanged (canary strings included), without its Git history.

The flag is fixed: upstream's Makefile builds every benchmark with `FLAG{<sha256 of the benchmark name>}` (here, of
`XBEN-034-24`) and passes it as the build argument `FLAG`. The spec passes no build arguments, so
[`build/web/Dockerfile`](build/web/Dockerfile), the benchmark's own Dockerfile with its sources copied from
`app/`, gives `FLAG` that value as its default. Its header lists every difference from upstream's.

To update, replace the vendored folder with a newer validation-benchmarks commit, then change this file.
