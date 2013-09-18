<!DOCTYPE html>

<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Bar Charts</title>
  <!--[if lt IE 9]><script language="javascript" type="text/javascript" src="../excanvas.js"></script><![endif]-->
  
  <link rel="stylesheet" type="text/css" href="js/jquery.jqplot.css" />
  <link rel="stylesheet" type="text/css" href="examples.css" />
  
  <!-- BEGIN: load jquery -->
  <script language="javascript" type="text/javascript" src="js/jquery.js"></script>
  <!-- END: load jquery -->

  
  
  <!-- BEGIN: load jqplot -->
  <script language="javascript" type="text/javascript" src="js/jquery.jqplot.js"></script>
  <script language="javascript" type="text/javascript" src="js/plugins/jqplot.barRenderer.js"></script>
  <script language="javascript" type="text/javascript" src="js/plugins/jqplot.pieRenderer.js"></script>
  <script language="javascript" type="text/javascript" src="js/plugins/jqplot.categoryAxisRenderer.js"></script>
  <script language="javascript" type="text/javascript" src="js/plugins/jqplot.highlighter.js"></script>
  <script language="javascript" type="text/javascript" src="js/plugins/jqplot.pointLabels.js"></script>
  <!-- END: load jqplot -->

  <style type="text/css">
    .jqplot-target {
        margin-bottom: 2em;
    }
    
    pre {
        background: #D8F4DC;
        border: 1px solid rgb(200, 200, 200);
        padding-top: 1em;
        padding-left: 3em;
        padding-bottom: 1em;
        margin-top: 1em;
        margin-bottom: 4em;
        
    }
    
    p {
        margin: 2em 0;
    }
    
    .note {
        font-size: 0.8em;
    }
  </style>
  
  <script class="code" type="text/javascript">$(document).ready(function(){
        var s1 = [2, 6, 7, 10];
        var ticks = ['a', 'b', 'c', 'd'];
        
        plot1 = $.jqplot('chart1', [s1], {
            seriesDefaults:{
                renderer:$.jqplot.BarRenderer,
                pointLabels: { show: true }
            },
            axes: {
                xaxis: {
                    renderer: $.jqplot.CategoryAxisRenderer,
                    ticks: ticks
                }
            },
            highlighter: { show: false }
        });
    
        $('#chart1').bind('jqplotDataClick', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info1').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
            }
        );
    });</script>
    
  <script class="code" type="text/javascript">$(document).ready(function(){
        var s1 = [2, 6, 7, 10];
        var s2 = [7, 5, 3, 2];
        var ticks = ['a', 'b', 'c', 'd'];
        
        plot2 = $.jqplot('chart2', [s1, s2], {
            seriesDefaults: {
                renderer:$.jqplot.BarRenderer,
                pointLabels: { show: true }
            },
            axes: {
                xaxis: {
                    renderer: $.jqplot.CategoryAxisRenderer,
                    ticks: ticks
                }
            }
        });
    
        $('#chart2').bind('jqplotDataHighlight', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info2').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
            }
        );
            
        $('#chart2').bind('jqplotDataUnhighlight', 
            function (ev) {
                $('#info2').html('Nothing');
            }
        );
    });</script>
    
  <script class="code" type="text/javascript">$(document).ready(function(){
        plot2b = $.jqplot('chart2b', [[[2,1], [4,2], [6,3], [3,4]], [[5,1], [1,2], [3,3], [4,4]], [[4,1], [7,2], [1,3], [2,4]]], {
            seriesDefaults: {
                renderer:$.jqplot.BarRenderer,
                pointLabels: { show: true, location: 'e', edgeTolerance: -15 },
                shadowAngle: 135,
                rendererOptions: {
                    barDirection: 'horizontal'
                }
            },
            axes: {
                yaxis: {
                    renderer: $.jqplot.CategoryAxisRenderer
                }
            }
        });
    
        $('#chart2b').bind('jqplotDataHighlight', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info2b').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data+ ', pageX: '+ev.pageX+', pageY: '+ev.pageY);
            }
        );    
        $('#chart2b').bind('jqplotDataClick', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info2c').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data+ ', pageX: '+ev.pageX+', pageY: '+ev.pageY);
            }
        );
            
        $('#chart2b').bind('jqplotDataUnhighlight', 
            function (ev) {
                $('#info2b').html('Nothing');
            }
        );
    });</script>
    
  <script class="code" type="text/javascript">$(document).ready(function(){
        var s1 = [2, 6, 7, 10];
        var s2 = [7, 5, 3, 2];
        var s3 = [14, 9, 3, 8];
        plot3 = $.jqplot('chart3', [s1, s2, s3], {
            stackSeries: true,
            captureRightClick: true,
            seriesDefaults:{
                renderer:$.jqplot.BarRenderer,
                rendererOptions: {
                    highlightMouseDown: true    
                },
                pointLabels: {show: true}
            },
            legend: {
                show: true,
                location: 'e',
                placement: 'outside'
            }      
        });
    
        $('#chart3').bind('jqplotDataRightClick', 
            function (ev, seriesIndex, pointIndex, data) {
                $('#info3').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
            }
        ); 
    });</script>
    
  <script class="code" type="text/javascript">$(document).ready(function(){
        plot4 = $.jqplot('chart4', [[[2,1], [6,2], [7,3], [10,4]], [[7,1], [5,2],[3,3],[2,4]], [[14,1], [9,2], [9,3], [8,4]]], {
            stackSeries: true,
            captureRightClick: true,
            seriesDefaults:{
                renderer:$.jqplot.BarRenderer,
                shadowAngle: 135,
                rendererOptions: {
                    barDirection: 'horizontal',
                    highlightMouseDown: true    
                },
                pointLabels: {show: true, formatString: '%d'}
            },
            legend: {
                show: true,
                location: 'e',
                placement: 'outside'
            },
            axes: {
                yaxis: {
                    renderer: $.jqplot.CategoryAxisRenderer
                }
            }
        });
    });</script>
    
  <script class="code" type="text/javascript">$(document).ready(function(){
        plot5 = $.jqplot('chart5', [[[2,1], [null,2], [7,3], [10,4]]], {
            captureRightClick: true,
            seriesDefaults:{
                renderer:$.jqplot.BarRenderer,
                shadowAngle: 135,
                rendererOptions: {
                    barDirection: 'horizontal',
                    highlightMouseDown: true    
                },
                pointLabels: {show: true, formatString: '%d'}
            },
            legend: {
                show: true,
                location: 'e',
                placement: 'outside'
            },
            axes: {
                yaxis: {
                    renderer: $.jqplot.CategoryAxisRenderer
                }
            }
        });
    });</script>

  <script class="code" type="text/javascript">$(document).ready(function(){
        plot6 = $.jqplot('chart6', [[1,2,3,4]], {seriesDefaults:{renderer:$.jqplot.PieRenderer}});
    });</script> 

	<script class="code" type="text/javascript">$(document).ready(function(){
		var s1 = [2, -6, 7, -5];
		var ticks = ['a', 'b', 'c', 'd'];

		plot7 = $.jqplot('chart7', [s1], {
			seriesDefaults:{
				renderer:$.jqplot.BarRenderer,
				rendererOptions: { fillToZero: true },
					pointLabels: { show: true }
			},
			axes: {
                // yaxis: { autoscale: true },
				xaxis: {
					renderer: $.jqplot.CategoryAxisRenderer,
					ticks: ticks
				}
			}
		});
	});</script> 

  
    <script type="text/javascript">    
        $(document).ready(function(){
            $('script.code').each(function(index) {
                $('pre.code').eq(index).text($(this).html());
            });
            $('script.common').each(function(index) {
                $('pre.common').eq(index).html($(this).html());
            });
            $(document).unload(function() {$('*').unbind(); });
        });
    </script> 
    
  </head>
  <body>
<?php include "nav.inc"; ?>
    <p>To create bar plots, you have to include the "jqplot.barRenderer.js" file in your source.</p>

    <p>Below is a default bar plot.  Bars will highlight on mouseover.  Events are triggered when you mouseover a bar and also when you click on a bar.  Here We capture the 'jqplotDataClick' event and display the clicked series index, point index and data values. When series data is assigned as a 1-dimensional array as in this example, jqPlot automatically converts it into a 2-dimensional array for plotting.  So a series defined as [2, 6, 7, 10] will become [[1,2], [2,6], [3,7], [4,10]].<p>
    
    <div><span>You Clicked: </span><span id="info1">Nothing yet</span></div>
        
    <div id="chart1" style="margin-top:20px; margin-left:20px; width:300px; height:300px;"></div>
<pre class="code"></pre>

    <p>The plot target also fires a 'jqplotDataMouseOver' when the cursor is moused over a bar even if highlighting is turned off.  This event will fire continuously as the user mouses over the bar.  'jqplotDataHighlight' fires only once when the user first passes over the bar.  Additionally, a 'jqplotDataUnhighlight' event is fired when the user moves out of a bar (if highlighting is enabled).<p>

    <div><span>Moused Over: </span><span id="info2">Nothing</span></div>
    
    <div id="chart2" style="margin-top:20px; margin-left:20px; width:300px; height:300px;"></div>
<pre class="code"></pre>
    
    <div><span>Moused Over: </span><span id="info2b">Nothing</span></div>
    <div><span>Clicked: </span><span id="info2c">Nothing</span></div>
    
    <div id="chart2b" style="margin-top:20px; margin-left:20px; width:300px; height:300px;"></div>
<pre class="code"></pre>
    
    <p>The next example has the plot's 'captureRightClick' option set to true.  This causes the plot to fire a 'jqplotRightClick' event the the user clicks the right mouse button over a bar.  Here, the 'highlightMouseDown' option is also set to true.  This will highlight a slice on mouse down instead of on move over.  Highlighting will occur for either left or right click.</p>

    <div><span>You Right Clicked: </span><span id="info3">Nothing yet</span></div>
    
    <div id="chart3" style="margin-top:20px; margin-left:20px; width:300px; height:300px;"></div>
<pre class="code"></pre>
    
    <div id="chart4" style="margin-top:20px; margin-left:20px; width:300px; height:300px;"></div>
<pre class="code"></pre>
    
    <div id="chart5" style="margin-top:20px; margin-left:20px; width:300px; height:300px;"></div>
<pre class="code"></pre>
        
<p>A pie chart is added to test for incompatibilities.</p>
    <div id="chart6" style="margin-top:20px; margin-left:20px; width:300px; height:200px;"></div>
<pre class="code"></pre>

<p>The nex example shows the placement of point labels on negative bars. They shou be placed on the opposite position. That is, if it is placed 'north' to the positive bars, then it should be placed 'south' to the negative bars.</p>
	<div id="chart7" style="margin-top:20px; margin-left:20px; width:300px; height:300px;"></div>
<pre class="code"></pre>


  </body>
</html>