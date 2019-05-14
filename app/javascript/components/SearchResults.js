import React, { Component } from "react";
import ToolkitCardView from "./ToolkitCardView";
import { renderToolkitList } from "./ToolkitsListPage";
import { renderCards } from "./CategoryPage";
export class SearchResults extends Component {
  constructor(props) {
    super(props);

    this.state = {
      toolkits: this.props.toolkits,
      categoryList: this.props.categories,
      backgroundColor: ["#02b3e4", "#BF4C69", "#44A094", "#F4A54D", "#A36CDC"]
    };
  }
  render() {
    return (
      <div>
        <div className="toolkits-list-header pt-5">
          <i className="fa fa-search" aria-hidden="true" />
          <h1>Search Results for '{this.props.search_term}'</h1>
          <hr />
        </div>
        <div className="container py-5">
          <div className="row">
            <h5>Relevant Categories</h5>
          </div>
          <div className="row">{renderCards(this.state)}</div>
        </div>
        <div className="container">
          <div className="row">
            <h5>Relevant Toolkits</h5>
          </div>
          <div className="row">{renderToolkitList(this.state)}</div>
        </div>
      </div>
    );
  }
}

export default SearchResults;
