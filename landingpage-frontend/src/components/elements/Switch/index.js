import React from "react"
import * as styles from "./index.module.scss"

const Switch = ({opt1, opt2, value, setter}) => {

    return (
        <div className={styles.wrapper} role="switch" tabIndex="0" aria-checked={value} onClick={(e) => {
            setter(!value);
        }}>
            <div className={`${value && styles.selected}`}>
                {opt1}
            </div>
            <div className={`${value || styles.selected}`}>
                {opt2}
            </div>
        </div>
    );

}

export default Switch