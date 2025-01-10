import { Controller } from "@hotwired/stimulus"
import { put } from "https://cdn.skypack.dev/@rails/request.js@0.0.11?min"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static values = { url: String }

  async update(e) {
    let checkbox = e.target
    let checked = checkbox.checked
    console.log("update", checked)
    
    await put(this.urlValue, {
      body: {
        completed: checked
      }
    })
  }
}
