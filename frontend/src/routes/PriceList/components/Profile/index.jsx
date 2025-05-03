import styles from "./styles.module.css";
import { FaUser } from "react-icons/fa";

export default function Profile({ dontShowOnMobile = false }) {
  return (
    <div
      className={`${styles.profile} ${dontShowOnMobile ? styles.dontShowOnMobile : styles.dontShowOnDesktop}`}
    >
      <div className={styles.logo}>
        <FaUser />
        <span className={styles.dot}></span>
      </div>
      <div className={styles.user}>
        <p>John Andre</p>
        <p className={styles.location}>Storfjord AS</p>
      </div>
    </div>
  );
}
