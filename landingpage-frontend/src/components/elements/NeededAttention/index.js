import React from "react"
import * as styles from "./index.module.scss"
import Button from "../Button"
import CloseIcon from "../../../images/close.png"

const NeededAttention = (props) => {

    return (
        <div className={styles.wrapper}>
            <div className={styles.arrow}>▷</div>
            <div className={styles.center}>
                <h1 className={styles.headline}>Erfordert Aufmerksamkeit</h1>
                <div className={styles.table}>
                    <div className={styles.entry}>
                        <h3 className={styles.name}>Max Mustermann</h3>
                        <p className={styles.event}>Urlaubsantrag</p>
                        <div className={styles.action}>
                            <Button text="Ansehen" type="tertiary" />
                            <img className={styles.close} alt="Remove Entry" src={CloseIcon} />
                        </div>
                    </div>

                    <div className={styles.entry}>
                        <h3 className={styles.name}>Max Mustermann</h3>
                        <p className={styles.event}>Lange Abwesenheit</p>
                        <div className={styles.action}>
                            <Button text="Ansehen" type="tertiary" />
                            <img className={styles.close} alt="Remove Entry" src={CloseIcon} />
                        </div>
                    </div>

                    <div className={styles.entry}>
                        <h3 className={styles.name}>Max Mustermann</h3>
                        <p className={styles.event}>Minusstunden</p>
                        <div className={styles.action}>
                            <Button text="Ansehen" type="tertiary" />
                            <img className={styles.close} alt="Remove Entry" src={CloseIcon} />
                        </div>
                    </div>

                    <div className={styles.entry}>
                        <h3 className={styles.name}>Max Mustermann</h3>
                        <p className={styles.event}>Urlaubsantrag</p>
                        <div className={styles.action}>
                            <Button text="Ansehen" type="tertiary" />
                            <img className={styles.close} alt="Remove Entry" src={CloseIcon} />
                        </div>
                    </div>
                </div>

                <div className={styles.circles}>
                    <div className={styles.circle + " " + styles.active} />
                    <div className={styles.circle} />
                    <div className={styles.circle} />
                </div>

            </div>
            <div className={styles.arrow}>▷</div>
        </div>
    );

}

export default NeededAttention