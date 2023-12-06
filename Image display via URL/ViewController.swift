//
//  ViewController.swift
//  Image display via URL
//
//  Created by Macbook Air 2017 on 6. 12. 2023..
//

import UIKit

class ViewController: UIViewController {
    
    let PHOTO_URL_STRING = "https://homegrown-garden.com/cdn/shop/articles/how_to_take_care_of_bonsai_trees_header_4_1280x.png?v=1610622891"
    
    private func fetchImageData() async -> Data? {
        guard let url = URL(string: PHOTO_URL_STRING) else {
            return nil
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return data
        }
        catch {
            return nil
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
    }
}
