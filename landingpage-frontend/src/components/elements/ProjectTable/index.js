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
        axios.get('https://apex.cloud.htl-leonding.ac.at/ords/ws_u4bhitm13/dashboard/projects').then((response) => {
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
            {data !== undefined && data.items.map((item) => {
                return <ProjectEntry name={item.name} client={item.customername} />
            })}
        </table>
    );

}

export default ProjectTable