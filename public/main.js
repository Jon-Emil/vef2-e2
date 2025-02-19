document.addEventListener("DOMContentLoaded", () => {
  const inputs = document.querySelectorAll("input[type='radio']");
  
  inputs.forEach(input => {
      input.addEventListener("change", () => {
          const form = input.closest("form");
          if (form) {
            const labels = form.querySelectorAll("label");
            
            labels.forEach(label => {
                label.classList.remove("correct", "incorrect");
            });
          }
          
          const label = input.closest("label");
          if (label) {
            if (input.classList.contains("true")) {
                label.classList.add("correct");
            } else if (input.classList.contains("false")) {
                label.classList.add("incorrect");
            }
          }
      });
  });
});