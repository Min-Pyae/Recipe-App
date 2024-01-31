//
//  ContentView.swift
//  Recipe App
//
//  Created by Chris Min on 31/01/2024.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    var body: some View {
        VStack {
            
            // FAMOUS RECIPES TITLE
            Text("Famous Recipes")
            
            // FAMOUS RECIPES
            FamousRecipesView(recipes: recipeViewModel.recipes)
            
            // ALL RECIPES
        }
       
    }
}

#Preview {
    HomeView()
}
