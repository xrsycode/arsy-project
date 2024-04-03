$(document).ready(function () {
  // Client listener
  window.addEventListener("message", function (event) {
    if (event.data.status == "open") {
      $("#container").css("display", "block");
      $("#container").html("");
      base =
        '<div class="deathscreen flex flex-col justify-end items-center text-center min-h-screen">' +
        '<div class="text-white p-4">' +
        '<i class="fa-solid fa-skull animate-pulse w-[40px] h-[40px]"></i>' +
        "</div>" +
        '<h3 class="mt-4 tracking-wide text-3xl font-black text-red-400 drop-shadow-xl shadow-red-500">' +
        event.data.title +
        "</h3>" +
        '<h4 class="mt-1 mb-8 text-xs text-slate-300">' +
        event.data.msg +
        "</h4>" +
        "</div>" +
        '<div class="-z-20 absolute top-0 left-0 bg-black/80 w-screen h-screen"></div>';
      $("#container").append(base);
    } else if (event.data.status == "close") {
      $("#container").css("display", "none");
    }
  });
});
