import axios from "axios";
import { useEffect, useState } from "react";
import styles from "./styles.module.css";
import Navbar from "./components/Navbar";
import Menu from "./components/Menu";
import { HiOutlineDotsHorizontal } from "react-icons/hi";
import { FaPlus, FaPrint, FaSearch, FaToggleOn } from "react-icons/fa";
import Editor from "./components/Editor";

export default function PriceList() {
  const [tr, setTr] = useState({});
  const [lang, setLang] = useState("en");
  const [products, setProducts] = useState([]);

  useEffect(() => {
    const fetch = async () => {
      const data = await axios.get(
        `${import.meta.env.VITE_BACKEND_URL}/translate?language=${lang}&page=home`,
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
  useEffect(() => {
    const fetch = async () => {
      const data = await axios.get(
        `${import.meta.env.VITE_BACKEND_URL}/product`,
      );
      setProducts(data.data.items);
    };

    fetch();
  }, []);

  return (
    <div className={styles.pricelist}>
      <Navbar lang={lang} setLang={setLang} />
      <div className={styles.main}>
        <Menu dontShowOnMobile tr={tr} />
        <div className={styles.page}>
          <div className={styles.pageNav}>
            <div className={styles.search}>
              <div className={styles.searchBar}>
                <input type="text" placeholder="Search Article No" />
                <FaSearch />
              </div>
              <div className={styles.searchBar}>
                <input type="text" placeholder="Search Product" />
                <FaSearch />
              </div>
            </div>
            <div className={styles.functions}>
              <button>
                <span className={styles.funTitle}>
                  {tr?.new_product?.value}
                </span>{" "}
                <FaPlus />
              </button>
              <button>
                <span className={styles.funTitle}>{tr?.print_list?.value}</span>{" "}
                <FaPrint />
              </button>
              <button>
                <span className={styles.funTitle}>
                  {tr?.advanced_mode?.value}
                </span>{" "}
                <FaToggleOn />
              </button>
            </div>
          </div>
          <div className={styles.tableContainer}>
            <span className={styles.save}>
              *Press enter to save the entries
            </span>
            <table className={styles.table}>
              <thead>
                <tr>
                  <th className={styles.article}>Article No</th>
                  <th className={styles.product}>Product/Service</th>
                  <th className={`${styles.inPrice} ${styles.hideOnMobile}`}>
                    In Price
                  </th>
                  <th className={`${styles.price} ${styles.hideOnMobile}`}>
                    Price
                  </th>
                  <th className={`${styles.unit} ${styles.hideOnMobile}`}>
                    Unit
                  </th>
                  <th className={`${styles.inStock} ${styles.hideOnTablet}`}>
                    In Stock
                  </th>
                  <th className={`${styles.desc} ${styles.hideOnTablet}`}>
                    Description
                  </th>
                  <th className={styles.dotsth}></th>
                </tr>
              </thead>
              <tbody>
                {products.map((product, index) => (
                  <tr key={index}>
                    <td>
                      <Editor product={product} attribute={"articleNo"} />
                    </td>
                    <td>
                      <Editor product={product} attribute={"product"} />
                    </td>
                    <td className={styles.hideOnMobile}>
                      <Editor product={product} attribute={"inPrice"} />
                    </td>
                    <td className={styles.hideOnMobile}>
                      <Editor product={product} attribute={"price"} />
                    </td>
                    <td className={styles.hideOnMobile}>
                      <Editor product={product} attribute={"unit"} />
                    </td>
                    <td className={styles.hideOnTablet}>
                      <Editor product={product} attribute={"inStock"} />
                    </td>
                    <td className={styles.hideOnTablet}>
                      <Editor product={product} attribute={"description"} />
                    </td>
                    <td>
                      <button className={styles.dots} type="button">
                        <HiOutlineDotsHorizontal />
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  );
}
