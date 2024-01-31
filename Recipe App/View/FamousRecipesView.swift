//
//  FamousRecipesView.swift
//  Recipe App
//
//  Created by Chris Min on 31/01/2024.
//

import SwiftUI

struct FamousRecipesView: View {
    
    var recipes: [Recipe]
    
    var body: some View {
        
        ScrollView(.horizontal) {
            
            LazyHStack {
                
                ForEach(recipes) { recipe in
                    FamousRecipeCard(recipe: recipe)
                }
                
            }
            
        }
        
    }
}

