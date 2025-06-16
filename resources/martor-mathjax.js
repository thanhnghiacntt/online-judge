jQuery(function ($) {
    $(document).on('martor:preview', function (e, $content) {
        function update_math() {
			/*
            MathJax.typesetPromise([$content[0]]).then(function () {
                $content.find('.tex-image').hide();
                $content.find('.tex-text').show();
            });*/
			if (window.MathJax && MathJax.startup && MathJax.startup.promise) {
                MathJax.startup.promise.then(function () {
                    MathJax.typesetPromise([$content[0]]).then(function () {
                        $content.find('.tex-image').hide();
                        $content.find('.tex-text').show();
                    });
                });
            } else {
                console.warn("MathJax chưa sẵn sàng hoặc chưa khởi tạo startup.");
            }
        }

        var $jax = $content.find('.require-mathjax-support');
        if ($jax.length) {
            if (!('MathJax' in window)) {
                $.ajax({
                    type: 'GET',
                    url: $jax.attr('data-config'),
                    dataType: 'script',
                    cache: true,
                    success: function () {
                        window.MathJax.startup = {typeset: false};
                        $.ajax({
                            type: 'GET',
                            url: window.location.origin + '/static/libs/mathjax/es5/tex-mml-chtml.js',
                            dataType: 'script',
                            cache: true,
                            success: update_math
                        });
                    }
                });
            } else {
                update_math();
            }
        }
    })
});
