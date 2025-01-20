//
//  ContentView.swift
//  vkiHesapla
//
//  Created by Mustafa Tümsek on 21.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State var boy = ""
    @State var kilo = ""
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "heart")
                    .foregroundColor(Color.red)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Vücut Kitle İndeksi Hesaplayıcısı")
                    .font(.title2)
                    .fontWeight(.bold)
            }
            .padding(.bottom)
            
            HStack
                        {
                            Text("Boyunuz:")
                            TextField("cm", text: $boy )
                        }
            
            HStack
                        {
                            Text("Kilonuz:")
                            TextField("kg", text: $kilo )
                        }
            if let vki1 = Double(boy), let vki2 = Double(kilo)
            {
                var boykare = vki1/100 * vki1/100
                var sonuc = vki2 / boykare
                Text("\nVücut Kitle Endeksiniz: \(sonuc)")
                if sonuc < 18.5 {Text("Zayıf").foregroundColor(.yellow)}
                else if sonuc >= 18.5 && sonuc <= 24.9 {Text("Normal").foregroundColor(.green)}
                else if sonuc >= 25 && sonuc <= 29.9 {Text("Biraz Ağır").foregroundColor(.orange)}
                else {Text("Obez").foregroundColor(.red)}
            }
            else {Text("\nLütfen yalnızca sayı değeri giriniz.")}
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
