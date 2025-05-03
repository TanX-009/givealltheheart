import {
  FaClipboard,
  FaCog,
  FaFile,
  FaFileInvoice,
  FaTag,
  FaUpload,
  FaUser,
  FaUsersCog,
} from "react-icons/fa";
import { CiDiscount1 } from "react-icons/ci";

import { IoMdCloseCircle } from "react-icons/io";
import { MdLogout } from "react-icons/md";
import styles from "./styles.module.css";
import Profile from "../Profile";
export default function Menu({ dontShowOnMobile = false, tr }) {
  return (
    <div
      className={`${styles.menu} ${dontShowOnMobile ? styles.dontShowOnMobile : styles.dontShowOnDesktop}`}
    >
      <div className={styles.menuTitle}>{tr?.menu?.value}</div>
      <div className={styles.menuList}>
        <button className={styles.menuItem}>
          <FaFileInvoice /> {tr?.invoices?.value}
        </button>
        <button className={styles.menuItem}>
          <FaUser /> {tr?.customers?.value}
        </button>
        <button className={styles.menuItem}>
          <FaCog /> {tr?.my_business?.value}
        </button>
        <button className={styles.menuItem}>
          <FaFile /> {tr?.invoice_journal?.value}
        </button>
        <button className={`${styles.menuItem} ${styles.active}`}>
          <FaTag /> {tr?.price_list?.value}
        </button>
        <button className={styles.menuItem}>
          <FaFileInvoice /> {tr?.multiple_invoicing?.value}
        </button>
        <button className={styles.menuItem}>
          <IoMdCloseCircle /> {tr?.unpaid_invoices?.value}
        </button>
        <button className={styles.menuItem}>
          <CiDiscount1 /> {tr?.offer?.value}
        </button>
        <button className={styles.menuItem}>
          <FaClipboard /> {tr?.inventory_control?.value}
        </button>
        <button className={styles.menuItem}>
          <FaUsersCog /> {tr?.member_invoicing?.value}
        </button>
        <button className={styles.menuItem}>
          <FaUpload /> {tr?.import_export?.value}
        </button>
        <button className={styles.menuItem}>
          <MdLogout /> {tr?.logout?.value}
        </button>
      </div>
    </div>
  );
}
