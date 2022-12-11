import React from "react"
import AllEntries from "../components/elements/AllEntries";
import Layout from "../components/sections/layout"
import Total from "../components/elements/Total";

const Page = () => {

  return (
    <Layout slug="alltimes">
        <Total></Total>
        <AllEntries/>
   </Layout>
  );
}

export default Page
