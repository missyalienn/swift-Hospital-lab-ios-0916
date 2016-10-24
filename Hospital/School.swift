//
//  School.swift
//  Hospital

//


protocol  Payable {
    
    func wages() -> Double
    
}


extension Payable {
    
    func wages() -> Double {
        
     return 50_000
        
    }
    
}


protocol TimeOff {
    
    var vacationDays: Int { get set }
    
    func requestForVacation(days: Int) -> Bool
    
}


extension TimeOff {
    
    
    func requestForVacation(days: Int) -> Bool {
       
        
        
        if days <= vacationDays {
            return true
         }else{
            return false
        }
    }
    
    
}


enum Punishment {
    
case severe
case medium
case light
    
}


protocol Reprimand {
    
    func disciplineStudent(scale: Punishment) -> String
    
    func callParentDeliveringMessage(scale: Punishment) -> String
    
    
}


extension Reprimand {
    
    func disciplineStudent(scale: Punishment) -> String {
        
        switch scale {
        case .severe:
            return "We are expelling you from the school!"
        case .medium:
            return "Why would you think that's a good idea?! You're going to detention."
        case .light:
            return "You're to go back to class, don't do it again."
        default:
            return "Nothing to report."
        }
    }
    
    func callParentDeliveringMessage(scale: Punishment) -> String {
        
        switch scale {
        case .severe:
            return "Your child has been expelled from the school."
        case .medium:
            return "Your child has become a terror in the classroom."
        case .light:
            return "Your child thought it was funny to put gum in Amy's hair."
        default:
            return "Nothing to report."
        }
        
    }
    
    
}


enum Subject {
    
    case math
    case science
    case english

    
}


protocol Teach {
    
    func teachSubject(subject: Subject) -> String
    

}

extension Teach {
    
    func teachSubject(subject: Subject) -> String {
        
        switch subject {
        case .math:
            return "Take out your math books please."
        case .science:
            return "Time to learn the best subject of all! Science!!"
        case .english:
            return "To read or not to read. Everyone take out your english books."
        default:
            break
        }
        
    }
    
    
}



protocol Employee: Payable, TimeOff { }























