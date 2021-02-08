var _ = require('lodash');
module.exports = {
    getAllPosts(currentPage=0) {
        const limit = 5;
        const skip = limit*currentPage;
        response = Posts.find({ where: { status: 1 }, limit: limit, skip: skip }).sort('createdAt DESC');
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