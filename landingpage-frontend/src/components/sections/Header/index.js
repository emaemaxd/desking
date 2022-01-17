import React, { useState } from "react"
import * as styles from "./index.module.scss"
import Logo from "../../../images/logo.png"
import User from "../../../images/user-icon.png"
import UserBlack from "../../../images/user-icon-black.png"
import Logout from "../../../images/logout.png"
import BurgerClosed from "../../../images/burger_closed.png"
import BurgerOpen from "../../../images/burger_open.png"

import { Link } from "gatsby"

const Header = (props) => {

    const [burgerOpen, setBurgerOpen] = useState(false);

    return (
        <div className={`${styles.wrapper} ${props.hideMenu && styles.hideInner}`}>
            <div className={styles.logoWrapper}>
                <Link to="/">
                    <img className={styles.logo} alt="Desking Logo" src={Logo} />
                </Link>
            </div>
            <div className={styles.links}>
                <Link className={props.current === "/arbeitszeiten" && styles.active} to="/arbeitszeiten">Arbeitszeiten</Link>
                <Link className={props.current === "/urlaubsantraege" && styles.active} to="/urlaubsantraege">Urlaubsanträge</Link>
                <Link className={props.current === "/standorte" && styles.active} to="/standorte">Standorte</Link>
                <Link className={props.current === "/mitglieder" && styles.active} to="/mitglieder">Mitglieder</Link>
                <Link className={props.current === "/projekte" && styles.active} to="/projekte">Projekte</Link>
            </div>
            <div className={styles.icons}>
                <Link className={`${styles.userWrapper} ${props.current === "/profil" && styles.active}`} to="/profil">
                    <img style={{ width: 35, height: 35, marginLeft: 15, marginRight: 15 }} alt="Profil" src={props.current === "/profil" ? UserBlack : User} />
                </Link>
                <Link to="/login">
                    <img className={styles.hideOnMobile} style={{ width: 25 }} alt="Logout" src={Logout} />
                </Link>
                <div role="button" tabindex="0" onClick={e => setBurgerOpen(!burgerOpen)} onKeyDown={e => console.log(e)}>
                    <img className={styles.hideOnDesktop} style={{ width: 25 }} alt="Burger Menu" src={burgerOpen ? BurgerOpen : BurgerClosed} />
                </div>
            </div>

        </div>
    );
}

export default Header