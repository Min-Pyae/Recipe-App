//
//  RecipeDetailView.swift
//  Recipe App
//
//  Created by Chris Min on 31/01/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    var recipe: Recipe
    
    var body: some View {
        NavigationView {
            
            ScrollView(.vertical) {
               
                VStack(alignment: .leading, spacing: 25) {
                    
                    // IMAGE
                    VStack {
                        Image(recipe.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 130)
                            .padding(30)
                            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 4)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal)
                    
                    // HEADLINE
                    Text(recipe.headline)
                        .font(.title)
                        .bold()
                        .padding(.horizontal)
                        
                    
                    VStack(spacing: 30) {
                        
                        // INSTRUCTIONS
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Text("Instructions:")
                                .font(.title2)
                                .bold()
                            
                            Text(recipe.instructions)
                                .font(.body)
            
                        }
                        
                        // INGREDIENTS
                        VStack(alignment: .leading) {
                            
                            Text("Ingredients:")
                                .font(.title2)
                                .bold()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                LazyHStack {
                                    ForEach(recipe.ingredients, id: \.self) { recipe in
                                        Text(recipe)
                                            .foregroundStyle(.black.opacity(0.7))
                                            .padding()
                                            .background(.ultraThinMaterial)
                                            .clipShape(RoundedRectangle(cornerRadius: 6))
                                    }
                                }

                            }
                        }
                        .frame(height: 100)
                        
                    }
                    .padding()
                    .frame(width: .infinity, height: 500)
                    .background(.ultraThinMaterial)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 10,
                            topTrailingRadius: 10
                        )
                    )
                    
                }
                
            }
            .navigationTitle(recipe.title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "xmark.circle.fill")
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
            .padding(.top)

        }
        
    }
    
}

#Preview {
    RecipeDetailView(
        recipe: Recipe(
            title: "Classic Margherita Pizza",
            headline: "Lunch",
            ingredients: ["Pizza dough", "Tomatoes", "Fresh mozzarella", "Basil", "Olive oil"],
            instructions: "Start by preheating your oven to its highest temperature. Roll out the pizza dough into your desired shape. Spread a thin layer of crushed tomatoes over the dough, leaving a border around the edges. Tear the fresh mozzarella into small pieces and distribute them evenly over the tomatoes. Sprinkle fresh basil leaves on top. Drizzle a bit of olive oil over the pizza. Bake the pizza on a preheated pizza stone or baking sheet until the crust is golden and the cheese is bubbly, about 10-12 minutes. Remove from the oven, let it cool slightly, and enjoy your homemade Margherita pizza.",
            imageName: "pizza"
        )
    )
}
