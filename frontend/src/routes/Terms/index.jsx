import { useEffect, useState } from "react";
import Navbar from "./components/Navbar";
import styles from "./styles.module.css";
import axios from "axios";

export default function Terms() {
  const [tr, setTr] = useState([]);
  const [lang, setLang] = useState("en");

  useEffect(() => {
    const fetch = async () => {
      const data = await axios.get(
        `http://localhost:5000/translate?language=${lang}&page=terms`,
      );
      setTr(data.data.items);
    };

    fetch();
  }, [lang]);
  console.log(tr);
  //storage.123fakturera.se/public/wallpapers/sverige43.jpg
  return (
    <div className={styles.terms}>
      <img
        src="https://storage.123fakturera.se/public/wallpapers/sverige43.jpg"
        alt="bg"
        className={styles.bg}
      />

      <Navbar />
      <h1>Terms</h1>
      <button className={styles.back}>Close and Go Back</button>
      <div className={styles.text}>
        {tr.map((value, index) => {
          return <p key={index}>{value.value}</p>;
        })}
      </div>
      <button className={styles.back}>Close and Go Back</button>
    </div>
  );
}
