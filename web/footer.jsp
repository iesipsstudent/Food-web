
</div>
     <div style="position: fixed; left: 0; bottom: 0; width: 100%;">  
        

        <!-- Footer -->
<!--        <footer class="w3-container w3-theme-d3 w3-padding-16" style="">
            <h5>Footer</h5>
        </footer>-->

        <footer class="w3-container w3-theme-d5 w3-opacity">
            <p class="w3-center w3-text-white"><strong>&COPY; AnnaPurti 2019</strong></p>
        </footer>

        <script>
        // Accordion
            function myFunction(id) {
                var x = document.getElementById(id);
                if (x.className.indexOf("w3-show") == -1) {
                    x.className += " w3-show";
                    x.previousElementSibling.className += " w3-theme-d1";
                } else {
                    x.className = x.className.replace("w3-show", "");
                    x.previousElementSibling.className =
                            x.previousElementSibling.className.replace(" w3-theme-d1", "");
                }
            }

        // Used to toggle the menu on smaller screens when clicking on the menu button
            function openNav() {
                var x = document.getElementById("navDemo");
                if (x.className.indexOf("w3-show") == -1) {
                    x.className += " w3-show";
                } else {
                    x.className = x.className.replace(" w3-show", "");
                }
            }
        </script>

     </div>
</body>
</html> 
