import React from "react"
import AllEntries from "../components/elements/AllEntries";
import Layout from "../components/sections/layout"
import Total from "../components/elements/Total";
import * as Shadow from "react-shadow"
import root from "react-shadow"

const Page = () => {

  return (
    <Layout slug="alltimes">
          
        <AllEntries/>
   </Layout>
  );
}

export default Page
