import styles from "./styles.module.css";

export default function Flag({ country }) {
  return (
    <img
      src={`https://storage.123fakturere.no/public/flags/${country}.png`}
      alt={country}
      className={styles.flag}
    />
  );
}
