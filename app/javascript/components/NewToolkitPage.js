import React, { Component } from "react";
import NewStepComponent from "./NewStepComponent";

export default class NewToolkitPage extends Component {
  constructor(props) {
    super(props);

    this.stepsRef = React.createRef();
    const { edit } = this.props;
    const { toolkit } = this.props;
    this.state = {
      edit,
      categories: this.props.categories,
      title: edit ? toolkit.title : "",
      overview: edit ? toolkit.overview : "",
      category: edit ? toolkit.category : ""
    };
    this.handleChange = this.handleChange.bind(this);
  }

  renderCategories() {
    return this.state.categories.map(category => {
      return <option key={category}>{category}</option>;
    });
  }

  handleChange(e) {
    const { name, value } = e.target;
    this.setState({ [name]: value });
  }
  handleOnSubmit(e) {
    e.preventDefault();
    // pack data
    const { steps } = this.stepsRef.current.state;
    const toolkit_data = {
      title: this.state.title,
      overview: this.state.overview,
      category: this.state.category,
      steps
    };
    if (this.state.edit) {
      toolkit_data["id"] = this.props.toolkit.id;
    }
    // get csrfToken
    const csrfToken = document.querySelector('[name="csrf-token"]').content;
    // Make request
    let url = this.state.edit
      ? `/toolkit/${this.props.toolkit.id}`
      : "/toolkit";
    let method = this.state.edit ? "PUT" : "POST";
    fetch(url, {
      method,
      body: JSON.stringify(toolkit_data),
      headers: new Headers({
        "Content-Type": "application/json",
        "X-CSRF-Token": csrfToken
      })
    })
      .then(res => {
        if (res.redirected) {
          window.location.replace(res.url);
        }
      })
      .catch(error => console.error("Error:", error))
      .then(response => console.log("Success:", response));
  }

  renderFormTitle() {
    return (
      <div>
        <label htmlFor="title">Title:</label>
        <input
          className="form-control"
          name="title"
          value={this.state.title}
          onChange={this.handleChange}
          placeholder="Enter the title here"
        />
      </div>
    );
  }

  renderFormOverview() {
    return (
      <div>
        <label htmlFor="overview">Overview:</label>
        <textarea
          className="form-control"
          name="overview"
          value={this.state.overview}
          onChange={this.handleChange}
          placeholder="Enter the overview here"
          style={{ height: "300px" }}
        />
      </div>
    );
  }

  renderFormCategory() {
    return (
      <div className="form-group">
        <label htmlFor="categoryTag">Category:</label>
        <select
          className="form-control"
          name="category"
          onChange={this.handleChange}
          value={this.state.category}
        >
          <option value="">-- Please Choose a Category --</option>
          {this.renderCategories()}
        </select>
      </div>
    );
  }

  renderHeader() {
    return this.props.edit ? (
      <h2>Update The Toolkit</h2>
    ) : (
      <h2>Create a New Toolkit</h2>
    );
  }
  render() {
    return (
      <div className="container" id="uploadToolkit">
        {this.renderHeader()}
        <form role="main">
          {this.renderFormTitle()}
          {this.renderFormOverview()}
          {this.renderFormCategory()}
          <div className="form-group">
            <label htmlFor="steps">Steps:</label>
            <NewStepComponent
              ref={this.stepsRef}
              edit={this.props.edit}
              steps={this.props.steps}
            />
          </div>
          <div className="mx-auto my-3" style={{ width: "100px" }}>
            <button
              type="submit"
              className="btn btn-primary"
              onClick={this.handleOnSubmit.bind(this)}
            >
              {this.props.edit ? "Update" : "Submit"}
            </button>
          </div>
        </form>
      </div>
    );
  }
}
