//
//  ContentView.swift
//  Recipe App
//
//  Created by Chris Min on 31/01/2024.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    @State var selectedRecipe: Recipe? = nil
    
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical) {
                
                VStack(alignment: .leading) {
                    
                    // FAMOUS RECIPES TITLE
                    Text("Famous Recipes")
                        .font(.title3)
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                    
                    // FAMOUS RECIPES
                    FamousRecipesView(recipes: recipeViewModel.recipes)
                    
                    // ALL RECIPES
                    LazyVStack(alignment: .leading) {
                        // FAMOUS RECIPES TITLE
                        Text("All Recipes")
                            .font(.title3)
                            .bold()
                            .padding([.leading, .top])
                        
                        ForEach(recipeViewModel.recipes) { recipe in
                            RecipeCard(recipe: recipe)
                                .onTapGesture {
                                    selectedRecipe = recipe
                                }
                        }
                        .padding(.horizontal)
                        
                    }
                    .padding(.vertical)
                    .background(.ultraThickMaterial)
                    .fullScreenCover(item: $selectedRecipe) { recipe in
                        
                        RecipeDetailView(recipe: recipe)

                    }
                    
                }
                .navigationTitle("Recipes")
            }
        }
       
    }
}

#Preview {
    HomeView()
}
