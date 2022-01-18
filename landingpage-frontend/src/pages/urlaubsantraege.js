import React from "react"
import VacationTable from "../components/elements/VacationTable";
import Layout from "../components/sections/layout"

const Page = () => {

  return (
    <Layout slug="/urlaubsantraege">
      <div className="container">
        <div className="col12">
          <h1 style={{ marginBottom: 30 }} >Offene Urlaubsanträge</h1>
          <VacationTable />
        </div>
      </div>
    </Layout>
  );
}

export default Page
