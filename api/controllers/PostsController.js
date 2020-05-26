postsService = require('../services/postsService');
module.exports = {
    async getPosts(req, res) {
        let allPosts = await postsService.getAllPosts();
        let allPostCount = await postsService.getAllPostCount();
        return res.ok({message:"Success", data:allPosts, totalPostCount:allPostCount});
    },
    async getPostDetails(req, res){
        
        let singlePost = await postsService.getSinglePost(req.param('postid'));
        return res.ok({message:"Success", data:singlePost});
    },

    async createNewPost(req, res) {

        let postCreated = await postsService.submitPost(req.body);
        return res.ok({message:"Post created successfullt"});
    }
}