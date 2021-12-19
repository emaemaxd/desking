import React from "react"
import * as styles from "./index.module.scss"

const ProjectOverview = (props) => {

    return (
        <div className={styles.wrapper}>
            <div className={styles.arrow}>▷</div>
            <div className={styles.center}>
                <h1 className={styles.headline}>Projektübersicht</h1>
                <div className={styles.projectcard}>
                    <div>
                        <h2 className={styles.projectname}>Projektname</h2>
                        <h4>100 Mitglieder</h4>
                        <h4>Kunde: Google</h4>
                    </div>
                    <div className={styles.graph}>
                        <div className={styles.upper_graph}>80</div>
                        <div>320</div>
                    </div>
                </div>
                <div className={styles.circles}>
                    <div className={styles.circle} />
                    <div className={styles.circle} />
                    <div className={styles.circle} />
                    <div className={styles.circle} />
                    <div className={styles.circle + " " + styles.active} />
                    <div className={styles.circle} />
                    <div className={styles.circle} />
                    <div className={styles.circle} />
                </div>
            </div>
            <div className={styles.arrow}>▷</div>
        </div>
    );

}

export default ProjectOverview