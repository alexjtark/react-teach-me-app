var Search = React.createClass({
	componentWillMount(){
		this.fetchPosts();
	},

	fetchPosts() {

		$.ajax({
	      url: this.props.postsPath,
	      
	      dataType: 'json',
	      
	      success: function(data) {
	        this.setState({posts: data});
	      }.bind(this),

	      error: function(data) {
	      	this.setState({posts: []});
	      }.bind(this)
	    });
	},

	searchPosts(event) {
		if (event.target.value) {
			$.ajax({
		      url: this.props.searchPath+"?query="+event.target.value,
		      
		      dataType: 'json',
		      
		      success: function(data) {
		        this.setState({posts: data});
		      }.bind(this),

		      error: function(data) {
		      	this.setState({posts: []});
		      }.bind(this)
		    });
		}
		else{
			this.fetchPosts();
		}

	},
	
	getInitialState() {
		return { posts: [] };
	},

	render: function() {
		
		return (
			<div>
			<p>test</p>
				<Posts posts={this.state.posts} />
				<PostsSearch searchPath={this.props.searchPath} submitPath={this.searchPosts} cancelPath={this.fetchPosts}/>
			</div>
			);

	}
});