var pwd = $("#password"),
    pwdVis = $("#passwordShow"),
    modal = $("#mac-wifi"),
    join = $("#button-join"),
    cancel = $("#button-cancel"),
    showPwd = $("#show-password"),
    remember = $("#remember-network"),
    title = $("#modal-title");
var EPSILON_WIDTH = 30,
    EPSILON_HEIGHT = 100;
var centerMarginLeft = modal.css('marginLeft'),
    centerMarginTop = modal.css('marginTop');
// invariant network manager window position as browser window is resized
var screenLeft, screenTop;

function showModal() {
    setTimeout(function() {
        modal.css('display',"block");
        screenLeft = ($(window).width() / 2) - (modal.outerWidth() / 2);
        screenTop = 9 + ($(window).height() * (1 / 4)) - (modal.outerHeight() / 2);
        positionOnScreen();
        checkSaneSize();
        pwd.focus();
    }, 1000);
}

showModal();

pwd.on('input', function() {
    join.attr("disabled", (pwd.val().length < 8));
    pwdVis.val(pwd.val())
})

pwdVis.on('input', function() {
    join.attr("disabled", (pwdVis.val().length < 8));
    pwd.val(pwdVis.val())
})

showPwd.change(function() {
    if($("#show-password").prop('checked')) {
        pwd.css("display", "none")
        pwdVis.css("display", "block")
    }
    else {
        pwdVis.css("display", "none")
        pwd.css("display", "block")
    }
    pwd.focus();
});
remember.onchange = function() {
    pwd.focus();
};
cancel.onclick = function() {
    modal.css('display', "none");
    showModal();
};
var downX, downY, oldX, oldY, dragging = false;

title.onmousedown = function(e) {
    if (e.button == 0) {
        dragging = true;
        downX = e.clientX;
        downY = e.clientY;
        oldX = modal.offsetLeft;
        oldY = modal.offsetTop;
        document.onselectstart = function() {
            return false;
        };
    }
};

function positionOnScreen() {
     modal.css('left', screenLeft - (window.screenX) + 'px');
     modal.css('top', screenTop - (window.screenY) + 'px');
}

function restart() {
     modal.css('display', 'none');
    showModal();
}

function checkSaneSize() {
    if (modal.offsetLeft < 0
     || modal.offsetTop < 0
     || modal.offsetLeft + modal.offsetWidth > window.innerWidth
     || modal.offsetTop + modal.offsetHeight > window.innerHeight) {
        restart();
    }
}

var prevScreenX = window.screenX,
    prevScreenY = window.screenY;

function render() {
    var dx = window.screenX - prevScreenX,
        dy = window.screenY - prevScreenY;

    prevScreenX = window.screenX;
    prevScreenY = window.screenY;

    if (dx != 0 || dy != 0) {
        restart();
    }
    else {
        checkSaneSize();
    }
    window.requestAnimationFrame(render);
}

window.requestAnimationFrame(render);

document.onmousemove = function(e) {
    if (dragging) {
        var newX = e.clientX - downX,
            newY = e.clientY - downY;

        screenLeft = window.screenX + oldX + newX;
        screenTop = window.screenY + oldY + newY;

        positionOnScreen();
        checkSaneSize();
    }
};

document.onmouseup = function(e) {
    if (e.button == 0) {
        dragging = false;
        document.onselectstart = function() {
        };
    }
};

modal.onclick = function() {
    pwd.focus();
};
