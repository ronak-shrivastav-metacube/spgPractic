import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter as Router, Route, Routes} from "react-router-dom";
import Hchart from "./page/Hchart";
import TableComponent from "./page/DataTable";

// Basic Layout of Site
import HeaderMenu from './partiulars/navbar';


function App() {
  return (
    <>
      <Router>
      <HeaderMenu />
        <Routes>
            <Route exact path="/hchart" element={<Hchart />} />
            <Route exact path="/datatable" element={<TableComponent />} />
        </Routes>
      </Router>
    </>
  );
}

export default App;
