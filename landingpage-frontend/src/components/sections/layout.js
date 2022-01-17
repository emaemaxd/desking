import React from "react"
import "../../style/index.scss"
import Spacer from "../elements/Spacer"
import Header from "../sections/Header"

const Layout = (props) => {

    const hideMenu = props.hideMenu || false;

    return(
        <React.Fragment>
        <Header current={props.slug} hideMenu={hideMenu} />
        {props.children}
        <Spacer desktop={60} />
        </React.Fragment>
    )

}

export default Layout