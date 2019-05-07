//
//  ViewController.swift
//  CallTwilioFunctionFromSwift
//
//  Created by Lizzie Siegle on 5/5/19.
//  Copyright © 2019 Lizzie Siegle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    @IBAction func buttonClicked(_ sender: Any) {
        let functionURL = "https://rosewood-starling-9398.twil.io/swift"
        if let url = URL(string: functionURL) {
            let task = URLSession.shared.dataTask(with: url) {
                data, response, error in
                if error != nil {
                    print(error!)
                } else {
                    if let responseString = String(data: data!, encoding: .utf8) {
                        DispatchQueue.main.async {
                            print(responseString)
                            self.jokeLabel.text = responseString
                            self.jokeLabel.font = self.jokeLabel.font.withSize(12)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

