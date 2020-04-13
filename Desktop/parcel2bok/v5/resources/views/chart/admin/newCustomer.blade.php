{{--start--}}
<div class="container">
    <canvas id="newCustmer" width="400" height="400"></canvas>
    <script>
    var ctx = document.getElementById('newCustmer');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['singlearcelP', 'Blue', 'Yellow'],
            datasets: [{
                label: '# of Votes',
                data: [12, 19, 3],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',

                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',

                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
    </script>

</div>
{{--end--}}
