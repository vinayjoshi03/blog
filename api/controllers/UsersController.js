postsService = require('../services/postsService');
usersService = require('../services/usersService');
module.exports = {
    async createUser(req, res) {
        let postCreated = await usersService.createUser(req.body);

        return res.ok({ message: "Post created successfullt" });
    },

    async loginAction(req, res) {
        try {
            let userDetails = await usersService.getUserByUsername(req.body.username);
            const userFound = await usersService.checkUser(req.body.password, userDetails.password);
            if (userFound) {
                return res.ok({ message: "User logged in successfully", userDetails: userDetails });
            } else {
                return res.ok({ message: "User not found 111", userDetails: [] });
            }
        } catch (error) {
            return res.ok({ message: "User not found 222", userDetails: [] });
        }
    }
}