import styles from "./styles.module.css";
import { FaUser } from "react-icons/fa";

export default function Profile({ showOnDesktop = true }) {
  return (
    <div
      className={`${styles.profile} ${showOnDesktop ? styles.showOnDesktop : styles.hideOnDesktop}`}
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
