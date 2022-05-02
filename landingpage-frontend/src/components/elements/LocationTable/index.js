import { Link } from "gatsby";
import React from "react"
import TimeEntry from "./entry";
import * as styles from "./index.module.scss"

const ProjectTable = (props) => {

    return (
        <table className="has-checkbox">
        <tr>
          <th className="checkbox-column"><input aria-label="Alle auswählen" type="checkbox" /></th>
          <th>Name</th>
          <th>Anschrift</th>
          <th>Info</th>
        </tr>
        <TimeEntry name="Büro #1" anschrift="Waltherstraße 7 4020 Linz" info="Sonntags gesperrt" />
        <TimeEntry name="Büro #1" anschrift="Waltherstraße 7 4020 Linz" info="Sonntags gesperrt" />
        <TimeEntry name="Büro #1" anschrift="Waltherstraße 7 4020 Linz" info="Sonntags gesperrt" />
        <TimeEntry name="Büro #1" anschrift="Waltherstraße 7 4020 Linz" info="Sonntags gesperrt" />
        <TimeEntry name="Büro #1" anschrift="Waltherstraße 7 4020 Linz" info="Sonntags gesperrt" />
        </table>
    );

}

export default ProjectTable