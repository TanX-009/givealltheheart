import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { BrowserRouter, Route, Routes } from "react-router";

import "./styles/colors.css";
import "./styles/utopia.font.css";
import "./styles/utopia.space.css";
import "./styles/globals.vars.css";
import "./styles/globals.css";
import "./styles/variables.css";

import Terms from "./routes/Terms/index.jsx";
import PriceList from "./routes/PriceList/index.jsx";

createRoot(document.getElementById("root")).render(
  <StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/terms" element={<Terms />} />
        <Route path="/" element={<PriceList />} />
      </Routes>
    </BrowserRouter>
  </StrictMode>,
);
