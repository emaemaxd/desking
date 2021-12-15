import React from "react"
import Weekactivitiess from "../components/elements/Weekactivities";
import Layout from "../components/sections/layout"

const Page = () => {

  return (
    <Layout slug="/">
      <div className="container fullheight">
        <div className="col5">
          <Weekactivitiess />
        </div>
        <div className="col2" />
        <div className="col5">
          <h2>hlo</h2>
        </div>
      </div>
    </Layout>
  );
}

export default Page
