var data = [2,3,4,2,4,5],
    bar_width = 50,
    bar_padding = 10,
    svg_width = (bar_width + bar_padding) * data.length,
    svg_height = 500;

var scale = d3.scale.linear()
  .domain([0, d3.max(data)])
  .range([0, svg_width])

var svg = d3.select('#container')
  .append('svg')
  .attr({
    'width': svg_width,
    'height': svg_height
  })

var bar = svg.selectAll('g')
  .data(data)
  .enter()
  .append('g')
  .attr('transform', function (d, i) {
    return 'translate(' + i * (bar_width + bar_padding) + ',0)'
  })


bar.append('rect')
  .attr({
    'y': function (d) {
      return scale(d) + 1;
    },
    'width': bar_width,
    'height': function (d) {return svg_height - scale(d)}
  })
  .style('fill', 'steelblue')

bar.append('text')
  .text(function (d) {return d})
  .attr({
    'y': function (d) {return scale(d)},
    'x': (bar_width + bar_padding) / 2,
    'text-anchor': 'end'
  })
