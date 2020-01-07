var width = 500,
    height = 250,
    margin = {left: 50, top: 30, right: 20, bottom: 20},
    g_width = width - margin.left - margin.right,
    g_hegith = height - margin.top - margin.bottom;

var data = [1,3,5,7,9,10,4,5,3]

var svg = d3.select('#container')
  .append('svg')
  .attr('width', width)
  .attr('height', height)

var g = svg.append('g')
  .attr('transform', 'translate(' + margin.left + ',' + margin.top +')')

var scale_x = d3.scale.linear()
  .domain([0, data.length - 1])
  .range([0, g_width])
var scale_y = d3.scale.linear()
  .domain([0, d3.max(data)])
  .range([g_hegith, 0])

var area_generate = d3.svg.area()
  .x(function(d, i){return scale_x(i)})
  .y0(g_hegith)
  .y1(function(d){return scale_y(d)})
  .interpolate('cardinal')

g.append('path')
.attr('d', area_generate(data))
.style('fill', 'steelblue')

var axis_x = d3.svg.axis().scale(scale_x)
var axis_y = d3.svg.axis().scale(scale_y).orient('left')

g.append('g').call(axis_x).attr('transform', 'translate(0 ,' + g_hegith + ')')
g.append('g').call(axis_y)
  .append('text')
  .text('Price($)')
  .attr('transform', 'rotate(-90)')
  .attr('text-anchor', 'end')
  .attr('dy', '1em')
