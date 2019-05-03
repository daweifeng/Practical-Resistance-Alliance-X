import React, { Component } from "react";

export class LandingPage extends Component {
  render() {
    return (
      <div className="landing">
        <div className="text-center landing-center">
          <h1>Practical Resistance Alliance X</h1>
            <a href="/category/index" className="btn btn-primary" style={{ padding: "1rem"}}>GET STARTED</a>
        </div>
      </div>
    );
  }
}

export default LandingPage;
