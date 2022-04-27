import SwiftUI
 
//first view of the app
struct ContentView: View {

    //var for the score
    @State var score = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                Image("ms")
                Text("How well do you know the office?")
                
                //button to start the quiz
                NavigationLink(destination: Quiz1()) {
                    Text("START")
                }
                HStack{
                    //display your score
                    Text("Previous score : \(self.score) / \(myQuiz1.count)")
                        .onAppear(){ //refresh score
                            self.score = LoadScore(quiz: "myQuiz1")
                    }
                }
            }
            .navigationBarTitle("Office Trivia",displayMode: .inline)
        }
    }
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
        } else {
            // Fallback on earlier versions
        }
    }
}
