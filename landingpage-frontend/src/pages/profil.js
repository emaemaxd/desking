import React, { useState } from "react"
import Switch from "../components/elements/Switch";
import Layout from "../components/sections/layout"
import EditIcon from "../images/edit.png"
import Button from "../components/elements/Button";

const Page = () => {
  const [entfernungToggle, setEntfernungToggle] = useState(true);
  const [langToggle, setLangToggle] = useState(true);
  const [showPasswordForm, setShowPasswordForm] = useState(false);

  const togglePwForm = () => {
    setShowPasswordForm(!showPasswordForm);
  }

  return (
    <Layout slug="/profil">
      <div className="container">
        <div className="col5 form-profil">
          <label htmlFor="name"><h2>Name</h2></label>
          <div className="big-input-wrapper">
            <input type="text" />
            <img src={EditIcon} alt="Feld bearbeiten" />
          </div>

          <label htmlFor="name"><h2>E-Mail</h2></label>
          <div className="big-input-wrapper">
            <input type="text" />
            <img src={EditIcon} alt="Feld bearbeiten" />
          </div>

          <label htmlFor="name"><h2>Adresse</h2></label>
          <div className="big-input-wrapper">
            <input type="text" />
          </div>

          <label htmlFor="name"><h2>Unternehmen</h2></label>
          <div className="big-input-wrapper">
            <input type="text" />
          </div>

          <label htmlFor="name"><h2>Telefonnummer</h2></label>
          <div className="big-input-wrapper">
            <input type="text" />
            <img src={EditIcon} alt="Feld bearbeiten" />
          </div>
        </div>
        <div className="col2" />
        <div className="col4">
          <h2 style={{ marginBottom: 30 }}>Präferenzen</h2>
          <div className="preference-item">
            <h3>Entfernung:</h3>
            <Switch opt1="KM" opt2="MI" value={entfernungToggle} setter={setEntfernungToggle} />
          </div>
          <div className="preference-item">
            <h3>Sprache:</h3>
            <Switch opt1="ENG" opt2="DE" value={langToggle} setter={setLangToggle} />
          </div>
          <div style={{display: !showPasswordForm ? 'none' : 'block'}} className="form-password">
            <label htmlFor="password"><h2>Passwort</h2></label>
            <input type="text" id="password" />
            <label htmlFor="new_password"><h2>Neues Passwort</h2></label>
            <input type="text" id="new_password" />
            <label htmlFor="repeat_new_password"><h2>Passwort bestätigen</h2></label>
            <input type="text" id="repeat_new_password" />
            <div className="password-buttons">
              <Button style={{marginRight: 16}} text="Speichern" type="secondary" />
              <Button text="Abbrechen" type="secondary" color="light" onClick={togglePwForm} />
            </div>
          </div>
          <div style={{display: showPasswordForm ? 'none' : 'block'}}>
            <Button text="Passwort ändern" type="primary" onClick={togglePwForm} />
          </div>
        </div>
        <div className="col1" />
      </div>
    </Layout>
  );
}

export default Page
