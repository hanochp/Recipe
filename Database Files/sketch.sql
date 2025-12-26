/*
Tables
cosines
    CosineName 

recipe
    CosineId Cosine(cosineId)
    RecpieName  unique 
    CaloriesInRecipe
    RecipeStatus
    TimeCreated
    TimePublished
    TimeArchieved 
    Picture conct of type and recipe name.jpg
    CreatedBy UserName

RecipeIngredient
    RecipeId Recipe(RecipeId)
    Ingredient unique
    IngredientSeq
    Mesurment
    Amount

RecipeDirections
    RecipeId Recipe(RecipeId)
    DirectionSeq
    DirectionDesc

Course
    CourseName

CourseRecipes
    CourseId Course(CourseId)
    RecipeId Recipe(RecipeId)
    DishType null main or side

Meal
    MealName unique
    MealStatus active or inactive
    TimeCreated getdate()
    Picture conct of type and meal name.jpg
    CreatedBy UserName
        

MealCourses
    MealId Meal(MealId)
    CourseId Course(CourseId)
    CourseSeq
        constraint CourseId and MealId must be unique 


CookBook
    BookName unique
    Price
    CookBookStatus active or inactive
    TimeCreated datetime
    CreatedBy user
    Picture conct of type and cookbook name.jpg


 CookBookRcipes
    CookBookId CookBook(CookBookId)
    RecipeId Recipe(recipeId)
    RecipeSeq

*/


