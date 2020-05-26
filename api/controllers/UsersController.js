postsService = require('../services/postsService');
usersService = require('../services/usersService');
module.exports = {
    async getPosts(req, res) {
        let allPosts = await postsService.getAllPosts();
        return res.ok({message:"Success", data:allPosts});
    },
    async getPostDetails(req, res){
        
        let singlePost = await postsService.getSinglePost(req.param('postid'));
        return res.ok({message:"Success", data:singlePost});
    },

    async createNewPost(req, res) {

        let postCreated = await postsService.submitPost(req.body);
        return res.ok({message:"Post created successfullt"});
    },

    async loginAction(req, res){
        let postCreated = await usersService.login(req.body);
        return res.ok({message:"Post created successfullt"});
    }
}