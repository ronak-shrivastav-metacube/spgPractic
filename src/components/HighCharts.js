import Highcharts from 'highcharts'
import HighchartsReact from 'highcharts-react-official'

const GenerateHighcharts = (props) =>
{
    let Options = {
        chart: {
            type: props.type
          },
          title: {
            text: props.title
          },
          tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
          },
          credits: {
            enabled: false
          },
          plotOptions: props.plotOptions,
          series: [{
            name: 'Brands',
            colorByPoint: true,
            data: props.data
            }]
    };
    return (
        <HighchartsReact highcharts={Highcharts} options={Options}/>
    );
}
export default GenerateHighcharts;