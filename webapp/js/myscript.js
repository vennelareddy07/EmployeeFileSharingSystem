   var images = document.getElementById("divId")
                             .getElementsByTagName("img");

        for (var i = 0; i < images.length; i++)
        {
            images[i].onmouseover = function ()
            {
                this.style.cursor = 'hand';
                this.style.borderColor = 'red';
            }
            images[i].onmouseout = function ()
            {
                this.style.cursor = 'pointer';
                this.style.borderColor = 'grey';
            }
        }

        function changeImageOnClick(event,gname,cname,fname,lname,cost,disc)
        {   
            event = event || window.event;
            var targetElement = event.target || event.srcElement;
            var x = document.getElementById('pop');
  	    
            if (targetElement.tagName == "IMG")
            {
			  if(x.style.getPropertyValue("visibility")=="visible")
			  {
			      var x = document.getElementById('pop');
				  x.style.visibility = 'hidden';
			  }else{
                  var x = document.getElementById('pop');
				  x.style.visibility = 'visible';
			  }
                mainImage.src = targetElement.getAttribute("src");
                document.getElementById('gname').innerHTML=gname;
                document.getElementById('cname').innerHTML=cname;
                document.getElementById('name').innerHTML=(fname+lname);
                document.getElementById('cost').innerHTML=cost;
                document.getElementById('disc').innerHTML=disc;
            }
			
        }