<li data-type="item" class="list-group-item">
    <div class="row">
        <div class="col-xs-9">
            <strong><a target="_blank" href="{config.relative_path}/api/v3/topics/{tid}">tid {tid}</a></strong> &rarr;
            {{{ if type.length }}}
            <code>{type}</code> &rarr; {url}
            {{{ else }}}
            <span class="label label-warning">Redirect disabled</span> (users will go to the topic as normal)
            {{{ end }}}
        </div>
        <div class="col-xs-3 text-right">
            <button type="button" data-type="edit" class="btn btn-info">Edit</button>
            <button type="button" data-type="remove" class="btn btn-danger">Delete</button>
        </div>
    </div>
</li>