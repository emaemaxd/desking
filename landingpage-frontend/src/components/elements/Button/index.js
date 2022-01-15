import React from "react"
import * as styles from "./index.module.scss"

const Button = (props) => {

    const text = props.text || "Button";
    const type = props.type || "primary"

    if (type === "primary") {
        return (
            <div className={styles.primary}>{text}</div>
        )
    } else if (type === "secondary") {
        return (
            <div className={styles.secondary}>{text}</div>
        )
    } else {
        return (
            <div className={styles.tertiary}>{text}</div>
        )
    }
    
}

export default Button