{{--start--}}
<div class="container">
    <div class="row">
        <table class="table table-striped table-inverse">
            <thead class="thead-default">
                <tr>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                    <form action="" method="GET">
                        <tr>
                            <td scope="row">
                                <div class="form-group">
                                    <select class="form-control form-control-sm chartTypeNew" name="chartType" id="chartType" required>
                                    <option selected disabled>Select the type of chart</option>
                                      <option>pie</option>
                                      <option>doughnut</option>
                                      <option>polarArea</option>
                                      <option>bar</option>
                                      <option>line</option>
                                    </select>
                                  </div>
                            </td>
                            <td>
                                <button type="submit" name="" id="" class="btn btn-success btn-lg btn-block">Submit</button>
                            </td>
                        </tr>
                    </form>
                </tbody>
        </table>
    </div>
</div>
<canvas id="myChart"></canvas>
<script>
var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: '<?php if(isset($_GET['chartType'])){ echo $_GET['chartType'];}else{ echo 'doughnut';} ?>',
    data: {
        labels: ['Single parcels', 'Multiple parcels'],
        datasets: [{
            label: 'new parcels',
            data: [{{$sCustomer}},{{$mCustomer}}],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        responsive: true
    }
});
</script>

{{--end--}}
