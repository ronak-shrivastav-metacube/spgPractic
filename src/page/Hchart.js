import React, { useState, useEffect } from 'react';
import Highcharts from 'highcharts'
import HighchartsReact from 'highcharts-react-official'

function Hchart()
{
    const [allSubject , setAllSubject] = useState([]);
    const [wholeData, setWholeData] = useState([]);
    const [marksChart, setMarksChart] = useState([]);
    const [singleStudentChart, setSingleStudentChart] = useState([]);
    
    useEffect(()=>{
        fetch(
            'http://localhost:8000/getalldata.php?q=All',{headers : { 
                'Content-Type': 'application/json',
                'Accept': 'application/json'
               },mode:'cors'})
            .then((res) => res.json())
            .then((json) => {
            //    json.map((keydata)=> setData([...data,json])) 
            let keys = Object.keys(json)
            let array = [];
            Object.entries(json).map((value)=>{
                let pre = (value[1]/(100*60))*100;
                let firstLetter = value[0].charAt(0);
                firstLetter = firstLetter.toUpperCase()
                let lastLetters = value[0].slice(1);
                let subjectName = firstLetter+lastLetters
                array.push({name:subjectName, y:Number(pre)})
            })
            setAllSubject(array);    
        })

        fetch(
            'http://localhost:8000/getalldata.php?c=subject',{headers : { 
                'Content-Type': 'application/json',
                'Accept': 'application/json'
               },mode:'cors'})
            .then((res) => res.json())
            .then((json) => {
                setWholeData(json);
        })

    },[]);

    let options = {
        title:{
            text: "All Subjects"
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            },
            series: {
              point: {
                events: {
                  click: (e) => { createSecondChart(e.point.name);}
                }
              }
            }
          },
        series : [{
            type : 'pie',
            name: 'Percentage',
            colorByPoint: true,
            data : allSubject
        }]  
    }

    function createSecondChart(e)
    {
        let arr = [];
        wholeData.map((value)=>{
            arr.push({name:value.StudentName, y:Number(value[e]), hiddenValue:Number(value.RollNum)})
        });

        let options = {
            title:{
                text: "All Marks of "+e
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                    }
                },
                series: {
                  point: {
                    events: {
                      click: (e) => { fetchSingleStudentWholeData({name:e.point.name, rollnum : e.point.hiddenValue});}
                    }
                  }
                }
              },
            series : [{
                type : 'pie',
                name: 'Marks',
                colorByPoint: true,
                data : arr
            }]
        }
        setMarksChart(<HighchartsReact options={options} highcharts={Highcharts}/>)
    }

    function fetchSingleStudentWholeData(e)
    {
        let rollNum = e.rollnum;
        let name = e.name;
        fetch(
            'http://localhost:8000/getalldata.php?stu='+rollNum,{headers : { 
                'Content-Type': 'application/json',
                'Accept': 'application/json'
               },mode:'cors'})
            .then((res) => res.json())
            .then((json) => {
                let arr = [];
                Object.entries(json).map(([key,value])=>{
                    arr.push({name:key, data:[Number(value)]})
                })
                let optionsX = {
                    chart: {
                        type: 'column'
                    },
                    title: {
                        text: 'All Obtained Mark of'+name
                    },
                    
                    yAxis: {
                        min: 0,
                        title: {
                            text: 'Marks Rang'
                        }
                    },
                
                    plotOptions: {
                        column: {
                            pointPadding: 0.2,
                            borderWidth: 0
                        }
                    },
                    series: arr
                }
                setSingleStudentChart(<HighchartsReact options={optionsX} highcharts={Highcharts} />);    
        })
    }

    return (
        <section className="my-4">
            <div className="container">
                <div className="row">
                    <div className="col-6">
                        <HighchartsReact options={options} highcharts={Highcharts} />
                    </div>
                    <div className="col-6">
                        {marksChart}
                    </div>
                </div>
                <div className="row">
                    <div className="col-12">
                        {singleStudentChart}
                    </div>
                </div>
            </div>
        </section>
    );
}
export default Hchart;