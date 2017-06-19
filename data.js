var titanicData;


var findAgeRange = function() {
  let ageRange = {max: -1, min: 1000};

  for (let i in titanicData) {
    if (!titanicData.hasOwnProperty(i)) {continue;}

    let personAge = parseFloat(titanicData[i].age);

    if(personAge < ageRange.min) {
      ageRange.min = personAge;
    }

    if(personAge > ageRange.max) {
      ageRange.max = personAge;
    }
  }
  console.log(ageRange);
  return ageRange;
};


var breakdownAgeCount = function() {
  let ages = {};

  for (let i in titanicData) {
    if (!titanicData.hasOwnProperty(i)) {continue;}

    let personAge = parseFloat(titanicData[i].age);

    if (ages[personAge] === undefined) {
      ages[personAge] = 1;
    } else {
      ages[personAge] += 1;
    }

  }
  console.log(ages);
  return ages;
};


var countTotalAgesNum = function(ageCount) { //counts number of ages
  ageNum = null;

  for (let i in ageCount) {
    if (!ageCount.hasOwnProperty(i)) {continue;}

    ageNum += ageCount[i];
  }
  return ageNum;
};

var ageByPercentage = function(ageBreakdown, totalAgeCount) {
  let agePercentage = {};

  for (let i in ageBreakdown) {
    if (!ageBreakdown.hasOwnProperty(i)) {continue;}

    console.log(ageBreakdown[i]);
    agePercentage[i] = (ageBreakdown[i] * 100 / totalAgeCount);

    
  }

  //verification

  let totalPercentage = null;

  for (let i in agePercentage) {
    totalPercentage += agePercentage[i];
  }

  console.log(agePercentage);
  console.log(totalPercentage);
};


var brain = function() {
  // findAgeRange();
  let ageBreakdown = breakdownAgeCount();
  let totalAgeCount = countTotalAgesNum(ageBreakdown);

  console.log(ageBreakdown);
  console.log(totalAgeCount);
  ageByPercentage(ageBreakdown, totalAgeCount);

};



//IMPORT JSON –––––––––––––––––––––––––––––––––

var getData = function() {
  fetch("data.json")
  .then(response => response.json())
  .then(data => {
    titanicData = data;
  })
  .then(function() {
    brain();
  });
};

window.onload = function() {
  getData();
};

