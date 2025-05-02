import styles from "./styles.module.css";

export default function Navbar() {
  return (
    <nav className={styles.nav}>
      <img
        src="https://storage.123fakturera.se/public/icons/diamond.png"
        alt="Diamond"
        className={styles.diamond}
      />
      <div>
        <button>Home</button>
        <button>Order</button>
        <button>Our Customers</button>
        <button>About Us</button>
        <button>Contact Us</button>
      </div>
    </nav>
  );
}
