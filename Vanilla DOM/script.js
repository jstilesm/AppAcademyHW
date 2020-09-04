document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!

  const FavSubmit = (e) => {
    e.preventDefault();

    const input = document.querySelector(".favorite-input")
    const fav = input.value;
    input.value = ''

    

    const favslist = document.getElementbyId("sf-places");
    favslist.append(newListLI);
  };

  const submitbutton = document.querySelector(".favorite-submit")
  submitbutton.addEventListener("click", FavSubmit);


  // adding new photos

  // --- your code here!



});
