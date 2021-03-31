
document.addEventListener("turbolinks:load", () => {
  console.log("hello from js file")
})

// function turnElementBlue(event) {
//   console.log(event.target)
// }

document.addEventListener("click", (event) => {
  let clickedElement = event.target;
  if (clickedElement.className === "food-type") {
    clickedElement.style.color ="blue"
    let id = clickedElement.getAttribute("data-food-type-id")
    fetch(`/types/${id}`).then((response) => response.text()).then(data => {
      clickedElement.parentNode.children[1].innerHTML = data
    })
  }
  console.log('hello')

})

// 1. find the element
// 2. call click even on the element














// function getElement() {
//   let food_types = document.querySelector(".food-types")
//   food_types.addEventListener('click', (clickEvent) => {
//     if (clickEvent.target.className === "food-type") {
//       let clickedItem = clickEvent.target
//       foodTypeId = clickedItem.getAttribute("data-food-type-id")
//       let items = clickEvent.target.closest('.items')
//       items.innerText = foodItems
//     }
//   })
//   console.log(food_types)
// }
