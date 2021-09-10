<form>
    <div class="form-group">
        <label for="tid">Topic ID</label>
        <input type="text" id="tid" name="tid" class="form-control" placeholder="123" />
    </div>
    <div class="form-group">
        <label for="type">Redirect Type</label>
        <select name="type" id="type">
            <option value="">Disabled (go to topic)</option>
            <option value="307">307 &ndash; Temporary Redirect</option>
            <option value="308">308 &ndash; Permanent Redirect</option>
        </select>
        <p class="help-block">
            There is no functional difference between using a 307/308 vs 302/301. A 307 is a temporary redirect, and a 308 is a permanent redirect.
        </p>
    </div>
    <div class="form-group">
        <label for="url">URL</label>
        <input type="text" id="url" name="url" class="form-control" placeholder="https://example.org" />
    </div>
</form>