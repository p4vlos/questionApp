//
//  ViewController.swift
//  FirstApp
//
//  Created by Pavlos Nicolaou on 24/10/2016.
//  Copyright © 2016 Pavlos Nicolaou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Attributes
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    // Dataset
    var qaSet = [QuestionAnswer]()
    // Counter
    var currentQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        qaSet.append(QuestionAnswer(question: "What is 12 * 12?", answer: "144"))
        qaSet.append(QuestionAnswer(question: "What is the capital of France?", answer: "Paris"))
        qaSet.append(QuestionAnswer(question: "What river runs through London?", answer: "The River Thames"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    @IBAction func showQuestion(_ sender: UIButton) {
        //print("Click show question")
        
        if currentQuestion < qaSet.count {
            questionLabel.text = qaSet[currentQuestion].question
        } else {
            let alertDlg = UIAlertController(title: "Finished", message: "No more questions", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertDlg.addAction(okBtn)
            
            //self.presentationController(alertDlg, anemated: true, completion: nil)
            
            self.present(alertDlg, animated: true, completion: nil)
            
            currentQuestion = 0
        }
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        //print("Click show answer")
        
        if currentQuestion < qaSet.count {
            answerLabel.text = qaSet[currentQuestion].answer
            currentQuestion += 1
        }
    }
}

