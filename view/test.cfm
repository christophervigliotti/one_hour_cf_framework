<!---
Test Part A
  using Bootstrap, create form fields
    first name  
    last name
    submit button

  validate
    first name javascript alert if blank
    last name jquery alert if blank

Test Part B
  submit the form via ajax 
  get an ajax response

--->
    <div class="mb-3">
      <label for="first_name" class="form-label">First Name</label>
      <input type="text" class="form-control" id="first_name" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
      <label for="last_name" class="form-label">Last Name</label>
      <input type="text" class="form-control" id="last_name" aria-describedby="emailHelp">
    </div>
    <input 
      type="button" 
      id="submit_button" 
      class="btn btn-primary" 
      value="check form fields" 
      <!--- 
      if doLoadListener is set to false in test.js you will have to un-comment this line to trigger validation
      onclick="validateAndSubmit()" 
      ---> 
      onclick="validateAndSubmit()" 
    />
