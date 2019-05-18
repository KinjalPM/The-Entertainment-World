var express = require('express');
var router = express.Router();

// Require the controllers WHICH WE DID NOT CREATE YET!!
var user_controller = require('../controllers/user');


// a simple test url to check that all of our files are communicating correctly.
//router.get('/test', user_controller.test);

router.get('/test', user_controller.movie_details);
router.get('/users', user_controller.user_details);
router.get('/:emailId/find', user_controller.user_find);
router.post('/users/create', user_controller.user_create);



router.put('/:id/update', user_controller.comment_update);



module.exports = router;