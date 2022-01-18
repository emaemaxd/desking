import React from "react"
import SickTable from "../components/elements/SickTable";
import Layout from "../components/sections/layout"

const Page = () => {

  return (
    <Layout slug="/arbeitszeiten">
      <div className="container">
        <div className="col8">
          <h1 style={{marginBottom: 30}}>Zeitenansicht</h1>
          recharts bro
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
