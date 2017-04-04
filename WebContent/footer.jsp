
<div class="ui inverted vertical footer segment" id="footer">
    <div class="ui center aligned container">
      <div class="ui stackable inverted divided grid">
        <div class="three wide column">
          <h4 class="ui inverted header">Group 1</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Link One</a>
            <a href="#" class="item">Link Two</a>
            <a href="#" class="item">Link Three</a>
            <a href="#" class="item">Link Four</a>
          </div>
        </div>
        <div class="three wide column">
          <h4 class="ui inverted header">Group 2</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Link One</a>
            <a href="#" class="item">Link Two</a>
            <a href="#" class="item">Link Three</a>
            <a href="#" class="item">Link Four</a>
          </div>
        </div>
        <div class="three wide column">
          <h4 class="ui inverted header">Group 3</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Link One</a>
            <a href="#" class="item">Link Two</a>
            <a href="#" class="item">Link Three</a>
            <a href="#" class="item">Link Four</a>
          </div>
        </div>
        <div class="seven wide column">
          <h4 class="ui inverted header">OnlineForum</h4>
          <p>Ask anything you want!</p>
        </div>
      </div>
      <div class="ui inverted section divider"></div>
      <img src="http://localhost:9000/assets/images/yeoman.png" class="ui centered mini image">
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