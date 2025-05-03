import axios from "axios";
import { useEffect, useState } from "react";
import Navbar from "./components/Navbar";

export default function PriceList() {
  const [tr, setTr] = useState({});
  const [lang, setLang] = useState("en");
  useEffect(() => {
    const fetch = async () => {
      const data = await axios.get(
        `http://localhost:5000/translate?language=${lang}&page=terms`,
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
    <div>
      <Navbar lang={lang} setLang={setLang} />
    </div>
  );
}
