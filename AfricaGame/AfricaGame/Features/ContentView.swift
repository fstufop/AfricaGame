//
//  ContentView.swift
//  AfricaGame
//
//  Created by FilipeSTeodoro on 31/03/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @EnvironmentObject private var appState: AppState
    
    @Query private var teams: [Team]
    @State private var showAdd: Bool = false

    var body: some View {
        NavigationStack {
            List {
                ForEach(teams) { team in
                    NavigationLink {
                        Text("\(team.name)")
                    } label: {
                        HStack {
                            Text(team.name)
                            Spacer()
                            Text("\(team.numberOfPlayers)")
                        }
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button {
                        showAdd = true
                    } label: {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $showAdd) {
            FormView()
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(teams[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Team.self, inMemory: true)
}

struct FormView: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    @State private var teamName: String = ""
    @State private var numberOfPlayers: String = ""
    
    var body: some View {
        Form {
            TextField("Nome do time", text: $teamName)
            TextField("Número de jogadores", text: $numberOfPlayers)
            Button {
                let team = Team(
                    name: teamName,
                    numberOfPlayers: Int(numberOfPlayers) ?? 0, players: [], score: 0)
                context.insert(team)
                dismiss()
            } label: {
                Text("Salvar")
            }
        }
    }
}
