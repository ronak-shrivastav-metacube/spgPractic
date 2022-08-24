import React, {useState, useEffect} from 'react'
import { CCard, CCardBody, CCol, CCardHeader, CRow , CForm, CFormSelect} from '@coreui/react'
import axios from 'axios';

import Highcharts from 'highcharts'
import HighchartsReact from 'highcharts-react-official'
import GenerateHighCharts from 'src/components/HighCharts';

const HCharts = () => {

  const [highChartType,setHighChartType] = useState('pie');
  const [filter, setFilter] = useState('departments');
  const [departmentWiseData, setDepartmentWiseData] = useState(null);

  let title = '';
  let plotOptions = {};
  
  useEffect(()=>{
    axios.post('http://localhost:8000/getAllData.php',{
      table : filter
    })
    .then((res) => {
      let arr = [];
      res.data.map((value)=>{
        arr.push({name:value.fieldName, y : Number(value.sumOfEmployees)})
      })
      setDepartmentWiseData(arr);
    }) 
  },[filter]);

let opts = {
  chart:{
    type : 'pie',
    backgroundColor: null,
  },
  title : {
    text : filter.charAt(0).toUpperCase() + filter.slice(1)+' Contained Of Employees'
  },
  credits: {
    enabled: false
  },
  plotOptions : {
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
          click: (e) => { getData(e.point.options)}
        }
      }
    }  
  },
  series: [{
    name: 'Brands',
    colorByPoint: true,
    data: departmentWiseData
    }]
}

function getData(e)
{
  console.log(e);
}

  return (
    <>
      <CRow>
        <CCol xs={3} className="my-4">
          <h3>Selecte Data</h3>
        <CFormSelect value={filter} aria-label="Select Filter Type" onChange={(e)=>setFilter(e.target.value)}>
          <option value="departments">Departments</option>
          <option value="skillSets">Skill Sets</option>
          <option value="user_roles">User Roles</option>
        </CFormSelect>  
        </CCol>
        {/* <CCol xs={3} className="my-4">
          <h3>Select Chart Type</h3>
          <CFormSelect value={setHighChartType} aria-label="Select Filter Type" onChange={(e)=>changeChartType(e.target.value)}>
          <option value="pie">Pie</option>
          <option value="line">Line</option>
          <option value="column">Column</option>
          <option value="bar">Bar</option>
        </CFormSelect>
        </CCol> */}

      </CRow>
      <CRow>
        <CCol xs={6}>
          <HighchartsReact useRef="highCharts" highcharts={Highcharts} options={opts}/>
        </CCol>
      </CRow>
    </>
  )
}

export default HCharts
