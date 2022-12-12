import { Link } from "gatsby";
import React from "react"
import * as styles from "./index.module.scss"
import { useState,useEffect } from "react";
import axios from "axios"

const Total = (props) => {
    const queryParams = new URLSearchParams(window.location.search)
    const projekt = queryParams.get("projekt");

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
            calcData(response.data)
        })
    }

    const calcData = (data) => {
        if(data) {
        var filtered = data.filter(d => d.customer.toLowerCase() == projekt.toLowerCase());
        console.log(filtered)
        }  
    }
    calcData();
   return (
        <div id="totalh">
            <h1 style={{marginTop: -60,marginBottom: 60, marginLeft: 3}}>Total: </h1>

        </div>
   );
}

export default Total