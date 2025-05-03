import { useEffect, useState } from "react";
import LangDropdown from "../../../../components/LangDropdown";
import styles from "./styles.module.css";

export default function Navbar({ lang, setLang, languages, tr }) {
  const [display, setDisplay] = useState("none");

  useEffect(() => {
    const mediaQuery = window.matchMedia("(max-width: 1280px)");

    const handleMediaChange = (e) => {
      setDisplay(e.matches ? "none" : "flex");
    };

    handleMediaChange(mediaQuery);
    mediaQuery.addEventListener("change", handleMediaChange);
    return () => mediaQuery.removeEventListener("change", handleMediaChange);
  }, []);

  return (
    <div className={styles.nav}>
      <img
        src="https://storage.123fakturera.se/public/icons/diamond.png"
        alt="Diamond"
        className={styles.diamond}
      />
      <div className={styles.right}>
        <button
          className={styles.hamburger}
          onClick={() => setDisplay(display === "flex" ? "none" : "flex")}
        >
          <svg
            stroke="currentColor"
            fill="currentColor"
            stroke-width="0"
            viewBox="0 0 24 24"
            class="navigation-svg"
            height="3em"
            width="3em"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path d="M4 6h16v2H4zm0 5h16v2H4zm0 5h16v2H4z"></path>
          </svg>
        </button>
        <div className={styles.buttons} style={{ display: display }}>
          <button>{tr?.home?.value}</button>
          <button>{tr?.order?.value}</button>
          <button>{tr?.our_customers?.value}</button>
          <button>{tr?.about_us?.value}</button>
          <button>{tr?.contact_us?.value}</button>
        </div>
        <LangDropdown selected={lang} setSelected={setLang} items={languages} />
      </div>
    </div>
  );
}
