{{--start--}}
<div class="container table-responsive">
    <form action="?no=no" method="POST">
        <table class="table table-hover table-inverse table-responsive" style="background-color:white" id="multipleParcel">
            <thead class="thead-inverse">
                <tr>
                    <th>Zone</th>
                    <th>weight</th>
                    <th>rate</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td scope="row">
                            <div class="form-group">
                              <label for="zone" class="sr-only">Area</label>
                              <input type="text" class="form-control" name="zone" id="zone" aria-describedby="zone" placeholder="zone">
                              <small id="zone" class="form-text text-muted sr-only">zone</small>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                              <label for="weight" class="sr-only">weight</label>
                              <input type="text"
                                class="form-control" name="weight" id="weight" aria-describedby="weight" placeholder="weight">
                              <small id="weight" class="form-text text-muted sr-only">weight</small>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                              <label for="rate" class="sr-only">rate</label>
                              <input type="text"
                                class="form-control" name="rate" id="rate" aria-describedby="rate" placeholder="rate">
                              <small id="rate" class="form-text text-muted sr-only">rate</small>
                            </div>
                        </td>
                    </tr>
                </tbody>
        </table>
    </form>
</div>
{{--end--}}
