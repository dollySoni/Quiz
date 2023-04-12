import React from "react";
import Quize from "./Quiz";
import { BrowserRouter as Router } from "react-router-dom";
import Header from "./header";

const App = () => {
  return (
    <Router>
      <div>
        <Header />
        <hr />
        <Quize />
      </div>
    </Router>
  );
};

export default App;
