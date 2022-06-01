import React from "react"
import Layout from "../components/sections/layout"
import { useForm } from "react-hook-form"
import Button from "../components/elements/Button"
import LocationTable from "../components/elements/LocationTable"

const Page = () => {

  const { register, handleSubmit } = useForm();
 /* const onSubmit = data => console.log(data); */

  return (
    <Layout slug="/standorte">
      <div className="container">
        <div className="col7">
          <h1 style={{marginBottom: 60}}>Standorte</h1>
          <LocationTable />

        </div>
        <div className="col1" />
        <div className="col3">
          <h1 style={{ marginBottom: 60 }}>Standort hinzufügen</h1>
          <div>
            <form className="form-standort" onSubmit={console.log("gaga")/*handleSubmit(onSubmit())*/}>
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
              <Button text="Hinzufügen" type="primary" disabled={true} align="center" />
            </form>
          </div>
        </div>
        <div className="col1" />
      </div>

    </Layout>
  );
}

export default Page