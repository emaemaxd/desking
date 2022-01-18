import { Link } from "gatsby";
import React from "react"
import ProjectEntry from "./entry";
import * as styles from "./index.module.scss"

const ProjectTable = (props) => {

    return (
        <table className={styles.table}>
            <tr>
                <th>Projektname</th>
                <th>Kunde</th>
            </tr>
            <ProjectEntry name="FileUtility" client="Siemens" />
            <ProjectEntry name="Desking" client="HTL Leonding" />
            <ProjectEntry name="FileUtility" client="Siemens" />
            <ProjectEntry name="Desking" client="HTL Leonding" />
            <ProjectEntry name="FileUtility" client="Siemens" />
            <ProjectEntry name="Desking" client="HTL Leonding" />
            <ProjectEntry name="FileUtility" client="Siemens" />
            <ProjectEntry name="Desking" client="HTL Leonding" />
            <ProjectEntry name="FileUtility" client="Siemens" />
            <ProjectEntry name="Desking" client="HTL Leonding" />

        </table>
    );

}

export default ProjectTable