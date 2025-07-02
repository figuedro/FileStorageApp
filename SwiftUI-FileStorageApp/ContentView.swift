//
//  ContentView.swift
//  SwiftUI-FileStorageApp
//
//  Created by Joao Pedro on 02/07/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var storageUse: Int
    @State var storagePorcent: Int = 10
    @State var storageMax: Int = 100
    
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(Color.black.gradient)
                .edgesIgnoringSafeArea(.top)
            VStack {
                HStack (spacing: 30){
                    Image("profileImage4")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    Spacer()
                    Button {
                        
                    } label: {
                        SearchButton()
                    }
                    Button {
                        
                    } label: {
                        NotificationButton()
                    }
                }
                    .padding()
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("\(storageUse) / \(storageMax)GB")
                            .font(.system(size: 45, weight: .medium, design: .default))
                            .foregroundStyle(.white)
                    }
                    
                    ProgressView(value: Double(storageUse)/Double(storageMax), total: 1)
                        .frame(width: 340)
                        .tint(.purple)
                    
                    HStack {
                        Image(systemName: "cloud")
                            .foregroundStyle(.gray)
                        Text("Storage \(storagePorcent)% full")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundStyle(.gray)
                    }
                    .padding(.top, 5)
                    
                }
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.white)
                    .ignoresSafeArea(edges: .bottom)
            }
        }
    }
}

#Preview {
    ContentView(storageUse: 10)
}
