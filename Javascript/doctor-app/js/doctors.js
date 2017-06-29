function Doctor() {
  this.apiData = [];
}

Doctor.prototype.getApi = function(medicalIssue, apiKey, displayData) {
  var doc = this;
  fetch('https://api.betterdoctor.com/2016-03-01/doctors?query='+ medicalIssue+'&location=45.5231%2C-122.6765%2C%205&user_location=45.5231%2C-122.6765&skip=0&limit=20&user_key=' + apiKey)
  .then(response => {
    
      return response.json();
    })
    .then(data => {
      this.apiData = data.data;
      console.log('data', this.apiData);
      displayData();  
    
    });
};

exports.doctorModule = Doctor;



