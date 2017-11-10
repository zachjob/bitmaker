project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  dueDate: "December 14, 2019",
  id: "3284",
  steps: [
    {
      description: "conduct interviews",
      dueDate: "August 1, 2018"
    },
    {
      description: "code of conduct",
      dueDate: "January 1, 2018"
    },
    {
      description: "compile results",
      dueDate: "November 10, 2018"
    },
    {
      description: "version 1",
      dueDate: "January 15, 2019"
    },
    {
      description: "revisions",
      dueDate: "March 30, 2019"
    },
    {
      description: "version 2",
      dueDate: "July 12, 2019"
    },
    {
      description: "final edit",
      dueDate: "October 1, 2019"
    },
    {
      description: "final version",
      dueDate: "November 20, 2019"
    },
    {
      description: "Wrap up",
      dueDate: "December 1, 2019"
    }
  ]
};
project = { 
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  dueDate : "December 14, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     dueDate: "August 1, 2018"
    },
    {description: "code of conduct",
     dueDate: "January 1, 2018"
    },
    {description: "compile results",
     dueDate: "November 10, 2018"
    },
    {description: "version 1",
     dueDate: "January 15, 2019"
    },
    {description: "revisions",
     dueDate: "March 30, 2019"
    },
    {description: "version 2",
     dueDate: "July 12, 2019"
    },
    {description: "final edit",
     dueDate: "October 1, 2019"
    },
    {description: "final version",
     dueDate: "November 20, 2019"
    },
    {description: "Wrap up",
     dueDate: "December 1, 2019"
    }
  ]
}
// If I loop the committee outside of the steps loop, it will add each person to each step before iterating
// to the next step. 
for (var i = 0; i < project.steps.length; i++) {
    for (var c = 0; c < 3; c++) {
        project.steps[i].person = project.committee[c];
    }
    console.log(project.steps[i]);
}
