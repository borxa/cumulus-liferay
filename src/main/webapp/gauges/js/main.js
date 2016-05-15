AUI().ready(
        'node',
        'liferay-portlet-url',
        'aui-io-request',
        'aui-progressbar',
        function (A) {
            A.on('load',
                    function () {
                        renderBars(A);
                        setInterval(function () {
                            renderBars(A);
                        }, 30000);
                    }
            );
        }
);

function renderBars(A) {
    A.io.request(Liferay.PortletURL.createResourceURL().setPortletId('cumulusgauges_WAR_cumulus').toString(), {
        dataType: 'json',
        on: {
            success: function () {
                var data = this.get('responseData');
                // EXTERIOR TEMPERATURE
                A.all('#temp').each(function () {
                    var value = data.observations.temp.replace(',', '.');
                    var valueUnit = data.observations.tempunit;
                    createBar(A, this, value, valueUnit, [15, 28, 35], [-5, 40]);
                });
                // INTERIOR TEMPERATURE
                A.all('#intemp').each(function () {
                    var value = data.observations.intemp.replace(',', '.');
                    var valueUnit = data.observations.tempunit;
                    createBar(A, this, value, valueUnit, [18, 24, 30], [0, 35]);
                });
                // EXTERIOR HUMIDITY
                A.all('#hum').each(function () {
                    var value = data.observations.hum.replace(',', '.');
                    var valueUnit = '%';
                    createBar(A, this, value, valueUnit, [25, 65, 90], [0, 100]);
                });
                // INTERIOR HUMIDITY
                A.all('#inhum').each(function () {
                    var value = data.observations.inhum.replace(',', '.');
                    var valueUnit = '%';
                    createBar(A, this, value, valueUnit, [25, 65, 90], [0, 100]);
                });
                // PRESSURE
                A.all('#press').each(function () {
                    var value = data.observations.press.replace(',', '.');
                    var valueUnit = 'hpa';
                    createBar(A, this, value, valueUnit, [1005, 1025, 1032], [980, 1050]);
                });
                // WIND GUST
                A.all('#wgust').each(function () {
                    var value = data.observations.wgust.replace(',', '.');
                    var valueUnit = data.observations.windunit;
                    createBar(A, this, value, valueUnit, [1, 15, 30], [0, 40]);
                });
                // RAINFALL LAST HOUR
                A.all('#rhour').each(function () {
                    var value = data.observations.rhour.replace(',', '.');
                    var valueUnit = data.observations.rainunit;
                    createBar(A, this, value, valueUnit, [1, 3, 6], [0, 10]);
                });
            }
        }
    });
}

function createBar(A, node, value, valueUnit, breaksArray, minMax) {
    node.all('div').remove(true);
    var nodeClass = 'progress-info';
    if (value > breaksArray[0])
        nodeClass = 'progress-success';
    if (value > breaksArray[1])
        nodeClass = 'progress-warning';
    if (value > breaksArray[2])
        nodeClass = 'progress-danger';
    new A.ProgressBar(
            {
                min: minMax[0],
                max: minMax[1],
                label: value + ' ' + valueUnit,
                value: value,
                cssClass: nodeClass
            }).render(node);
}