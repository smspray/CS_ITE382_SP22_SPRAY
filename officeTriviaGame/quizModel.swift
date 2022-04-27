import Foundation



struct QuizModel  {
    var img : String?
    var text : String?
    var answer : [String]
    //specify what is the correct answer
    var correct : Int?
}





//final quiz is an array of quizmodel
var myQuiz1 : [QuizModel] = [

    QuizModel(img: "img",
    text: "what is Michael Scott's middle name?",
    answer: ["Baines","Gary","Kurt","Susan"],
    correct: 1),
    
    QuizModel(img: "img",
    text: "what celebrity is in sabre's welcome video?",
    answer: ["Christian Slater","Meryl Streep","Ashton Kutcher","Hilary Swank"],
    correct: 0),
    
    QuizModel(img: "img",
    text: "who started a fire in the office?",
    answer: ["Ryan","Dwight","Meredith","all of the above"],
    correct: 3),
    
    QuizModel(img: "img",
    text: "Which of michael's love interests was actually Steve Carell's wife?",
    answer: ["Jan","Carell","Holly","Helene"],
    correct: 1),
    
    QuizModel(img: "img",
    text: "Which of the following is a rule the Schute boys must learn before the age of five?",
    answer: ["Dont swim after eating","never accept candy from a stranger ","Look both ways before crossing the street","Dont turn your back on bears men you have wronged or the dominant turkey during mating season"],
    correct: 3),

]



func SaveScore(quiz : String , score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore (quiz : String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
