import { Link } from "gatsby";
import React, { useState } from "react"
import * as styles from "./index.module.scss"

const ProjectEntry = (props) => {

    const name = props.name || "Projekt nicht gefunden"
    const client = props.client || ""
    const [showDetail, setShowDetail] = useState(false);

    const detailToggle = () => {
        setShowDetail(prev => !prev);
    }

    return (
        <>
            <tr onClick={detailToggle}>
                <td>{name}</td>
                <td>{client}</td>
            </tr>
            {
                showDetail &&
                <tr className={styles.detail}>
                    <td colSpan="100">
                        hey
                    </td>
                </tr>
            }

        </>
    );

}

export default ProjectEntry