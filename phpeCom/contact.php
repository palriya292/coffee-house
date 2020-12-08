<?php require('top.php')?>
<link rel="stylesheet" href="./css/contact.css"/>
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<header class="header">
      <div class="banner">
        <h2>over hundred years of</h2>
        <h1>kc roasters <br /></h1>
        <h3>crafted coffee</h3>
      </div>
    </header>
    <div class="content-divider"></div>
    <div class="section-centre clearfix">
        
        <!-- about info -->
        <article class="about-info">
            <!-- section title -->
            <div class="section-title">
                <h3>वार्तालाप</h3>
                <h2>kc roasters</h2>
                <h3>के साथ</h3>
            </div>
            <!-- end of section title -->
            <div class="about-text section-centre clearfix">
                <p >
                Every day, we go to work hoping to do two things: share great coffee with our friends and help make the world a little better. It was true when the first Starbucks opened in 1971, and it’s just as true today. Each batch of our hand-selected speciality coffee is sampled before being roasted in our top-of-the-line Probat Roaster.  Through craft roasting, we take the beans on a journey as we attempt to either highlight or layer its inherent flavours.
                </p>
                <p>Great brewing is all about melding the various flavours of coffee into one synchronised dance. Through our accreditations and rigor, we’ve developed sensitivity to the tiniest differences in flavour profiles all in praise of great Indian coffee. Koinonia is more than the sum of its parts. It is an open dialogue between the farmers, roasters, extractors and the end consumer. We’re all for creating a culture united in its pursuit of great Indian coffee! We offer turn-key coffee solutions for cafes, restaurants, and offices in India. We also wholesale roasted coffee beans and coffee powder. Fill out the form below and we'll get in touch with you.</p>
                
            </div>
        </article>
    </div>
    </section>
    <!-- end of about section -->
    <!-- contact form -->
    <section class="contact">
      <div class="section-centre clearfix">
        <!-- contact info start -->
        <article class="contact-info">
          <!-- contact item -->
          <div class="contact-item">
            <h4 class="contact-title">
              <span class="contact-icon">
                <i class="fa fa-location-arrow"></i>
              </span>
              address
            </h4>
            <h4 class="contact-text">
              2300 Traverwood Dr. Ann Arbor, MI 48105
            </h4>
          </div>

          <div class="contact-item">
            <h4 class="contact-title">
              <span class="contact-icon">
                <i class="fa fa-envelope"></i>
              </span>
              email
            </h4>
            <h4 class="contact-text">
              kcroasters@gmail.com
            </h4>
          </div>
          <div class="contact-item">
            <h4 class="contact-title">
              <span class="contact-icon">
                <i class="fa fa-phone"></i>
              </span>
              phone
            </h4>
            <h4 class="contact-text">
              +12 345 678 910
            </h4>
          </div>
        </article>
        <!-- contact form starts -->

        <article class="contact-form">
          <h3>contact us</h3>
          <form method="post" action="#"><div class="form-group ">
          <input type="text" id="name" placeholder="Name" class="form-control"/>
          <input type="email" id="email" placeholder="Email" class="form-control"/>
          
          <input type="text" name="mobile" class="form-control" placeholder="10 digit mobile number" pattern="\d{10}" maxlength="10" minlength="9" >
          <textarea type="text" id="message" placeholder="Message" class="form-control"></textarea>
          <input type="button" id="btnsubmit" onclick="send_message()" value="submit" class="submit-btn btn"/>
          </div>
          </form>
        </article>
      </div>
    </section>
    <!-- end of contact form  -->
    <!-- footer -->
    <footer class="footer" >
      <div class="section-centre">
        <div class="social-icons" >
          <!-- social icon starts -->
          <a href="#" class="social-icon">
            <i class="fa fa-facebook"></i>
          </a>
          <!-- end of social icon -->
          <!-- social icon starts -->
          <a href="#" class="social-icon" >
            <i class="fa fa-twitter"></i>
          </a>
          <!-- end of social icon -->
          <!-- social icon starts -->
          <a href="#" class="social-icon">
            <i class="fa fa-instagram" ></i>
          </a>
          <!-- end of social icon -->
        </div>
        <h4 class="footer-text">
          &copy;<span>2020</span>
          <span class="tea">kcroasters</span>
          all rights reserved
        </h4>
      </div>
      
    </footer>
    <script type="text/javascript" src="./javascript/mobile.js"></script>
    <script type="text/javascript" src="./javascript/contact.js"></script>
    <script>
      function phonenumber(inputtxt)
{
  var phoneno = /^\d{10}$/;
  if(inputtxt.value.match(phoneno))
  {
      return true;
  }
  else
  {
     alert("Not a valid Phone Number");
     return false;
  }
  }
    </script>
  </body>
</html>