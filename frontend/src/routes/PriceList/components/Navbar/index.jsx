import LangDropdown from "../../../../components/LangDropdown";
import Profile from "../Profile";
import styles from "./styles.module.css";

export default function Navbar({ lang, setLang }) {
  return (
    <div className={styles.navbar}>
      <div className={styles.maxwidth}>
        <Profile />
        <LangDropdown selected={lang} setSelected={setLang} />
      </div>
    </div>
  );
}
