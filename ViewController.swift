//
//  ViewController.swift
//  CP_IOS_101_Prework
//
//  Created by Gianelli L. on 11/7/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingtext: UILabel!
    
    let greetings = ["hello","hola", "こんにちわ", "안녕하세요", "Ciao", "Bonjour", "Hallo", "привет"]
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
            view.backgroundColor = randomColor
        func changeColor() -> UIColor{

                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)

                return UIColor(red: red, green: green, blue: blue, alpha: 0.75)
            }
        let randomNum = Int.random(in: 0...(greetings.count - 1))
        greetingtext.text = greetings[randomNum]
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let kirbygif = UIImage.gifImageWithName("kirby")
        imageView.image = kirbygif
    }
    
}

