import React, { Component } from "react";

export default class NewCategoryButton extends Component {
  render() {
    return (
      <div className="new-category-button" id="add_category_button">
        <a href="/category/new">
          <div className="button-content">
            <i className="fa fa-plus-circle" aria-hidden="true" />
            <br />
            Add a new category
          </div>
        </a>
      </div>
    );
  }
}
