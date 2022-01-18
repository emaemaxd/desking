import React from "react"
import "../../style/index.scss"
import Header from "../sections/Header"

const Layout = (props) => {

    const hideMenu = props.hideMenu || false;

    return(
        <React.Fragment>
        <Header current={props.slug} hideMenu={hideMenu} />
        {props.children}
        </React.Fragment>
    )

}

export default Layout