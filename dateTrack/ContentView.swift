//
//  ContentView.swift
//  dateTrack
//
//  Created by Jake Watembach on 12/15/22.
//

import SwiftUI

struct CravingsTracker: View {
        @State private var cravingsRecorded = [Craving]()

        var body: some View {
            NavigationView {
                VStack {
                    List {
                        ForEach(cravingsRecorded, id: \.self) { craving in
                            HStack {
                                Image(systemName: "circle")
                                    .foregroundColor(Color("cgBlue"))
                                Text(craving.description)
                                    .foregroundColor(Color("amarath"))
                                    .font(.headline)
                            }
                        }
                    }
                    .navigationBarTitle("Cravings Tracker")
                   .navigationBarItems(leading: Image(systemName: "circle")
                                                    .foregroundColor(Color("bdazzledBlue")),
                                        trailing: Image(systemName: "circle")
                                                    .foregroundColor(Color("bdazzledBlue")))
                    .accentColor(Color("jazzberryJam"))
                    Button(action: {
                        // Add a new craving to the cravingsRecorded array
                        self.cravingsRecorded.append(Craving(description: "Craving at \(Date())"))
                    }) {
                        Text("Record a craving")
                            .foregroundColor(Color("romePurple"))
                            .font(.headline)
                    }
                }
                
            }
        }
    }

    struct Craving: Hashable {
        let description: String
    }




struct ContentView: View {
    var body: some View {
        CravingsTracker()
    }
}

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
