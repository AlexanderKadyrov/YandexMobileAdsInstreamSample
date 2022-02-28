//
//  ViewController.swift
//  YandexMobileAdsSample
//
//  Created by Alexander Kadyrov on 28.02.2022.
//  alexander-kad@yandex.ru
//

import YandexMobileAdsInstream
import UIKit

class ViewController: UIViewController {
    
    private lazy var adLoader: InstreamAdLoader = {
        let item = InstreamAdLoader()
        item.delegate = self
        return item
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        let request = InstreamAdRequestConfiguration(pageID: "R-M-DEMO-native-c", parameters: [:])
        adLoader.loadInstreamAd(configuration: request)
    }
}

extension ViewController: InstreamAdLoaderDelegate {
    
    func instreamAdLoader(_ instreamAdLoader: InstreamAdLoader, didFailToLoad reason: String) {
        
    }
    
    func instreamAdLoader(_ instreamAdLoader: InstreamAdLoader, didLoad ad: InstreamAd) {
        
    }
}
