var Category = React.createClass({


  render: function() {
    return             <div className="content-boxes-v3 categories-main margin-bottom-10 md-margin-bottom-20">
          
              <div className="content-boxes-in-v3">
                <h3><a href={"/categories/" + this.props.id}>{this.props.category}</a> ({this.props.subcategory})</h3>
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium</p>
              </div>
            </div>;
  }
});

