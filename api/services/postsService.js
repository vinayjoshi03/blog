var _ = require('lodash');
module.exports = {
    getAllPosts() {
        response = Posts.find().sort('createdAt DESC');
        return response;
    },
    getSinglePost(postid) {
        response = Posts.findOne({ id: postid });
        return response;
    },
    submitPost(data) {
        response = Posts.create({ title: data.title, description: data.description, status: data.status });
        return response;
    },
    getAllPostCount() {
        response = Posts.count({ status: 1 });
        return response;
    },
    deletePost(data) {
        return Posts.destroyOne({where:data});
    }
}