import axios from "axios";
import { useEffect, useState } from "react";
import styles from "./styles.module.css";
import Navbar from "./components/Navbar";
import Menu from "./components/Menu";

export default function PriceList() {
  const [tr, setTr] = useState({});
  const [lang, setLang] = useState("en");
  useEffect(() => {
    const fetch = async () => {
      const data = await axios.get(
        `http://localhost:5000/translate?language=${lang}&page=home`,
      );
      const items = data.data.items;
      const translations = {};
      for (let i of items) {
        translations[i.key] = i;
      }
      setTr(translations);
    };

    fetch();
  }, [lang]);
  return (
    <div className={styles.pricelist}>
      <Navbar lang={lang} setLang={setLang} />
      <div className={styles.main}>
        <Menu dontShowOnMobile tr={tr} />
        <div className={styles.page}></div>
      </div>
    </div>
  );
}
