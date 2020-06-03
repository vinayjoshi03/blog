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
    async createUser(req, res) {
        let postCreated = await usersService.createUser(req.body);
        
        return res.ok({message:"Post created successfullt"});
    },

    async loginAction(req, res){
        let userDetails = await usersService.getUserByUsername(req.body.username)
        console.log("User details--->", userDetails);

        let postCreated = await usersService.checkUser(req.body.password, userDetails.password);
        console.log("validate check--->", postCreated);
        return res.ok({message:"User logged in successfully"});
    }
}