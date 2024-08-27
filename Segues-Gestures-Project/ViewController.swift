    //
    //  ViewController.swift
    //  Segues-Gestures-Project
    //
    //  Created by Ivan Dedic on 2024-08-27.
    //

    import UIKit

    class ViewController: UIViewController {
        
        // Outlets
        
        @IBOutlet weak var nameInputField: UITextField!
        @IBOutlet weak var ageInputfield: UITextField!
        @IBOutlet weak var emailInputField: UITextField!
        @IBOutlet weak var imgBall: UIImageView!
        @IBOutlet weak var imgBox: UIImageView!
        

        
        // variabler
        
        let segueToConfirmScreen = "segueToConfirmScreen"
        
        let segueToFailedScreen = "segueToFailedScreen"

        
        
        // Struct för användare
        struct User{
            var name: String
            var age: Int
            var email: String
        }

        override func viewDidLoad() {
            super.viewDidLoad()
            
            
        }
        

        

        
        // Actions
        
        
        
        
        @IBAction func onBallDrag(_ sender: UIPanGestureRecognizer) {
           
            let translation = sender.translation(in: self.view)
            
          //   print("ball drag")
            
            imgBall.center = CGPoint(x:  imgBall.center.x + translation.x, y: imgBall.center.y + translation.y)
            
            sender.setTranslation(CGPoint(x: 0.0 , y: 0.0), in: self.view)
            
            if imgBox.frame.contains(imgBall.frame) {
        
                
                
              
                
                if let user = createUserFromInput() {
                   
                    if user.age >= 18 {
                        
                    performSegue(withIdentifier: segueToConfirmScreen, sender: sender.self)
            
                        
                    } else {
                        performSegue(withIdentifier: segueToFailedScreen, sender: sender.self)
                    }
                } else {
                    performSegue(withIdentifier: segueToFailedScreen, sender: sender.self)
                }
                
                
            }
            
            
            
        }
        
        
        
        // Functions
        
        func createUserFromInput() -> User? {
            
               guard let name = nameInputField.text, !name.isEmpty,
                     let ageText = ageInputfield.text, let age = Int(ageText),
                     let email = emailInputField.text, !email.isEmpty else {
                   return nil
               }


               return User(name: name, age: age, email: email)
           }
        
        


    }

