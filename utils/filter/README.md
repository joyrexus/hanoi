`filter.jq' is a simple [jq](http://stedolan.github.io/jq/) script for extracting hand position and velocity data from a leap gesture sample captured with [handy](https://github.com/joyrexus/handy).

    jq --from-file filter.jq in.json > out.json

We're using it to convert gesture samples prior to [rendering](https://github.com/joyrexus/leap).
