            var closing_window = false; 
            $(window).on('focus', function () {
                 closing_window = false; 
                 //if the user interacts with the window, then the window is not being 
                 //closed 
            });
            $(window).on('blur', function () { 
                closing_window = true; if (!document.hidden) {
                     //when the window is being minimized 
                     closing_window = false; 
                    } 
                    $(window).on('resize', function (e) { 
                        //when the window is being maximized 
                        closing_window = false; 
                    }); 
                    $(window).off('resize'); 
                    //avoid multiple listening 
                }); 
                $('html').on('mouseleave', function () { 
                    closing_window = true; 
                    //if the user is leaving html, we have more reasons to believe that he's 
                    //leaving or thinking about closing the window 
                }); 
                $('html').on('mouseenter', function () { 
                    closing_window = false; 
                    //if the user's mouse its on the page, it means you don't need to logout 
                    //them, didn't it? 
                }); 
                $(document).on('keydown', function (e) { 
                    if (e.keyCode == 91 || e.keyCode == 18) {
                         closing_window = false; 
                         //shortcuts for ALT+TAB and Window key 
                        } 
                    if (e.keyCode == 116 || (e.ctrlKey && e.keyCode == 82)) { 
                        closing_window = false; 
                        //shortcuts for F5 and CTRL+F5 and CTRL+R 
                    } 
                }); 
                
                // Prevent logout when clicking in a hiperlink 
                $(document).on("click", "a", function () { 
                    closing_window = false; 
                }); 
                // Prevent logout when clicking in a button (if these buttons rediret to some page) 
                $(document).on("click", "button", function () { 
                    closing_window = false; 
                }); 
                // Prevent logout when submiting 
                $(document).on("submit", "form", function () { 
                    closing_window = false; 
                }); 
                // Prevent logout when submiting 
                $(document).on("click", "input[type=submit]", function () { 
                    closing_window = false; 
                }); 
                var toDoWhenClosing = function() { 
                    $.ajax({ 
                        type: "POST",
                        url: "/logout.php", 
                        async: false 
                    }); 
                    return; 
                }; 
                
                window.addEventListener("beforeunload", function (e) { 
                    if (closing_window) { 
                        toDoWhenClosing(); 
                    } 
                });
