'use strict';

var Controllers = {};

Controllers.renderAdminPage = function (req, res/* , next */) {
	res.render('admin/plugins/topic-redirect', {});
};

module.exports = Controllers;
