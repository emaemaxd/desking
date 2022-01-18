import { Link } from "gatsby";
import React from "react"
import Entry from "./entry";
import * as styles from "./index.module.scss"

const SickTable = (props) => {

    return (
        <table className={styles.table}>
            <tr>
                <th>Vorname</th>
                <th>Nachname</th>
                <th>Von - Bis</th>
            </tr>
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            <Entry />
            

        </table>
    );

}

export default SickTable