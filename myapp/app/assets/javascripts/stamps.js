
function makePiechart(){
  var chart = nv.models.pieChart()
    .x(function(d){return d.label})
    .y(function(d){return d.value})
    .showLabels(true);
  return chart;
}

function setPieChartAttributes(chart,str,data){
  d3.select(str)
    .datum(data)
    .transition()
    .duration(350)
    .call(chart);
  return chart;
}

function makeDiscreteBarChart(){
  var chart = nv.models.discreteBarChart()
    .x(function(d){return d.label})
    .y(function(d){return d.value})
    .staggerLabels(true)
    .valueFormat(d3.format(',0d'))
    .showValues(true)
    .duration(250);
  chart.yAxis.tickFormat(d3.format(',0d'));
  return chart;
}

function setDiscreteBarChartAttributes(chart,str,data){
  d3.select(str)
    .datum(data)
    .transition()
    .duration(350)
    .call(chart);
  return chart
}

function makeMultiBarHorizontalChart(){
  var chart = nv.models.multiBarHorizontalChart()
    .x(function(d){return d.label})
    .y(function(d){return d.value})
    .margin({top: 30, right: 20, bottom: 50, left: 120})
    .valueFormat(d3.format(',0d'))
    .showValues(true)
    .tooltips(true)
    .duration(350)
    .stacked(false)
    .showControls(false);
  chart.yAxis.tickFormat(d3.format(',0d'));
  return chart;
}

function setMultiBarHorizontalChartAttributes(chart,str,data){
  d3.select(str)
    .datum(data)
    .call(chart);
  return chart;
}

