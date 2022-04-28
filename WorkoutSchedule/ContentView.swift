//
//  ContentView.swift
//  WorkoutSchedule
//
//  Created by anggidast on 27/04/22.
//

import SwiftUI

struct SheetView: View {
    enum Categories: String, CaseIterable, Identifiable {
        case daily
        case trailRun
        
        var id: String { self.rawValue }
    }
    
    enum Days: String, CaseIterable, Identifiable {
        case sunday
        case monday
        case tuesday
        case wednesday
        case thrusday
        case friday
        case saturday
        
        var id: String { self.rawValue }
    }
    
    @Environment(\.dismiss) var dismiss
    @State var name: String = ""
    @State var category: Categories = .daily
    @State var day: Days = .sunday
    
    var body: some View {
        NavigationView {
            Form (content: {
                Picker("Category", selection: $category) {
                    ForEach(Categories.allCases) { category in
                        Text(category.rawValue.capitalized).tag(category)
                    }
                }
                Picker("Workout Day", selection: $day) {
                    ForEach(Days.allCases) { day in
                        Text(day.rawValue.capitalized).tag(day)
                    }
                }
                TextField("Exercise", text: $name)
            })
            .navigationTitle("New Workout")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") {
                        dismiss()
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationView {
            VStack {
                HStack(spacing: 10) {
                    MenuView(image: "calendar.circle.fill", title: "Today", count: "2")
                        .previewLayout(.sizeThatFits)
                }
                
                HStack {
                    Text("Workouts Category")
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                .padding([.top], 8.0)
                
                VStack(spacing: 0) {
                    NavigationLink(destination: DetailView(), label: {
                        ListMenu(title: "Daily Workout", icon: true)
                    }).buttonStyle(PlainButtonStyle())
                    Divider()
                        .frame(height: 0.5)
                        .background(Color.gray.opacity(0.1))
                    NavigationLink(destination: DetailView(), label: {
                        ListMenu(title: "Bali Trail Running", icon: true)
                    }).buttonStyle(PlainButtonStyle())
                }
                .cornerRadius(8.0)
                Spacer()
            }
            .padding()
            .navigationTitle("FitUp")
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {
                        showingSheet.toggle()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        Text("New Workout").bold()
                    }
                    .sheet(isPresented: $showingSheet) {
                        SheetView()
                    }
                    Spacer()
                    Button("Add Category") {
                        print("add category")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
