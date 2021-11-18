import { Link } from "gatsby";
import * as React from "react"
import Logo from "../images/logo.png"
import "../style/index.scss"

const Page = () => {

  const link_git_text = "➞ ..und unser GitHub Repo finden Sie hier "

  return (
    <>
    <img src={Logo} alt="Desking Logo" />
    <h1>Wilkommen auf der Desking Landing page</h1>
    <p>Unsere Webpräsenz wird aktuell eingerichtet. Bitte schauen Sie später vorbei! :)</p>
    <br/>
    <br />
    <Link className="button tertiary" to="https://github.com/emaemaxd/desking">und unser GitHub Repo finden Sie hier </Link>
    <br />
    <br />
    <p className="footerline"><i>Desking © HTBLA Leonding, 4BHITM</i></p>
    </>
  );
}

export default Page
