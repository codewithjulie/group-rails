

function getElement() {
  food_types = document.querySelector(".food-types")
  food_types.addEventListener('click', (clickEvent) => {
    if (clickEvent.target.className === "food-type") {
      console.log('works')
    }
  })
  console.log(food_types)
}

document.addEventListener("turbolinks:load", getElement)