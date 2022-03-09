import React from "react"
import NeededAttention from "../components/elements/NeededAttention";
import ProjectOverview from "../components/elements/ProjectOverview";
import Spacer from "../components/elements/Spacer";
import Weekactivitiess from "../components/elements/Weekactivities";
import Layout from "../components/sections/layout"

const Page = () => {

  return (
    <Layout slug="/">
      <div className="container fullheight">
        <div className="col5">
          <Weekactivitiess />
        </div>
        <div className="col1"/>
        <div className="col6">
          <ProjectOverview />
          <Spacer desktop={100} />
          <NeededAttention />
        </div>
      </div>
    </Layout>
  );
}

export default Page
