import { Link } from "gatsby";
import axios from "axios"
import React, { useEffect, useState } from "react"
import Member from "./entry";
import * as styles from "./index.module.scss"

const MemberTable = (props) => {
    const [data, setData] = useState();
    useEffect(() => {
        getdata()
    }, [])

    const getdata = () => {
        axios.get('https://apex.cloud.htl-leonding.ac.at/ords/ws_u4bhitm13/dashboard/users').then((response) => {
            setData(response.data);
            console.log(data);

        })
    }

    return (
        <table className={styles.table}>
            <tr>
                <th>Vorname</th>
                <th>Nachname</th>
                <th>E-Mail</th>
                <th>Zuletzt Eingecheckt</th>
            </tr>
            {data !== undefined && data.items.map((item) => {      
            return <Member vorname={item.first_name} nachname={item.last_name} email={item.email} last="Noch kein Eintrag" />
            })}
        </table>
    );

}

export default MemberTable