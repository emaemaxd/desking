import { Link } from "gatsby";
import axios from "axios"
import React, { useEffect, useState } from "react"
import TimeEntry from "./entry";
import * as styles from "./index.module.scss"
import standorte from "../../../pages/standorte"

const ProjectTable = (props) => {
  const reverseGeocodingUrl = "https://api.geoapify.com/v1/geocode/reverse?lat=${e.latlng.lat}&lon=${e.latlng.lng}&apiKey=37a34965914146f99bbcf1df22ab7ee1";
  const [data, setData] = useState();
  useEffect(() => {
      getdata()
  }, [])

  const getdata = () => {
      axios.get('http://localhost:8080/api/locations/').then((response) => {
          setData(response.data);
          console.log(data);
      })
  }

    return (
        <table className="has-checkbox">
        <tr>
          <th className="checkbox-column"><input aria-label="Alle auswählen" type="checkbox" /></th>
          <th>Name</th>
          <th>Anschrift</th>
          <th>Info</th>
        </tr>
        {data !== undefined && data.map((item) => {
                return <TimeEntry name={item.name} lon={item.longitude} lat={item.latitude}  info={item.info} />
            })}

        </table>
    );

}

export default ProjectTable