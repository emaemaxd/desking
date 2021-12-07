import React from "react"
import "../../style/index.scss"
import Header from "../sections/Header"

const Layout = (props) => {

    return(
        <React.Fragment>
        <Header current={props.slug} />
        {props.children}
        </React.Fragment>
    )

}

export default Layout