import { Link } from "gatsby";
import React from "react"
import Member from "./entry";
import * as styles from "./index.module.scss"

const MemberTable = (props) => {

    return (
        <table className={styles.table}>
            <tr>
                <th>Vorname</th>
                <th>Nachname</th>
                <th>E-Mail</th>
                <th>Zuletzt Eingecheckt</th>
            </tr>
            <Member vorname="Michal" nachname="Stencel" email="m.stencel@students.htl-leonding.ac.at" last="Heute, 12:44" />
            <Member vorname="Ema" nachname="Halilovic" email="e.halilovic@students.htl-leonding.ac.at" last="Gestern, 17:03" />
            <Member vorname="Mathias" nachname="Witak" email="m.witak@students.htl-leonding.ac.at" last="08.02.2021 10:50" />
            <Member vorname="Michal" nachname="Stencel" email="m.stencel@students.htl-leonding.ac.at" last="Heute, 12:44" />
            <Member vorname="Ema" nachname="Halilovic" email="e.halilovic@students.htl-leonding.ac.at" last="Gestern, 17:03" />
            <Member vorname="Mathias" nachname="Witak" email="m.witak@students.htl-leonding.ac.at" last="08.02.2021 10:50" />
            <Member vorname="Michal" nachname="Stencel" email="m.stencel@students.htl-leonding.ac.at" last="Heute, 12:44" />
            <Member vorname="Ema" nachname="Halilovic" email="e.halilovic@students.htl-leonding.ac.at" last="Gestern, 17:03" />
            <Member vorname="Mathias" nachname="Witak" email="m.witak@students.htl-leonding.ac.at" last="08.02.2021 10:50" />
            <Member vorname="Michal" nachname="Stencel" email="m.stencel@students.htl-leonding.ac.at" last="Heute, 12:44" />
            <Member vorname="Ema" nachname="Halilovic" email="e.halilovic@students.htl-leonding.ac.at" last="Gestern, 17:03" />
            <Member vorname="Mathias" nachname="Witak" email="m.witak@students.htl-leonding.ac.at" last="08.02.2021 10:50" />

        </table>
    );

}

export default MemberTable