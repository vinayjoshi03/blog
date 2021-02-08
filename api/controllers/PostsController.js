postsService = require('../services/postsService');
module.exports = {
    async getPosts(req, res) {
        let allPosts = await postsService.getAllPosts(req.body.pageNumber);
        let allPostCount = await postsService.getAllPostCount();
        return res.ok({ message: "Success", data: allPosts, totalPostCount: allPostCount });
    },
    async getPostDetails(req, res) {

        let singlePost = await postsService.getSinglePost(req.param('postid'));
        return res.ok({ message: "Success", data: singlePost });
    },

    async createNewPost(req, res) {
        console.log("API Log-->",req.body);
        let postCreated = await postsService.submitPost(req.body.postData);
        
        let allPostCount = await postsService.getAllPostCount();
        let allPosts = await postsService.getAllPosts(req.body.additionalData.pageNumber);
        return res.ok({ message: "Post created successfullt", data:{totalPost:allPostCount, allPosts: allPosts} });
    },

    async deletePost(req, res) {
        let postDeleted = await postsService.deletePost(req.body);
        if (postDeleted !== undefined) {
            return res.ok({ message: "Post created successfullt ", data: postDeleted });
        } else {
            return res.error();({ message: "Unable to delete post", data: postDeleted });
        }
    }
}