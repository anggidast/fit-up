//
//  ListMenu.swift
//  WorkoutSchedule
//
//  Created by anggidast on 27/04/22.
//

import SwiftUI

struct ListMenu: View {
    var title: String
    var icon: Bool
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            if icon == true {
                Image(systemName: "chevron.right")
            }
        }
        .padding(.all, 10)
        .background(Color.gray.opacity(0.1))
    }
}

struct ListMenu_Previews: PreviewProvider {
    static var previews: some View {
        ListMenu(title: "Daily Workout", icon: true)
            .previewLayout(.sizeThatFits)
    }
}
