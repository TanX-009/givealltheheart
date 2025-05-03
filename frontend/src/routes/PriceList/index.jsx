import axios from "axios";
import { useEffect, useState } from "react";
import styles from "./styles.module.css";
import Navbar from "./components/Navbar";
import Menu from "./components/Menu";
import { HiOutlineDotsHorizontal } from "react-icons/hi";
import { FaPlus, FaPrint, FaSearch, FaToggleOn } from "react-icons/fa";

export default function PriceList() {
  const [tr, setTr] = useState({});
  const [lang, setLang] = useState("en");
  const [products, setProducts] = useState([]);

  useEffect(() => {
    const fetch = async () => {
      const data = await axios.get(
        `http://localhost:5000/translate?language=${lang}&page=home`,
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
      const data = await axios.get(`http://localhost:5000/product`);
      setProducts(data.data.items);
    };

    fetch();
  }, []);
  console.log(products);

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
            <table className={styles.table}>
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
              {products.map((item, index) => (
                <tr key={index}>
                  <td>
                    <input
                      type="text"
                      name="articleNo"
                      defaultValue={item.articleNo}
                    />
                  </td>
                  <td>
                    <input
                      type="text"
                      name="product"
                      defaultValue={item.product}
                    />
                  </td>
                  <td className={styles.hideOnMobile}>
                    <input
                      type="number"
                      name="inPrice"
                      defaultValue={item.inPrice}
                    />
                  </td>
                  <td className={styles.hideOnMobile}>
                    <input
                      type="number"
                      step="0.01"
                      name="price"
                      defaultValue={item.price}
                    />
                  </td>
                  <td className={styles.hideOnMobile}>
                    <input type="text" name="unit" defaultValue={item.unit} />
                  </td>
                  <td className={styles.hideOnTablet}>
                    <input
                      type="number"
                      name="inStock"
                      defaultValue={item.inStock}
                    />
                  </td>
                  <td className={styles.hideOnTablet}>
                    <input
                      type="text"
                      name="description"
                      defaultValue={item.description}
                    />
                  </td>
                  <td>
                    <button className={styles.dots} type="button">
                      <HiOutlineDotsHorizontal />
                    </button>
                  </td>
                </tr>
              ))}
            </table>
          </div>
        </div>
      </div>
    </div>
  );
}
