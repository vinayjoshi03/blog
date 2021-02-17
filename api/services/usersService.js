var _ = require('lodash');
var bcrypt = require('bcrypt');
module.exports = {
    async getUserByUsername(username) {
        //response = Users.findOne({where:{username:username}, omit:['passwprd']});
        response = await Users.findOne({
            where: { username: username },
            select: ['username', 'id', 'token', 'password']
        });
        //const result = Object.values(JSON.parse(JSON.stringify(response)));
        return response;
    },
    login(data) {
        response = Users.findOne({ username: data.username, password: data.password });
        return response;
    },
    async createUser(data) {
        bcrypt.hash(data.password, 10).then(function (hash) {
            // Store hash in your password DB.
            data.password = hash;
            Users.create(data).then(function (result) {
                return result;
            }).catch(function (error) {
                console.log("response --->", error);
            });
        });
    },
    async checkUser(password, hash) {
        if (await bcrypt.compare(password, hash)) {
            return true;
        } else {
            return false;
        }
    }
}