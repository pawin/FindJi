//
//  QuestionViewController.swift
//  findji
//
//  Created by win on 11/27/16.
//  Copyright © 2016 Pawin Thepbanchaporn. All rights reserved.
//

import Cocoa

class QuestionViewController: NSViewController {

    @IBOutlet weak var timeTextField: NSTextField!
    @IBOutlet weak var answerTextField: NSTextField!
    @IBOutlet weak var scoreTextField: NSTextField!
    
    let countdownsJis = ["3️⃣","2️⃣","1️⃣","🎉"]
    let successJis = ["👍","👏","🤘","👌"]
    let failJis = ["👎","😡","👿","💩"]
    
    var question: Question?
    var score: Int = 0 {
        didSet {
            let string = "\(score)"
            scoreTextField.stringValue = string.numberEmoji
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        configureViews()
        
        startGame()
        
        createQuestion()
    }
    
    private func configureViews() {

    }
    
    func startGame() {
        score = 0
    }
    
    func createQuestion() {
        if #available(OSX 10.12.1, *) {

            question = Question.random()
            
            answerTextField.stringValue = question?.answer ?? ""
        
            touchBar = makeTouchBar()
            
        } else {
            // Fallback on earlier versions
        }
    }
    
    func answer(_ button: NSButton) {
        NSLog("answer: \(button.title)")
        
        if button.title == question?.answer {
            NSLog("✅")
            score += 1
        }
        else {
            NSLog("❌")
        }
        
        createQuestion()
    }
}

@available(OSX 10.12.1, *)
extension QuestionViewController: NSTouchBarDelegate {
    override func makeTouchBar() -> NSTouchBar? {
        let touchBar = NSTouchBar()
        touchBar.delegate = self
        touchBar.customizationIdentifier = NSTouchBarCustomizationIdentifier("me.pawin.findji")
        touchBar.defaultItemIdentifiers = [NSTouchBarItemIdentifier("findji")]
        touchBar.customizationAllowedItemIdentifiers = [NSTouchBarItemIdentifier("findji")]
        return touchBar
    }
    
    func touchBar(_ touchBar: NSTouchBar, makeItemForIdentifier identifier: NSTouchBarItemIdentifier) -> NSTouchBarItem? {
        switch identifier {
        case NSTouchBarItemIdentifier("findji"):
            
            let viewItem = NSCustomTouchBarItem(identifier: identifier)
            viewItem.view = createButtonsView()
            return viewItem
            
        default:
            return nil
        }
    }
    
    private func createButtonsView() -> NSStackView {
        
        var buttons = [NSButton]()
        question?.choices.forEach({ (choice) in
            let button = NSButton(title: choice, target: self, action: #selector(QuestionViewController.answer))
            buttons.append(button)
        })
        
        let stackView = NSStackView(views: buttons)
        
        return stackView
    }
}
