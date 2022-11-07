import { Link } from "gatsby";
import React from "react"
import TimeEntry from "./entry";
import * as styles from "./index.module.scss"

const TimeTable = (props) => {

    return (
        <table className="has-checkbox">
        <tr>
          <th className="checkbox-column"><input aria-label="Alle auswählen" type="checkbox" /></th>
          <th>Name</th>
          <th>E-Mail</th>
          <th>Zuletzt eingecheckt</th>
        </tr>
        <TimeEntry name="admin" email="max@mustermann.com" lastlogin="-" />
        <TimeEntry name="Ema Halilovic" email="max@mustermann.com" lastlogin="05.11.2022" />
        <TimeEntry name="Mathias Witak" email="max@mustermann.com" lastlogin="05.11.2022" />
        
        </table>
    );

}

export default TimeTable