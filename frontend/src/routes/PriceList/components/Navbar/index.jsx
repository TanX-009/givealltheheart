import { GiHamburgerMenu } from "react-icons/gi";
import LangDropdown from "../../../../components/LangDropdown";
import Profile from "../Profile";
import styles from "./styles.module.css";

export default function Navbar({ lang, setLang }) {
  return (
    <div className={styles.navbar}>
      <div className={styles.maxwidth}>
        <Profile dontShowOnMobile />
        <button className={styles.hamburgerButton}>
          <GiHamburgerMenu />
        </button>
        <LangDropdown selected={lang} setSelected={setLang} />
      </div>
    </div>
  );
}
