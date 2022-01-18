import React from "react"
import ClientSelection from "../components/elements/ClientSelection";
import ProjectTable from "../components/elements/ProjectTable";
import Layout from "../components/sections/layout"

const Page = () => {

  return (
    <Layout slug="/projekte">
      <div className="container">
        <div className="col6">
          <h1 style={{marginBottom: 30}} >Projektübersicht</h1>
          <ProjectTable />
        </div>
        <div className="col1" />
        <div className="col5">
          <h1 style={{marginBottom: 30}} >Projekt hinzufügen</h1>
          <div className="form-add-project">
            <div style={{display: 'flex', alignItems: 'center', justifyContent: "space-between", marginBottom: 20}}>
              <label htmlFor="project_name"><h2>Projektname</h2></label>
              <input id="project_name" type="text" placeholder="Name" />
            </div>
            <ClientSelection />
          </div>
        </div>
      </div>
    </Layout>
  );
}

export default Page
