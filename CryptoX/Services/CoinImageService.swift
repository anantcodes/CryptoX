//
//  CoinImageService.swift
//  CryptoX
//
//  Created by Anant Kanchan on 22/06/21.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage? = nil
    
    private var imageSubscription: AnyCancellable?
    
    init(urlString: String) {
        getCoinImage(urlstring: urlString)
    }
    
    private func getCoinImage(urlstring: String) {
        guard let url = URL(string: urlstring) else { return }
        
        imageSubscription = NetworkManager.download(url: url)
            .tryMap({ (data) -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
                self?.imageSubscription?.cancel()
            })
    }
    
    
    
}
