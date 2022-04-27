import SwiftUI


struct FinalView : View {
    
    var score : Int
    var body: some View {
        
        VStack{
            
            Text("Final Score : \(score)")
            NavigationLink(destination: Quiz1()) {
                Text("PLAY AGAIN?")
            }
            .onAppear(){
                SaveScore(quiz: "myQuiz1", score: self.score)
            }
            
            }
       
        
    }
    
   
}
