import React from "react"
import SickTable from "../components/elements/SickTable";
import TimeGraph from "../components/elements/TimeGraph";
import Layout from "../components/sections/layout"

const Page = () => {

  return (
    <Layout slug="/arbeitszeiten">
      <div className="container">
        <div className="col8">
          <h1 style={{marginBottom: 30}}>Zeitenansicht</h1>
          <TimeGraph />
          hier tabelle
        </div>
        <div className="col1" />
        <div className="col3">
          <h1 style={{marginBottom: 30}}>Krankstände</h1>
          <SickTable />
        </div>
      </div>
    </Layout>
  );
}

export default Page
