import { Link } from "gatsby";
import React, { useEffect, useState } from "react"
import axios from "axios"
import * as styles from "./index.module.scss"
import SettingsIcon from "../../../images/settings.png"

const ProjectEntry = (props) => {

    const name = props.name || "Projekt nicht gefunden"
    const info = props.info || "-"
    const [showDetail, setShowDetail] = useState(false);
    const reverseGeocodingUrl = `https://api.geoapify.com/v1/geocode/reverse?lat=${props.lat}&lon=${props.lon}&apiKey=37a34965914146f99bbcf1df22ab7ee1`;
    const [data, setData] = useState();
    useEffect(() => {
        getdata()
    }, [])

    const detailToggle = () => {
        setShowDetail(prev => !prev);
    }
    const getdata = () => {
            axios.get(reverseGeocodingUrl).then((response) => {
        setData(response.data);
        console.log(data);

    })
    }

    return (
        <>
            <tr onClick={detailToggle}>
            <td className="checkbox-column"><input aria-label="Auswählen" type="checkbox" /></td>
                <td>{name}</td>
                <td>{data?.features[0].properties.formatted}
                </td>
                <td>{info}</td>
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
    );

}

export default ProjectEntry