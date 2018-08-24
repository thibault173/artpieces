import "bootstrap";
import Choices from "choices.js";
import "choices.js/assets/styles/css/choices.css";

const tagsSelect = document.querySelector("#piece_tag_ids");

if (tagsSelect) {
  new Choices("#piece_tag_ids", {
    removeItems: true,
    removeItemButton: true,
  });
}
