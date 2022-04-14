var prevScrollpos = window.scrollY;

window.onscroll = function() {
  var currentScrollPos = window.scrollY;

  if (prevScrollpos > currentScrollPos) {
    document.getElementById("navbar").style.top = "0";
    document.getElementById("navbar").style.backgroundColor = "#f8f8ff";
  } else {
    document.getElementById("navbar").style.backgroundColor = "#d3d3d3"
    document.getElementById("navbar").style.top = "-15vh";
  }

  prevScrollpos = currentScrollPos;
} 