using CSV
using Plots; pgfplots()
using DataFrames

df = DataFrame(x = 1:10, y1 = 1:10, y2 = (1:10).^2)
plot(df.x, df.y1)
plot!(df.x, df.y2)

savefig("tikz/example_figure.tex")
CSV.write("data/data.csv", df)