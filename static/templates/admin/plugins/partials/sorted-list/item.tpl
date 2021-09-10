<li data-type="item" class="list-group-item">
    <div class="row">
        <div class="col-xs-9">
            {{{ if type.length }}}
            <strong>tid {tid}</strong> &rarr; <code>{type}</code> &rarr; {url}
            {{{ else }}}
            <strong>tid {tid}</strong> &rarr; <span class="label label-warning">Redirect disabled</span> (users will go to the topic as normal)
            {{{ end }}}
        </div>
        <div class="col-xs-3 text-right">
            <button type="button" data-type="edit" class="btn btn-info">Edit</button>
            <button type="button" data-type="remove" class="btn btn-danger">Delete</button>
        </div>
    </div>
</li>