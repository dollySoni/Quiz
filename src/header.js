import React from 'react';
import {  NavLink } from "react-router-dom";
const header=()=>{
 return (
  <nav>
      <NavLink exact activeClassName="active" to="http://localhost/quize/logout.php">
        Logout
      </NavLink>
</nav>

 )
}
export default header