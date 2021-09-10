<form role="form" class="topic-redirect-settings">
	<div class="row">
		<div class="col-sm-10 col-sm-offset-2">
			<p class="lead">Specify your topic redirects here. When a user attempts to navigate to that topic, they will be sent to the URL specified instead.</p>
			<p>
				You can choose between a temporary or a permanent redirect (or temporarily disabling the redirect altogether).
			</p>
			<p>
				<strong>Note</strong>: Please be aware that browsers opportunistically cache permanent redirects, so even if they are no longer redirecting, some end users will still be sent to the new URL until their browser cache is cleared.
			</p>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-2 col-xs-12 settings-header">Redirects</div>
		<div class="col-sm-10 col-xs-12">
			<div class="form-group" data-type="sorted-list" data-sorted-list="redirects" data-item-template="admin/plugins/partials/sorted-list/item" data-form-template="admin/plugins/partials/sorted-list/form">
				<ul data-type="list" class="list-group"></ul>
				<button type="button" data-type="add" class="btn btn-info">Add Redirect</button>
			</div>
		</div>
	</div>
</form>

<button id="save" class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
	<i class="material-icons">save</i>
</button>
