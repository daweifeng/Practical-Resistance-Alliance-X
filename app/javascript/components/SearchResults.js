import React, { Component } from "react";
import ToolkitCardView from "./ToolkitCardView";
import { renderToolkitList } from "./ToolkitsListPage";
<<<<<<< HEAD
// import { renderCards } from "./CategoryPage";
=======
import { renderCards } from "./CategoryPage";
>>>>>>> 40153d279adea22a912b84447d4d4b525c5f518e
export class SearchResults extends Component {
  constructor(props) {
    super(props);

    this.state = {
      toolkits: this.props.toolkits,
      categoryList: this.props.categories,
      backgroundColor: ["#02b3e4", "#BF4C69", "#44A094", "#F4A54D", "#A36CDC"]
    };
  }
<<<<<<< HEAD
  renderCards() {
    const backgroundColor = this.state.backgroundColor;
    return this.state.categoryList.map((category, index) => {
      return (
        <div className="col-md-4" key={category}>
          <a href={`/category/${category}`} style={{ textDecoration: "None" }}>
            <div
              className="category-card"
              style={{
                background: `${backgroundColor[index % backgroundColor.length]}`
              }}
            >
              <h5>{category}</h5>
            </div>
          </a>
        </div>
      );
    });
=======
  renderElements(str) {
    return (
      <div className="container py-5">
        <div className="row">
          <h5>Relevant {str}</h5>
        </div>
        <div className="row">
          {str == "Categories"
            ? renderCards(this.state)
            : renderToolkitList(this.state)}
        </div>
      </div>
    );
>>>>>>> 40153d279adea22a912b84447d4d4b525c5f518e
  }
  render() {
    return (
      <div>
        <div className="toolkits-list-header pt-5">
          <i className="fa fa-search" aria-hidden="true" />
          <h1>Search Results for '{this.props.search_term}'</h1>
          <hr />
<<<<<<< HEAD
        </div>
        <div className="container py-5">
          <div className="row">
            <h5>Relevant Categories</h5>
          </div>
          <div className="row">
            {this.renderCards()}
          </div>
        </div>
        <div className="container">
          <div className="row">
            <h5>Relevant Toolkits</h5>
          </div>
          <div className="row">
            {renderToolkitList(this.state)}
          </div>
        </div>
        
=======
        </div>
        {this.renderElements("Categories")}
        {this.renderElements("Toolkits")}
>>>>>>> 40153d279adea22a912b84447d4d4b525c5f518e
      </div>
    );
  }
}

export default SearchResults;
