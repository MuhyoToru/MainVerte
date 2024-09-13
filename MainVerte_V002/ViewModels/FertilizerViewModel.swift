//
//  FertilizerViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation
import Observation

class FertilizerViewModel: ObservableObject {
    @Published var fertilizers: [Fertilizer] = []
    
    func fetchFertilizers() {
        guard let url = URL(string: "http://10.80.55.36:3000/fertilizers") else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedFertilizers = try JSONDecoder().decode([Fertilizer].self, from: data)
                    DispatchQueue.main.async {
                        self.fertilizers = decodedFertilizers
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            } else if let error = error {
                print("Error fetching data: \(error)")
            }
        }.resume()
    }
}
