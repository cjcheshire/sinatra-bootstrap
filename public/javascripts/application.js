$(document).ready(function() {
  
    // iPhone Orientation fix
    if (navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i)) {
        var viewportmeta = document.querySelector('meta[name="viewport"]');
        if (viewportmeta) {
            viewportmeta.content = 'width=device-width, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0';
            document.body.addEventListener('gesturestart', function () {
                viewportmeta.content = 'width=device-width, minimum-scale=0.25, maximum-scale=1.6';
            }, false);
        }
    }

    // Open external links in a new window
    hostname = window.location.hostname
    $("a[href^=http]")
        .not("a[href*='" + hostname + "']")
        .addClass('link external')
        .attr('target', '_blank');

    function openFullscreen(event) {
        var elem = document.getElementById("file-container");
        if (elem.requestFullScreen) {
            elem.requestFullScreen();
        } else if (elem.mozRequestFullScreen) {
            elem.mozRequestFullScreen();
        } else if (elem.webkitRequestFullScreen) {
            elem.webkitRequestFullScreen();
        }
        elem.webkitRequestFullScreen();
    }

    function openCloseAccountNav(event) {
        event.stopPropagation();
        $(this).toggleClass('on', 'on');
    }

    $('#account-nav').click(openCloseAccountNav);

});
