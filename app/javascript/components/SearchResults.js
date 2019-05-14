import React, { Component } from "react";
import ToolkitCardView from "./ToolkitCardView";
import { renderToolkitList } from "./ToolkitsListPage";
export class SearchResults extends Component {
  constructor(props) {
    super(props);

    this.state = {
      toolkits: this.props.toolkits
    };
  }
  render() {
    return (
      <div>
        <div className="container">
          <div className="row">{renderToolkitList(this.state)}</div>
        </div>
      </div>
    );
  }
}

export default SearchResults;
