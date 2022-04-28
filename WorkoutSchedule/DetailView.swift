//
//  DetailView.swift
//  WorkoutSchedule
//
//  Created by anggidast on 27/04/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Group {
                    HStack {
                        Text("Sunday")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    .padding([.top], 8.0)
                    VStack(spacing: 0) {
                        ListMenu(title: "10K Morning Run", icon: false)
                        Divider()
                            .frame(height: 0.5)
                            .background(Color.gray.opacity(0.1))
                        ListMenu(title: "Swimming", icon: false)
                    }
                    .cornerRadius(8.0)
                }
                
                Group {
                    HStack {
                        Text("Monday")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    .padding([.top], 8.0)
                }
                
                Group {
                    HStack {
                        Text("Tuesday")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    .padding([.top], 8.0)
                    VStack(spacing: 0) {
                        ListMenu(title: "Push Up", icon: false)
                        Divider()
                            .frame(height: 0.5)
                            .background(Color.gray.opacity(0.1))
                        ListMenu(title: "Chair Dip", icon: false)
                        Divider()
                            .frame(height: 0.5)
                            .background(Color.gray.opacity(0.1))
                        ListMenu(title: "Tricep Extension", icon: false)
                    }
                    .cornerRadius(8.0)
                }
                
                Group {
                    HStack {
                        Text("Wednesday")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    .padding([.top], 8.0)
                    VStack(spacing: 0) {
                        ListMenu(title: "5K Morning Run", icon: false)
                    }
                    .cornerRadius(8.0)
                }
                
                Group {
                    HStack {
                        Text("Thrusday")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    .padding([.top], 8.0)
                }
                
                Group {
                    HStack {
                        Text("Friday")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    .padding([.top], 8.0)
                    VStack(spacing: 0) {
                        ListMenu(title: "Bench Press", icon: false)
                        Divider()
                            .frame(height: 0.5)
                            .background(Color.gray.opacity(0.1))
                        ListMenu(title: "Dumbbell Squeeze", icon: false)
                    }
                    .cornerRadius(8.0)
                }
                
                Group {
                    HStack {
                        Text("Saturday")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    .padding([.top], 8.0)
                    VStack(spacing: 0) {
                        ListMenu(title: "Mini Soccer", icon: false)
                    }
                    .cornerRadius(8.0)
                }


            }
            .padding()
            .navigationBarHidden(true)
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {
                        print("new workout")
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        Text("New Workout").bold()
                    }
                    Spacer()
                }
            }
        }
        .navigationTitle("Daily Workout")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
