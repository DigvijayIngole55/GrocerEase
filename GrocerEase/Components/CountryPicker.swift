//
//  CountryPicker.swift
//  GrocerEase
//
//  Created by Digvijay Ingole on 2/5/25.
//

import SwiftUI
import CountryPicker

struct CountryPickerView: UIViewControllerRepresentable {
    @Binding var country :Country?
    
    class Coordinator:NSObject, CountryPickerDelegate {
        
        var parent: CountryPickerView
        init(_ parent: CountryPickerView){
            self.parent = parent
        }
        func countryPicker(didSelect country:Country){
            parent.country = country
        }
    }

    func makeUIViewController(context: Context) -> some UIViewController {
        let countryPickerVC = CountryPickerViewController()
        countryPickerVC.selectedCountry = "US"
        countryPickerVC.delegate = context.coordinator
        
        return countryPickerVC
        
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
}

struct CountryPicker_Previews: PreviewProvider {
    @State static var selectedCountry: Country? = nil

    static var previews: some View {
        CountryPickerView(country: $selectedCountry)
    }
}
