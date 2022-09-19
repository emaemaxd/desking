import { Link } from "gatsby";
import React, { useState } from "react"
import * as styles from "./index.module.scss"

const Member = (props) => {

    const vorname = props.vorname;
    const nachname = props.nachname;
    const email = props.email;
    const last = props.last;

    const [showDetail, setShowDetail] = useState(false);

    const detailToggle = () => {
        setShowDetail(prev => !prev);
    }

    return (
        <>
            <tr onClick={detailToggle}>
                <td>{vorname}</td>
                <td>{nachname}</td>
                <td>{email}</td>
                <td>{last}</td>
            </tr>
            {
                showDetail &&
                <tr className={styles.detail}>
                    <td colSpan="100">
                        <div className={styles.detailContent}>
                            <table>
                                <tr>
                                    <th>Telefon</th>
                                    <th>Geburtsdatum</th>
                                    <th>Abteilung</th>
                                    <th>Hinzugefügt am</th>
                                </tr>
                                <tr>
                                    <td>+43 660 4527777</td>
                                    <td>12/02/2003</td>
                                    <td>Marketing</td>
                                    <td>12.20.2021</td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            }

        </>
    );

}

export default Member