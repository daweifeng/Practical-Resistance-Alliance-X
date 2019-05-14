import React, { Component } from "react";
import NewCategoryButton from "./NewCategoryButton";

export function renderCards(state) {
  const backgroundColor = state.backgroundColor;
  return state.categoryList.map((category, index) => {
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

export class CategoryPage extends Component {
  constructor(props) {
    super(props);

    this.state = {
      categoryList: this.props.categories,
      backgroundColor: ["#02b3e4", "#BF4C69", "#44A094", "#F4A54D", "#A36CDC"]
    };
  }

  render() {
    return (
      <div className="container">
        <div className="text-center category-slogan">
          <h1 className="mb-4">Toolkits Category</h1>
          <h5 className="mb-4">What toolkits do you want to follow today?</h5>
          <h5 className=" font-weight-bolder">I want to use...</h5>
        </div>
        <div className="container py-5">
          <div className="row">
            <div className="col-md-4">
              <NewCategoryButton />
            </div>
            {renderCards(this.state)}
          </div>
        </div>
      </div>
    );
  }
}

export default CategoryPage;
