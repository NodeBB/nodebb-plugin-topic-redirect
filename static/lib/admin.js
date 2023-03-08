'use strict';

/* globals $, app, socket, define */

define('admin/plugins/topic-redirect', ['settings', 'uploader'], function (settings) {
	var ACP = {};

	ACP.init = function () {
		settings.load('topic-redirect', $('.topic-redirect-settings'));
		$('#save').on('click', saveSettings);
	};

	function saveSettings() {
		settings.save('topic-redirect', $('.topic-redirect-settings'), function () {
			app.alert({
				type: 'success',
				alert_id: 'topic-redirect-saved',
				title: 'Settings Saved',
				message: 'Please reload your NodeBB to apply these settings',
				clickfn: function () {
					socket.emit('admin.reload');
				},
			});
		});
	}

	return ACP;
});
