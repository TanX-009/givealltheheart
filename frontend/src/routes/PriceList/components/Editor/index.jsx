import axios from "axios";
import { useState } from "react";
import styles from "./styles.module.css";

export default function Editor({ product, attribute }) {
  const [message, setMessage] = useState("");

  const updateProduct = async (event) => {
    event.preventDefault();
    if (event.target[attribute].value === product[attribute]) {
      setMessage("No changes!");
      setTimeout(() => {
        setMessage("");
      }, 2000);
      return;
    }

    setMessage("Saving...");

    const data = await axios.patch(
      `${import.meta.env.VITE_BACKEND_URL}/product`,
      {
        ...product,
        [attribute]: event.target[attribute].value,
      },
    );

    if (data.data.success) {
      setMessage("Saved!");
    } else {
      setMessage("Error!");
    }

    setTimeout(() => {
      setMessage("");
    }, 2000);
  };

  return (
    <form onSubmit={updateProduct}>
      {message !== "" ? <p>{message}</p> : null}
      <input
        className={styles.input}
        type="text"
        name={attribute}
        defaultValue={product[attribute]}
      />
    </form>
  );
}
