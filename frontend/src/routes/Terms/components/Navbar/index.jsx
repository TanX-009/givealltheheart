import styles from "./styles.module.css";

export default function Navbar() {
  return (
    <div className={styles.nav}>
      <img
        src="https://storage.123fakturera.se/public/icons/diamond.png"
        alt="Diamond"
        className={styles.diamond}
      />
      <div className={styles.buttons}>
        <button>Home</button>
        <button>Order</button>
        <button>Our Customers</button>
        <button>About Us</button>
        <button>Contact Us</button>
        <button>English</button>
      </div>
    </div>
  );
}
