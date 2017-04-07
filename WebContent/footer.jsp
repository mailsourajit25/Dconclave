
<div class="ui inverted vertical footer segment" id="footer">
    <div class="ui centerered aligned container">
      <div class="ui stackable inverted divided centered grid">
      <div class="row">
      <div class="column">
      <h2>Welcome to Dconclave!</h2>
      </div>
      </div>
      <div class="row">
        <div class="column">
        <h5>The place where all your queries get answered.</h5>
        </div>
        </div>
      </div>
      <div class="ui inverted section divider"></div>
      <img src="images/logo.png" class="ui centered mini circular image">
      <div class="ui horizontal inverted small divided link list">
        <a class="item" href="#">Site Map</a>
        <a class="item" href="#">Contact Us</a>
        <a class="item" href="#">Terms and Conditions</a>
        <a class="item" href="#">Privacy Policy</a>
      </div>
    </div>
</div>
<p style="margin:0;padding:0 " id="tracker"></p>



<!-- End of pusher element -->
</div>
<script>
var pageHeight=$("#tracker").position();

var windowHeight=$(window).height();
var add=0;
if(pageHeight.top <windowHeight){
	add=windowHeight-pageHeight.top;
}
add=Math.round(add);
add=add+30;
//alert(s);
$("#footer").css("margin-top",add);
//alert(add);
</script>
</body>
</html>