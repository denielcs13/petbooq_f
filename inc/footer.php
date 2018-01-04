

<div class="footer">
<div class="footer-inn">
<!-- <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="js/stickySidebar.js"></script> 
<script>
		$(document).ready(function() {
	
			$('#sidebar').stickySidebar({
				sidebarTopMargin: 20,
				footerThreshold: 100
			});
		
		});
</script> -->



<div class="footer-left">
<ul>
<li><a href="user-registration.php">User Register</a></li>
<li><a href="local-business-registration.php">Local Business Provider</a></li>
<li><a href="service-provider-registration.php">Service Provider</a></li>
<li><a href="photo-upload.php">Photo Upload</a></li>
<li><a href="feed-page.php">Feed Page</a></li>
</ul>
</div>
</div>

<!-- ui tabs script -->
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<link rel="stylesheet" href="/resources/demos/style.css"> 
<script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery-1.12.4.js"></script> 
  
<!-- ui tabs script -->


<script>
$(function(){
    $('.cate-hld li a').click(function(){
        $('.cate-hld li a.select').removeClass('select');
        $(this).addClass('select');
    });
});
</script>	
  
<link rel="stylesheet" href="css/macy/macy.css">
<script src="js/macy/macy.js"></script>
    <script>
       var masonry = new Macy({
        container: '#macy-container',
        trueOrder: false,
        waitForImages: true,
        debug: true,
        margin: {
            x: 10,
            y: 10
        },
        columns: 2,
        breakAt: {
          1200: {
            columns: 5,
            margin: {
                x: 23,
                y: 4
            }
          },
          940: {
            margin: {
                y: 23
            }
          },
          520: {
            columns: 3,
            margin: 3,
          },
          400: {
            columns: 2
          }
        }
      });
    </script> 

<link rel="stylesheet" href="css/packery-docs.css" media="screen" />
<script src="js/packery-docs.min.js"></script> 
<script src="js/lightbox-plus-jquery.min.js" /></script>


<link rel="stylesheet" href="css/jquery-ui.css" /> 

<script src="js/jquery-ui.min.js"></script>
<link href="./css/fbphotobox.css" rel="stylesheet" type="text/css" />
<script src="./js/fbphotobox.js"></script>
 <script src="./js/masonry-docs.min.js"></script>
<script>
 
  $(".ui-tabs-anchor").click(function(event) {    
    $(this).find('input[type="radio"]').prop("checked", true);
  });
</script>

<script>
(function( $ ) {
	
	$.fn.imageResize = function( options ) {

        var settings = {
            width: 150,
            height: 150
        };
        
        options = $.extend( settings, options );

     
        return this.each(function() {
			var $element = $( this );
            var maxWidth = options.width;
            var maxHeight = options.height;
            var ratio = 0;
            var width = $element.width();
            var height = $element.height();

            if ( width > maxWidth ) {
                ratio = maxWidth / width;
                
                $element.css( "width", maxWidth );
                $element.css( "height", height * ratio );

            }

            if ( height > maxHeight ) {
                ratio = maxHeight / height;
                
                $element.css( "height", maxHeight );
                $element.css( "width", width * ratio );

            }

        });

    };
})( jQuery );

$(function() {
  
    $( "#image" ).imageResize();
  
  /*$( "#resize" ).click(function() {
    $( "#image" ).imageResize();
  });*/
});
</script>
<script>
	$(document).ready(function() {
		$(".fbphotobox img").fbPhotoBox({
			rightWidth: 360,
			leftBgColor: "black",
			rightBgColor: "white",
			footerBgColor: "black",
			overlayBgColor: "#222",
			containerClassName: 'fbphotobox',
			imageClassName: 'photo',
			onImageShow: function() {
				$(".fbphotobox img").fbPhotoBox("addTags",
						[{x:0.3,y:0.3,w:0.3,h:0.3}]
				);
				$(".fbphotobox-image-content").html($('#pst-text').html()+'<h2>'+'comment'+'</h2>'+'<textarea>'+'</textarea>');
			}
		});
		
		
		
		/*$("button").click(function() {
			$( ".fbphotobox" ).append('<img class="photo" fbphotobox-src="./images/dummy-1760x990-Mosque.jpg" src="./images/dummy-1760x990-Mosque.jpg"/><img class="photo" fbphotobox-src="./images/dummy-1920x2560-Goemetry.jpg" src="./images/dummy-1920x2560-Goemetry.jpg"/>');
		});*/
	});

/*===================*/

$container = $('#container');
$item = $container.find('.item');
for (var i = 1; i <= 0; i++)
{
  var $newItem = $item.clone();
  $newItem.find('.number').html(i);
  $container.append( $newItem );
}

</script>



	
	
	
	
<link rel="stylesheet" href="css/example.css">
 
  <script src="js/jquery.sticky-kit.min.js"></script>
  <script src="js/sticky-kit.js"></script>
  <script src="js/example.js"></script>
</div>