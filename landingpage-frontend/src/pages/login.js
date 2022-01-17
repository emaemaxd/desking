import React from "react"
import Layout from "../components/sections/layout"
import Logo from "../images/logo.png"
import User from "../images/user-icon-black.png"
import Lock from "../images/lock.png"
import Button from "../components/elements/Button"



const Page = () => {

    return (
        <Layout slug="/login" hideMenu={true}>
            <div className="container">
                <div className="col3" />
                <div className="col6 login-wrapper" >
                    <img style={{width: 46, height: 46, marginBottom: 30}} src={Logo} alt="Desking Logo" />
                    <div>
                    <img style={{width: 50, height: 50}} src={User} alt="E-Mail" />
                    <input type="text" placeholder="Email" />
                    </div>
                    <div>
                    <img style={{width: 50, height: 50}} src={Lock} alt="Passwort" />
                    <input type="text" placeholder="Passwort" />
                    </div>
                    <div className="login-helpline">
                        <div>
                            <input id="remember_user" type="checkbox" />
                            <label htmlFor="remember_user">Automatisch einloggen</label> 
                        </div>
                        <div>
                            <Button type="tertiary" text="Passwort vergessen?" />
                        </div>
                    </div>
                    <Button type="primary" text="Login" target="/" />
                </div>
                <div className="col3" />
            </div>
        </Layout>
    );
}

export default Page
