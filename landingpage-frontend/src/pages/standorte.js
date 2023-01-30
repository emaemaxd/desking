import React, { useState } from "react"
import Layout from "../components/sections/layout"
import { useForm } from "react-hook-form"
import Button from "../components/elements/Button"
import LocationTable from "../components/elements/LocationTable"
import axios from "axios"

const Page = () => {

  const [errorMessage, setErrorMessage] = useState("")

  const { register, handleSubmit } = useForm();
  const onSubmit = data => {
    setErrorMessage("")
    if (data.street === "" || data.code === "" || data.city === "" || data.name === "" || data.info === "") {
      setErrorMessage('Alle Felder müssen ausgefüllt sein.')
    } else {

      let fullAddress = `${data.street} ${data.code} ${data.city}`
      axios.get(`https://api.geoapify.com/v1/geocode/search`, { params: { text: fullAddress, apiKey: "37a34965914146f99bbcf1df22ab7ee1" } })
        .then(res => {
          if (res.data.features.length == 0) {
            setErrorMessage("Adresse konnte nicht gefunden werden.")
          } else {
            let [longitude, latitude] = res.data.features[0].geometry.coordinates
            console.log(res.data.features[0].geometry.coordinates)
            let lolo = 
              {"name":`${data.name}`, "latitude":`${latitude}`, "longitude":`${longitude}`, "info":`${data.info}`}
            

            console.log(lolo)
            sendToBackend(lolo)

          }
        })

    }
  }

  const sendToBackend = (data) => {
    axios.post('http://localhost:8080/api/locations/add', data)
    .then((res) => {
      console.log(res)
    })
  }
  return (
    <Layout slug="/standorte">
      <div className="container">
        <div className="col7">
          <h1 style={{ marginBottom: 60 }}>Standorte</h1>
          <LocationTable />

        </div>
        <div className="col1" />
        <div className="col3">
          <h1 style={{ marginBottom: 60 }}>Standort hinzufügen</h1>
          <div>
            <form className="form-standort" onSubmit={handleSubmit(onSubmit)}>
              <div>
                <label htmlFor="name">Name:</label>
                <input id="name" {...register("name")} />
              </div>
              <div>
                <label htmlFor="street">Straße:</label>
                <input id="street" {...register("street")} />
              </div>
              <div>
                <label htmlFor="city">Ort:</label>
                <input id="city" {...register("city")} />
              </div>
              <div>
                <label htmlFor="code">PLZ:</label>
                <input id="code" {...register("code")} />
              </div>
              <div>
                <label htmlFor="info">Info:</label>
                <input id="info" {...register("info")} />
              </div>
              <Button text="Hinzufügen" type="primary" submit={true} disabled={false} align="center" />
              {errorMessage !== "" ? <p style={{ color: 'red', textAlign: "center", marginTop: 15, fontSize: 18, fontWeight: 600 }}>{errorMessage}</p> : undefined}
            </form>
          </div>
        </div>
        <div className="col1" />
      </div>

    </Layout>
  );
}

export default Page