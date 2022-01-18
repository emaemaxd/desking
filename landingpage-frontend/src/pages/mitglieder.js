import React, { useEffect, useState } from "react"
import MemberTable from "../components/elements/MemberTable";
import Layout from "../components/sections/layout"
import Button from "../components/elements/Button";

const Page = () => {

  const [vorname, setVorname] = useState("")
  const [nachname, setNachname] = useState("")
  const [email, setEmail] = useState("")
  const [disableButton, setDisableButton] = useState(true)

  useEffect(() => {
    setDisableButton(nachname === "" || vorname === "" || email === "")
  }, [vorname, nachname, email]);




  return (
    <Layout slug="/mitglieder">
      <div className="container">
        <div className="col7">
          <h1 style={{ marginBottom: 30 }} >Mitglieder</h1>
          <MemberTable />
        </div>
        <div className="col1" />
        <div className="col4">
          <div className="container fullheight align-center">
            <div>
              <h1 style={{ marginBottom: 30 }}>Mitglied hinzufügen</h1>
              <div className="form-add-member">
                <label htmlFor="vorname"><h2>Vorname</h2></label>
                <input value={vorname} onInput={e => setVorname(e.target.value)} type="text" id="vorname" />
                <label htmlFor="nachname"><h2>Nachname</h2></label>
                <input value={nachname} onInput={e => setNachname(e.target.value)} type="text" id="nachname" />
                <label htmlFor="email"><h2>E-Mail</h2></label>
                <input value={email} onInput={e => setEmail(e.target.value)} type="text" id="email" />
                <div style={{ display: "flex", alignItems: "center", flexDirection: "column" }}>
                  <div>
                    <Button style={{ marginBottom: 20 }} disabled={disableButton} text="Bestätigen" type="primary" /></div>
                  <p className="light">Diese Person bekommt Anleitung zum Einrichten des Accounts per Mail.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </Layout>
  );
}

export default Page
