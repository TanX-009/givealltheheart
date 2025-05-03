import { GiHamburgerMenu } from "react-icons/gi";
import LangDropdown from "../../../../components/LangDropdown";
import Profile from "../Profile";
import styles from "./styles.module.css";
import Menu from "../Menu";
import { useState } from "react";

export default function Navbar({ lang, setLang, tr }) {
  const [isOpen, setIsOpen] = useState(false);
  return (
    <div className={styles.navbar}>
      <div className={styles.maxwidth}>
        <Profile dontShowOnMobile />
        <button
          className={styles.hamburgerButton}
          onClick={() => setIsOpen(!isOpen)}
        >
          <GiHamburgerMenu />
        </button>
        <LangDropdown selected={lang} setSelected={setLang} />
      </div>
      {isOpen ? <Menu className={styles.menu} tr={tr} /> : null}
    </div>
  );
}
