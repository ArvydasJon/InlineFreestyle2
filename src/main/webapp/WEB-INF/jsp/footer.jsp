<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer class="page-footer font-small blue fixed-bottom">

    <div class="footer">
     <span id="slalom" style="color: blue;"></span>
    </div>

    <script>
        var slalomElement = document.getElementById("slalom");
        var footerWidth = document.querySelector(".footer").offsetWidth;
        var slalomText = "SLALOM";
        var repetitions = Math.floor(footerWidth / (slalomText.length * 10)); // Adjust the factor 10 to your desired font size

        for (var i = 1; i < repetitions; i++) {
            slalomElement.innerHTML += slalomText + " ";
        }
    </script>

</footer>