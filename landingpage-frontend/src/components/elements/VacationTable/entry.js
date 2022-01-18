import { Link } from "gatsby";
import React, { useState } from "react"
import * as styles from "./index.module.scss"
import Accept from "../../../images/accept.png"
import Deny from "../../../images/deny.png"

const Entry = (props) => {

    const noPrev = props.noPrev || false;

    return (
        <tr>
            <td>Max Mustermann</td>
            <td>
                {noPrev ?
                    <div>Keine Einträge</div> :
                    <div className={styles.prevGrid}>
                        <div>06.05.21 - 14.05.21</div>
                        <div>01.03.21 - 03.03.21</div>
                        <div>21.12.20 - 22.12.20</div>
                        <div></div>
                    </div>
                }
            </td>
            <td>26.12.21 - 01.01.2022</td>
            <td>{Math.round(Math.random() * 10)} Tage</td>
            <td><div className={styles.iconWrapper}>
                <img src={Accept} role="button" aria-label="Urlaubsantrag annehmen" alt="Urlaubsantrag annehmen" />
                <img src={Deny} role="button" aria-label="Urlaubsantrag ablehnen" alt="Urlaubsantrag ablehnen" />
            </div></td>
        </tr>

    );

}

export default Entry