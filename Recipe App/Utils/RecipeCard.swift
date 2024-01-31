//
//  RecipeCard.swift
//  Recipe App
//
//  Created by Chris Min on 31/01/2024.
//

import SwiftUI

struct RecipeCard: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            // IMAGE
            VStack {
                Image(recipe.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 120)
                    .padding()
                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 4)
            }
            .frame(maxWidth: .infinity, maxHeight: 200)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))

            
            // HEADLINE
            Text(recipe.headline)
                .font(.headline)
                .bold()
                .foregroundStyle(Color(.gray))
            
            // TITLE
            Text(recipe.title)
                .font(.title3)
                .bold()
            
            // INGREDIENTS
            Text(recipe.ingredients.joined(separator: ","))
                .font(.subheadline)
                .bold()
                .foregroundStyle(Color(.gray))
                .frame(width: 300, height: 40, alignment: .topLeading)
        }
        .padding()
        
    }
}

#Preview {
    RecipeCard(
        recipe: Recipe(
            title: "Classic Margherita Pizza",
            headline: "Lunch",
            ingredients: ["Pizza dough", "Tomatoes", "Fresh mozzarella", "Basil", "Olive oil"],
            instructions: "Start by preheating your oven to its highest temperature. Roll out the pizza dough into your desired shape. Spread a thin layer of crushed tomatoes over the dough, leaving a border around the edges. Tear the fresh mozzarella into small pieces and distribute them evenly over the tomatoes. Sprinkle fresh basil leaves on top. Drizzle a bit of olive oil over the pizza. Bake the pizza on a preheated pizza stone or baking sheet until the crust is golden and the cheese is bubbly, about 10-12 minutes. Remove from the oven, let it cool slightly, and enjoy your homemade Margherita pizza.",
            imageName: "pizza"
        )
    )
}
