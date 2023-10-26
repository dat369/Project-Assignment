document.addEventListener("DOMContentLoaded", function() {
    var viewButtons = document.querySelectorAll(".view-button");
    
    viewButtons.forEach(function(button, index) {
        button.addEventListener("click", function() {
            var detailBox = document.querySelectorAll(".detail-box")[index];
            if (detailBox.style.display === "none" || detailBox.style.display === "") {
                detailBox.style.display = "block";
            } else {
                detailBox.style.display = "none";
            }
        });
    });
});

(function($) {

  "use strict";

    // init Chocolat light box
    var initChocolat = function() {
      Chocolat(document.querySelectorAll('.image-link'), {
        imageSize: 'contain',
        loop: true,
      })
    }

 

  $(document).ready(function () {

    var swiper = new Swiper(".client-Swiper", {

      pagination: {
        el: ".swiper-pagination",
      },
    
      breakpoints: {

          0:{
            slidesPerView: 1,
          },

          768: {
            slidesPerView: 2,
            spaceBetween: 25,
          },
          1024: {
            slidesPerView: 3,
            spaceBetween: 25,
          },
        }
      }); 

      window.addEventListener("load", (event) => {
        //isotope
        $('.isotope-container').isotope({
          // options
          itemSelector: '.item',
          layoutMode: 'masonry',
        });
  
  
  
        // Initialize Isotope
        var $container = $('.isotope-container').isotope({
          // options
          itemSelector: '.item',
          layoutMode: 'masonry',
        });
  
        $(document).ready(function () {
          //active button
          $('.filter-button').click(function () {
            $('.filter-button').removeClass('active');
            $(this).addClass('active');
          });
        });
  
        // Filter items on button click
        $('.filter-button').click(function () {
          var filterValue = $(this).attr('data-filter');
          if (filterValue === '*') {
            // Show all items
            $container.isotope({ filter: '*' });
          } else {
            // Show filtered items
            $container.isotope({ filter: filterValue });
          }
        });
  
      });


      initChocolat();

   
  });


})(jQuery);
document.addEventListener('DOMContentLoaded', function () {
        var customerLoginButton = document.getElementById('customerLoginFailed');
        var shipperLoginButton = document.getElementById('shipperLoginFailed');
        var modal = new bootstrap.Modal(document.getElementById('exampleModal'));
        
        var customerLoginTab = document.getElementById('nav-sign-in-tab');
        var shipperLoginTab = document.getElementById('nav-register-tab');

        // Nếu có lỗi khi đăng nhập cho customer, tự động chọn tùy chọn customer khi mở modal
        if (customerLoginButton !== null) {
            modal.show();
            customerLoginButton.classList.add('active');
            
            customerLoginTab.classList.add('active');
            shipperLoginTab.classList.remove('active');
            document.getElementById('nav-sign-in').classList.add('active', 'show');
            document.getElementById('nav-register').classList.remove('active', 'show');
        }

        // Nếu có lỗi khi đăng nhập cho shipper, tự động chọn tùy chọn shipper khi mở modal
        else if (shipperLoginButton !== null) {
            modal.show();
            shipperLoginButton.classList.add('active');
            
            shipperLoginTab.classList.add('active');
            customerLoginTab.classList.remove('active');
            document.getElementById('nav-register').classList.add('active', 'show');
            document.getElementById('nav-sign-in').classList.remove('active', 'show');
        }
    });
