import React, { Component } from "react";

export default class ToolkitCardView extends Component {
  constructor(props) {
    super(props);
    this.state = {
      images: [
        "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3300&q=80",
        "https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        "https://images.unsplash.com/photo-1472289065668-ce650ac443d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        "https://images.unsplash.com/photo-1501504905252-473c47e087f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        "https://images.unsplash.com/photo-1497215842964-222b430dc094?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
        "https://images.unsplash.com/photo-1488998427799-e3362cec87c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"
      ]
    };
  }
  renderCardBody(link) {
    return (
      <div className="card-body">
        <h5 className="card-title">{this.props.info.title}</h5>
        <p className="card-text">{this.props.info.overview}</p>
        <a href={link} className="btn btn-primary">
          View More
        </a>
      </div>
    );
  }
  render() {
    let rand = Math.floor(Math.random() * this.state.images.length);
    let randimg = this.state.images[rand];
    let link =
      "/category/" + this.props.info.category + "/" + this.props.info.id;
    return (
      <div
        className="card"
        style={{
          height: "420px",
          boxShadow: "1px 1px 8px rgb(211,211,211)",
          borderRadius: "15px",
          overflow: "hidden"
        }}
      >
        <img
          className="card-img-top"
          src={randimg}
          alt="Card image cap"
          style={{ height: "250px" }}
        />
        {this.renderCardBody(link)}
      </div>
    );
  }
}
