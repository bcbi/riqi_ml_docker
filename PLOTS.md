# Viewing Plots Inside a Docker Container

| Table of Contents |
| ----------------- |
| [1. Plots With the `Plots.jl` metapackage](#1-plots-with-the-plotsjl-metapackage) |
| [1.1. `UnicodePlots.jl` backend](#11-unicodeplotsjl-backend) |
| [1.2. `GR.jl` backend](#12-grjl-backend) |

## 1. Plots With the `Plots.jl` metapackage

### 1.1 `UnicodePlots.jl` backend

```bash
docker run -it aluthge/riqi_ml /bin/bash
```

```julia
julia> import Plots

julia> import UnicodePlots

julia> Plots.unicodeplots()

julia> x = 0:0.0001:2pi

julia> y = sin.(x);

julia> Plots.plot(x, y)
```

You may see some warnings of the form:
```
Warning: Keyword argument fillcolor not supported with Plots.UnicodePlotsBackend().
```

You can safely ignore those warnings.

### 1.2 `GR.jl` backend

```bash
docker run -it -v /Users/MY_USERNAME/Desktop/my_folder:/mount/my_folder aluthge/riqi_ml /bin/bash
```

```julia
julia> import Plots

julia> import GR

julia> Plots.gr()

julia> x = 0:0.0001:2pi

julia> y = sin.(x);

julia> Plots.plot(x, y)

julia> Plots.savefig("/mount/myfolder/my_plot.svg")
```

The file `/mount/my_folder/my_plot.svg` inside the Docker container corresponds to the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer. So open the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer and you will see the plot.

```julia
julia> import Plots

julia> import GR

julia> Plots.gr()

julia> x = -1.6:0.0001:1.6

julia> y = x.^8 - 8x.^2;

julia> my_plot = Plots.plot(x, y)

julia> Plots.savefig(my_plot, "/mount/myfolder/my_plot.svg")
```

The file `/mount/my_folder/my_plot.svg` inside the Docker container corresponds to the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer. So open the file `/Users/MY_USERNAME/Desktop/my_folder/my_plot.svg` on your computer and you will see the plot.
