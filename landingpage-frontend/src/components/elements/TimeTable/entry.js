import { Link } from "gatsby";
import React, { useState } from "react"
import * as styles from "./index.module.scss"
import SettingsIcon from "../../../images/settings.png"

const ProjectEntry = (props) => {

    const name = props.name || "Projekt nicht gefunden"
    const email = props.anschrift || "Keine Adresse"
    const lastlogin = props.info || "-.-"
    const [showDetail, setShowDetail] = useState(false);

    const detailToggle = () => {
        setShowDetail(prev => !prev);
    }

    return (
        <>
            <tr onClick={detailToggle}>
            <td className="checkbox-column"><input aria-label="Auswählen" type="checkbox" /></td>
                <td>{name}</td>
                <td>{email}</td>
                <td>{lastlogin}</td>
            </tr>
            {
                showDetail &&
                <tr className={styles.detail}>
                    <td colSpan="100">
                        <div className={styles.detailContent}>
                            <img src={SettingsIcon} alt="Bearbeiten" aria-label="Bearbeiten" role="button" className={styles.settings} />
                            <table>
                                <tr>
                                    <th>Mitglieder</th>
                                    <th>Geplante Zeit</th>
                                    <th>Abgearbeitet</th>
                                </tr>
                                <tr>
                                    <td>Max Mustermann</td>
                                    <td>3000h</td>
                                    <td>234h</td>
                                </tr>
                            </table>
                            <div>
                                <p>Geplant: 12000h</p>
                                <p>Aktuell: 900h</p>
                            </div>
                        </div>
                    </td>
                </tr>
            }

        </>
    )

}

export default ProjectEntry