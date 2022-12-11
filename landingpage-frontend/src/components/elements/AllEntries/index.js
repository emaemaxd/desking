import { Link } from "gatsby";
import React from "react"
import * as styles from "./index.module.scss"
import { useState,useEffect } from "react";
import axios from "axios"

const AllEntries = (props) => {

    const msToTime = (duration) => {
        var milliseconds = Math.floor((duration % 1000) / 100),
          seconds = Math.floor((duration / 1000) % 60),
          minutes = Math.floor((duration / (1000 * 60)) % 60),
          hours = Math.floor((duration / (1000 * 60 * 60)) % 24);
      
        hours = (hours < 10) ? "0" + hours : hours;
        minutes = (minutes < 10) ? "0" + minutes : minutes;
        seconds = (seconds < 10) ? "0" + seconds : seconds;
      
        return hours + ":" + minutes + ":" + seconds;
      }

    const [data, setData] = useState();
    useEffect(() => {
        getdata()
    }, [])

    const getdata = () => {
        axios.get('http://localhost:8080/api/entries/').then((response) => {
            setData(response.data);
            console.log(data);
        })
    }

   return (
        <table style={{marginTop: -60, fontSize: 10}}className={styles.table}>
            <tr>
                <th>User</th>
                <th>Start</th>
                <th>Dauer</th>
                <th>Projekt</th>
            </tr>
            {data !== undefined && data.map((item) => {
                 return (<tr style={{borderBottom:"2px solid #FFFFFF", borderTop: "2px solid #FFFFFF"}}><td>{item.lastname}</td><td>{item.starttime.split('T')[0]}<br/>{item.starttime.split('T')[1]}</td>
                 <td>{(msToTime(item.timepassed))}</td> <td>{item.customer}</td>
                 </tr>);
            })}
        </table>
   );
}

export default AllEntries