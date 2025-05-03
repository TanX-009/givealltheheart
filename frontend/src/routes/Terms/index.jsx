import { useEffect, useState } from "react";
import Navbar from "./components/Navbar";
import styles from "./styles.module.css";
import axios from "axios";
import Flag from "../../components/Flag";

export default function Terms() {
  const [tr, setTr] = useState({});
  const [lang, setLang] = useState("en");

  useEffect(() => {
    const fetch = async () => {
      const data = await axios.get(
        `${import.meta.env.VITE_BACKEND_URL}/translate?language=${lang}&page=terms`,
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
    <div className={styles.terms}>
      <img
        src="https://storage.123fakturera.se/public/wallpapers/sverige43.jpg"
        alt="bg"
        className={styles.bg}
      />

      <Navbar lang={lang} setLang={setLang} tr={tr} />
      <h1 className={styles.title}>{tr?.terms?.value}</h1>
      <button className={styles.back}>{tr?.close_and_go_back?.value}</button>
      <div className={styles.text}>
        <p>
          <b>{tr?.terms_0?.value} </b>
          {tr?.terms_1?.value}
        </p>
        <p>{tr?.terms_2?.value}</p>
        <p>{tr?.terms_3?.value}</p>
        <div className={styles.gap}></div>
        <p>{tr?.terms_4?.value}</p>
        <p>{tr?.terms_5?.value}</p>
        <div className={styles.gap}></div>
        <p>{tr?.terms_6?.value}</p>
        <p>{tr?.terms_7?.value}</p>
        <p>{tr?.terms_8?.value}</p>
        <p>{tr?.terms_9?.value}</p>
        <p>{tr?.terms_10?.value}</p>
        <p>{tr?.terms_11?.value}</p>
        <p>{tr?.terms_12?.value}</p>
        <p>{tr?.terms_13?.value}</p>
        <p>{tr?.terms_14?.value}</p>
        <p>{tr?.terms_15?.value}</p>
        <p>{tr?.terms_16?.value}</p>
        <p>{tr?.terms_17?.value}</p>
        <p>{tr?.terms_18?.value}</p>
        <p>{tr?.terms_19?.value}</p>
        <p>{tr?.terms_20?.value}</p>
        <p>{tr?.terms_21?.value}</p>
        <p>{tr?.terms_22?.value}</p>
        <p>{tr?.terms_23?.value}</p>
        <p>{tr?.terms_24?.value}</p>
        <p>{tr?.terms_25?.value}</p>
        <p>{tr?.terms_26?.value}</p>
      </div>
      <button className={styles.back}>{tr?.close_and_go_back?.value}</button>
    </div>
  );
}
