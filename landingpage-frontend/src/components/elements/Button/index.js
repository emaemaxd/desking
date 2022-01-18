import { Link } from "gatsby";
import React from "react"
import * as styles from "./index.module.scss"

const Button = (props) => {

    const text = props.text || "Button";
    const type = props.type || "primary";
    const color = props.color || "default";
    const disabled = props.disabled || false;
    let align;
    if (props.align === "center") {
        align = styles.center;
    } else if (props.align === "right") {
        align = styles.right;
    } else {
        align = "";
    }

    if (type === "primary") {
        if (props.onClick) {
            return (
                <button style={props.style} onClick={props.onClick} className={`${styles.primary} ${disabled && styles.disabled} ${align}`}>{text}</button>
            )
        } else if (props.target) {
            return (
                <Link style={props.style} to={props.target} className={`${styles.primary} ${disabled && styles.disabled} ${align}`}>{text}</Link>
            )
        } else {
            return (
                <button style={props.style} className={`${styles.primary} ${disabled && styles.disabled} ${align}`}>{text}</button>

            )

        }
    } else if (type === "secondary") {
        if (color === "light") {
            return (
                <button style={props.style} role="button" onClick={props.onClick} className={`${styles.secondary} ${styles.light}`}>
                    {text}
                </button>
            )
        } else {
            return (
                <button style={props.style} onClick={props.onClick} className={styles.secondary}>{text}</button>
            )
        }

    } else {
        return (
            <div style={props.style} className={styles.tertiary}>{text}</div>
        )
    }

}

export default Button