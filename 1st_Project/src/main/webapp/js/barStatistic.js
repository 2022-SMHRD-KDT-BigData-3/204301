/**
 * 
 */
google.charts.load('current', {'packages':['bar']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
  var bardata = google.visualization.arrayToDataTable([
    ['나이대', '이용자수', '리뷰 현황'],
    ['10대', 1000, 400],
    ['20대', 1170, 460],
    ['30대', 660, 1120],
    ['40대', 1030, 540],
    ['50대', 12, 12 ],
    ['60대 이상', 12, 12]
  ]);

  var options = {
    chart: {
      title: '게임 결과 통계',
      subtitle: '',
    }
  };

  var barchart = new google.charts.Bar(document.getElementById('columnchart_material'));

  barchart.draw(bardata, google.charts.Bar.convertOptions(options));
}