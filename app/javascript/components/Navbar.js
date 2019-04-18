import React from "react";
import PropTypes from "prop-types";
class Navbar extends React.Component {
  determineNavItemClass(name) {
    return "nav-item " + (this.props.path == name ? "active" : "");
  }
  render() {
    return (
      <nav className="navbar navbar-expand-lg navbar-light bg-light px-5">
        <div className="container">
          <a className="navbar-brand" href="/">
            PRAX
          </a>
          <button
            className="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span className="navbar-toggler-icon" />
          </button>

          <div className="collapse navbar-collapse" id="navbarSupportedContent">
            <ul className="navbar-nav mr-auto">
              <li className={this.determineNavItemClass("/")}>
                <a className="nav-link" href="/">
                  Home
                </a>
              </li>
              <li className={this.determineNavItemClass("/category/index")}>
                <a className="nav-link" href="/category/index">
                  Toolkits
                </a>
              </li>
            </ul>
            <form className="form-inline my-2 my-lg-0" method="GET" action="/toolkit/search">
              <input
                className="form-control mr-sm-2"
                type="search"
                placeholder="Search"
                aria-label="Search"
              />
              <button
                className="btn btn-outline-success my-2 my-sm-0"
                type="submit"
              >
                Search
              </button>
            </form>
          </div>
        </div>
      </nav>
    );
  }
}

export default Navbar;
