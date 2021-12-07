import React from "react"
import * as styles from "./index.module.scss"
import Logo from "../../../images/logo.png"
import User from "../../../images/user-icon.png"
import UserBlack from "../../../images/user-icon-black.png"
import Logout from "../../../images/logout.png"
import { Link } from "gatsby"

const Header = (props) => {

    return (
        <div className={styles.wrapper}>
            <div className={styles.logoWrapper}>
                <img className={styles.logo} alt="Desking Logo" src={Logo} />
            </div>
            <div className={styles.links}>
                <Link className={props.current === "/arbeitszeiten" && styles.active} to="/arbeitszeiten">Arbeitszeiten</Link>
                <Link className={props.current === "/urlaubsantraege" && styles.active} to="/urlaubsantraege">Urlaubsanträge</Link>
                <Link className={props.current === "/standorte" && styles.active} to="/standorte">Standorte</Link>
                <Link className={props.current === "/mitglieder" && styles.active} to="/mitglieder">Mitglieder</Link>
                <Link className={props.current === "/projekte" && styles.active} to="/projekte">Projekte</Link>
            </div>
            <div className={styles.icons}>
                <Link className={props.current === "/profil" && styles.active} to="/profil" style={{ marginRight: 45 }}>
                    <img style={{ width: 35, height: 35, marginLeft: 15, marginRight: 15 }} alt="Profil" src={props.current === "/profil" ? UserBlack : User} />
                </Link>
                <img style={{ width: 25 }} alt="Logout" src={Logout} />
            </div>

        </div>
    );
}

export default Header