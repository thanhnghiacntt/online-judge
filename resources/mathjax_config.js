window.MathJax = {
    tex: {
        inlineMath: [
            ['~', '~'],
            ['\\(', '\\)'],
            ['\\[', '\\]'],
        ]
    },
    options: {
        enableMenu: false,
        processHtmlClass: "arithmatex",
        ignoreHtmlClass: ".*"  // để MathJax chỉ xử lý class arithmatex
    }
};
