import { Link } from "gatsby";
import ProjectEntry from "./entry";
import * as styles from "./index.module.scss"
import axios from "axios"
import React, { useEffect, useState } from "react"

const ProjectTable = (props) => {
    const [data, setData] = useState();
    useEffect(() => {
        getdata()
    }, [])

    const getdata = () => {
        axios.get('http://localhost:8080/api/projects/').then((response) => {
            setData(response.data);
            console.log(data);

        })
    }

    return (
        <table className={styles.table}>
            <tr>
                <th>Projektname</th>
                <th>Kunde</th>
            </tr>
            {data !== undefined && data.map((item) => {
                return <ProjectEntry name={item.name} client={item.customerid.email} />
            })}
        </table>
    );

}

export default ProjectTable