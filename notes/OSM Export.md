 # OSM Export 

The query below was run through the [Overpass Turbo website][1] to export the cycle network in the [[Area of Interest]].

```
/*
This shows the cycleway and cycleroute network.
*/

[out:json];

(
  // get cycle route relations
  relation[route=bicycle](-31.992841127551777,116.09489731354228,-31.952684323275744,116.15877755109821);
  // get cycleways
  way[highway=cycleway](-31.992841127551777,116.09489731354228,-31.935119256087205,116.15877755109821);
  way[highway=path][bicycle=designated](-31.992841127551777,116.09489731354228,-31.935119256087205,116.15877755109821);
);

out body;
>;
out skel qt;
```


[1]: http://overpass-turbo.eu