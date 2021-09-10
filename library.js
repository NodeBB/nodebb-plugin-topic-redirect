'use strict';

const meta = require.main.require('./src/meta');
const controllerHelpers = require.main.require('./src/controllers/helpers');

const controllers = require('./lib/controllers');

const plugin = module.exports;

plugin.init = async (params) => {
	const { router, middleware/* , controllers */ } = params;
	const routeHelpers = require.main.require('./src/routes/helpers');

	routeHelpers.setupAdminPageRoute(router, '/admin/plugins/topic-redirect', middleware, [], controllers.renderAdminPage);
};

plugin.addAdminNavigation = (header) => {
	header.plugins.push({
		route: '/plugins/topic-redirect',
		icon: 'fa-tint',
		name: 'Topic Redirect',
	});

	return header;
};

plugin.handleTopicRedirect = async ({ req, res }) => {
	if (['/api/topic', '/topic'].some(prefix => req.url.startsWith(prefix))) {
		let { redirects } = await meta.settings.get('topic-redirect');
		redirects = redirects.reduce((memo, cur) => {
			memo.set(parseInt(cur.tid, 10), cur);
			return memo;
		}, new Map());

		if (redirects.has(parseInt(req.params.topic_id, 10))) {
			const redirect = redirects.get(parseInt(req.params.topic_id, 10));
			controllerHelpers.redirect(res, redirect.url, redirect.type === 308);	// 307 for everything else
		}
	}
};
