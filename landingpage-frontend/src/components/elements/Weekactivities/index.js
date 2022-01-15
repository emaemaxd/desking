import React from "react"
import * as styles from "./index.module.scss"
// ▲ ▼ when it's active and △ ▽ when not active
const Weekactivitiess = (props) => {

    return (
        <div className={styles.wrapper}>
            <h1>Aktivitäten der Woche</h1>
            <table>
                <tr>
                    <th>Name<span>▼</span></th>
                    <th>Eingecheckt<span>▽</span></th>
                    <th>Stunden</th>
                    <th>Notizen</th>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            33/<span>40</span>
                        </div>
                    </td>
                    <td>
                        Pause
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_no} />
                    </td>
                    <td>
                        <div className={styles.greenbox}>
                            40/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            29/<span>36</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_no} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            10/<span>40</span>
                        </div>
                    </td>
                    <td>
                        Krank
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            33/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            33/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            33/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_no} />
                    </td>
                    <td>
                        <div className={styles.greenbox}>
                            43/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.greenbox}>
                            40/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.greenbox}>
                            41/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            38/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            39/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            23/<span>40</span>
                        </div>
                    </td>
                    <td>
                        Pause
                    </td>
                </tr>

                <tr>
                    <td>Max Mustermann</td>
                    <td>
                        <div className={styles.checkin_yes} />
                    </td>
                    <td>
                        <div className={styles.redbox}>
                            31/<span>40</span>
                        </div>
                    </td>
                    <td>
                        
                    </td>
                </tr>

            </table>

        </div>
    );
}

export default Weekactivitiess