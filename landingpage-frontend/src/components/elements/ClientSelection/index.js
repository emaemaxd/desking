import { Link } from "gatsby";
import React from "react"
import * as styles from "./index.module.scss"

const ClientSelection = (props) => {

    return (
        <div className={styles.wrapper}>
            <label htmlFor="client"><h2>Kunde</h2></label>
            <button>Ersten Kunden erstellen</button>
        </div>
    );

}

export default ClientSelection