document.addEventListener("DOMContentLoaded", function () {
  document.querySelectorAll(".post-image").forEach(function (image) {
    image.addEventListener("click", function () {
      this.classList.toggle("enlarged");
    });
  });
});
