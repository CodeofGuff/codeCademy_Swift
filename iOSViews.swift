

// Views

// The building blocks for the UI of the app.
// A Scene in an app is made up of Views such as: Text, Image, Label, Button
// A Protocol: Defines a blueprint of a set of requirements that are needed to accomplish a task
// structs encapsulate a set of reated properties and functions
// 

struct HappyView: View {  // : View here indicates that HappyView conforms to the View protocol
   var body: some View { // body is a property of the View protocol provides the content for the View. 
       Text("Hello, World!") // body contains a Text view. 
   }
}

