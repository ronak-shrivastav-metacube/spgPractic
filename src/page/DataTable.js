import React, { useState, useEffect } from 'react';
import DataTable from 'react-data-table-component';

// A super simple expandable component.
const ExpandedComponent = ({ data }) => <pre>{JSON.stringify(data, null, 2)}</pre>;



const columns = [
    {
        name: 'Title',
        selector: row => row.title,
    },
    {
        name: 'Year',
        selector: row => row.year,
    },
];

const data = [
    {
        id: 1,
        title: 'Beetlejuice',
        year: '1988',
    },
    {
        id: 2,
        title: 'Ghostbusters',
        year: '1984',
    },
]

function TableComponent() {
    const [column, setColumn] = useState([]);
    const [studentData, setStundentData] = useState([]);
    
    useEffect(() => {
        fetch(
            'http://localhost:8000/getalldata.php?c=subject',{headers : { 
                'Content-Type': 'application/json',
                'Accept': 'application/json'
               },mode:'cors'})
            .then((res) => res.json())
            .then((json) => {
                json.map((value)=>{
                    console.log(value);
                });
        })
    });
    
    return (
        <section className="my-4">
            <div className="container">
                <div className="row">
                    <div className="col-12">
                        <DataTable
                            columns={columns}
                            data={data}
                            expandableRows
                            expandableRowsComponent={ExpandedComponent}
                        />
                    </div>
                </div>
            </div>
        </section>
    );
};
export default TableComponent