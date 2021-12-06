import React, {useState} from "react"
import * as styles from "./index.module.scss"

const Button = (props) => {
    console.log(props);
    const [buttonText, setButtonText] = useState("i bims button");

    if (props.type == "primary") {
        return (
            <div className={styles.primary}>i bims button</div>
        )
    } else if (props.type == "secondary") {
        return (
            <div className={styles.secondary}>i bims button</div>
        )
    } else {
        return (
            <div className={styles.primary}>i bims button undefined</div>
        )
    }
    
}

export default Button