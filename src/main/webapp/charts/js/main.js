AUI().ready(
        'node',
        'transition',
        'aui-image-viewer',
        function (A) {
            // Charts Portlet
            var imgActive = A.one('#charts #chart-img img[alt="temp"]');
            imgActive.show('fadeIn');
            A.all('#charts #chart-thumbs img').on('click',
                    function (event) {
                        var alt = event.currentTarget.get('alt');
                        imgActive.hide('fadeOut',
                                function () {
                                    imgActive = A.one('#charts #chart-img img[alt="' + alt + '"]');
                                    imgActive.show('fadeIn');
                                });
                    });

            A.all('#charts #chart-img img').on('click',
                    function () {
                        new A.ImageViewer(
                                {
                                    links: '#charts #chart-img div a',
                                    infoTemplate: 'Chart {current} of {total}',
                                    headerContent: '<h3 class="text-center">Weather Charts</h3>',
                                    circular: true,
                                    zIndex: 1
                                }
                        ).render();
                    });
        }
);