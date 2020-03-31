//
//  ViewController.swift
//  BellMedia
//
//  Created by Konstantin Klyatskin on 2020-03-30.
//  Copyright © 2020 Konstantin Klyatskin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

    
//MARK: - Actions
extension ViewController {
    @IBAction func buttonTapped(_ sender: UIButton) {

        let urlStr = Fetcher.Constants.urlStr
        NetworkFetcher().fetchData(from: urlStr) { error, data in
            if error != nil {
                print("Error: \(String(describing: error))")
                return
            }
            DataExtractor().extractModel(from: data) { model in
                DispatchQueue.main.async {
                    var timeStr: String = "N/A"
                    if let date = model?.lastModifiedDateTime {
                        timeStr = DateFormatter.output.string(from: date)
                    }
                    self.alert(title: "Last modified time", message: timeStr)
                }
            }
        }
    }
}


//MARK: - Alerts
extension ViewController {

    func alert(title: String, message: String?) {
        guard let message = message else { return }
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
}
