import { useState } from "react";
import Flag from "../Flag";
import styles from "./styles.module.css";

const languages = [
  {
    lang: "en",
    elem: (
      <>
        English <Flag country={"GB"} />
      </>
    ),
  },
  {
    lang: "sv",
    elem: (
      <>
        Svenska <Flag country={"SE"} />
      </>
    ),
  },
];

export default function LangDropdown({ selected, setSelected }) {
  const [isVisible, setIsVisible] = useState(false);
  return (
    <div className={styles.dropdown}>
      <button onClick={() => setIsVisible(!isVisible)}>
        {languages.find((elem) => elem.lang === selected).elem}
      </button>
      {isVisible ? (
        <div className={styles.dropdownContent}>
          {languages.map((item, index) => (
            <button
              key={index}
              onClick={() => {
                setSelected(item.lang);
                setIsVisible(false);
              }}
            >
              {item.elem}
            </button>
          ))}
        </div>
      ) : null}
    </div>
  );
}
