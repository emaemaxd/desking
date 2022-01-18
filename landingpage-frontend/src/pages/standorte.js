import React from "react"
import Layout from "../components/sections/layout"
import { useForm } from "react-hook-form"
import Button from "../components/elements/Button"

const Page = () => {

  const { register, handleSubmit } = useForm();
  const onSubmit = data => console.log(data);

  return (
    <Layout slug="/standorte">
      <div className="container">
        <div className="col7">
          <h1 style={{marginBottom: 60}}>Standorte</h1>
          <table className="has-checkbox">
            <tr>
              <th className="checkbox-column"><input aria-label="Alle auswählen" type="checkbox" /></th>
              <th>Name</th>
              <th>Anschrift</th>
              <th>Info</th>
            </tr>
            <tr>
              <td className="checkbox-column"><input aria-label="Auswählen" type="checkbox" /></td>
              <td>Büro #1</td>
              <td>Waltherstraße 7<br />4020 Linz</td>
              <td>Sonntags gesperrt</td>
            </tr>
            <tr>
              <td className="checkbox-column"><input aria-label="Auswählen" type="checkbox" /></td>
              <td>Büro #2</td>
              <td>Landstraße 32<br />4020 Linz</td>
              <td></td>
            </tr>
            <tr>
              <td className="checkbox-column"><input aria-label="Auswählen" type="checkbox" /></td>
              <td>Kunde XY</td>
              <td>Salzburgerstraße 32<br />4600 Wels</td>
              <td>Hauptbüro</td>
            </tr>
            <tr>
              <td className="checkbox-column"><input aria-label="Auswählen" type="checkbox" /></td>
              <td>Kopiergeschäft</td>
              <td>Waltherstraße 13<br />4020 Linz</td>
              <td>Firmenrabatt</td>
            </tr>
          </table>

        </div>
        <div className="col1" />
        <div className="col3">
          <h1 style={{ marginBottom: 60 }}>Standort hinzufügen</h1>
          <div>
            <form className="form-standort" onSubmit={handleSubmit(onSubmit())}>
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
