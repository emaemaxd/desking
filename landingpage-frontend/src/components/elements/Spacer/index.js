import React from "react"

const Spacer = (props) => {

    const desktop = props.desktop || 0;

    return (
        <div style={{display: "block", height: desktop, width: "100%"}} />
    )

}


export default Spacer