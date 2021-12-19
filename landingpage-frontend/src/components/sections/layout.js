import React from "react"
import "../../style/index.scss"
import Spacer from "../elements/Spacer"
import Header from "../sections/Header"

const Layout = (props) => {

    return(
        <React.Fragment>
        <Header current={props.slug} />
        {props.children}
        <Spacer desktop={60} />
        </React.Fragment>
    )

}

export default Layout