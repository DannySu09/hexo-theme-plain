(function(){
    window.o = {};
})();

(function(win, doc){
    var Search = function(){
        this.wrap = doc.getElementById('j-searchBox');
        this.openBtn = doc.getElementById('j-nav-searchBtn');
        this.closeBtn = doc.getElementById('j-search-closeBtn');

        this.bindEvent();
    };

    Search.prototype.bindEvent = function(){
        if(this.wrap.style.display === 'none') {
            return;
        }

        var self = this;
        var openBtn = this.openBtn;
        var closeBtn = this.closeBtn;

        openBtn.addEventListener('click', function(){
            self.show();
        }, false);
        closeBtn.addEventListener('click', function(){
            self.hide();
        }, false);
    };

    Search.prototype.show = function(){
        this.wrap.className += (' ' + 'is-show');
    };

    Search.prototype.hide = function(){
        var className = this.wrap.className;
        var index = className.indexOf('is-show');

        if(index > 0) {
            className = className.slice(0, index - 1);
        } else {
            className = '';
        }

        this.wrap.className = className;
    };

    win.o.Search = Search;
})(window, document);

(function(win, doc){
    var search = null;
    doc.addEventListener('DOMContentLoaded', function(){
        search = new win.o.Search();
    });
})(window, document);