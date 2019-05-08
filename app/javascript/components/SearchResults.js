import React, { Component } from "react";
import ToolkitCardView from "./ToolkitCardView";
import { renderToolkitList } from "./ToolkitsListPage";
// import { renderCards } from "./CategoryPage";
export class SearchResults extends Component {
  constructor(props) {
    super(props);

    this.state = {
      toolkits: this.props.toolkits,
      categoryList: this.props.categories,
      backgroundColor: ["#02b3e4", "#BF4C69", "#44A094", "#F4A54D", "#A36CDC"]
    };
  }
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
  }
  render() {
    return (
      <div>
        <div className="container">
          <div className="row">
            {renderToolkitList(this.state)}
          </div>
        </div>
        <div className="container py-5">
          <div className="row">
            {this.renderCards()}
          </div>
          </div>
      </div>
    );
  }
}

export default SearchResults;
