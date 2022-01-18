import { Link } from "gatsby";
import React from "react"
import Entry from "./entry";
import * as styles from "./index.module.scss"

const VacationTable = (props) => {

    return (
        <table className={styles.table}>
            <tr>
                <th>Name</th>
                <th>Vorheriger Urlaube</th>
                <th>Antrag für</th>
                <th>Verbleibender Urlaub</th>
                <th></th>
            </tr>
            <Entry />
            <Entry />
            <Entry />
            <Entry noPrev={true} />
            <Entry />
            <Entry />
            <Entry />
            <Entry noPrev={true} />

        </table>
    );

}

export default VacationTable