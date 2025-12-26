use HeartyHearth


drop table if exists CookBookRecipes
drop table if exists CookBook
drop table if exists MealCourses
drop table if exists Meal
drop table if exists CourseRecipes
drop table if exists Course  
drop table if exists RecipeDirections
drop table if exists RecipeIngredients
drop table if exists Recipe 
drop table if exists Cosine 


create table dbo.Cosine(
    CosineId int not null identity primary key,
    CosineName varchar(30) not null constraint c_Cosine_cosineName_cannot_be_blank check(CosineName <> '')
)

create table dbo.Recipe(
    RecipeId int not null identity primary key,
    CosineId int not null constraint f_Cosine_Recipe foreign key references Cosine(CosineId),
    RecipeName varchar(30) not null constraint c_Recipe_RecipeName_cannot_be_blank check(RecipeName <> '')
        constraint u_Recipe_RecipeName unique,
    CaloriesInRecipe int not null,
    RecipeStatus varchar(20) not null constraint Recipe_recipeStatus_can_be_either_Draft_published_or_archived check(RecipeStatus in ('Draft', 'published', 'archived')),
    TimeCreated   datetime not null constraint c_TimeCreated_cannot_be_ahead_of_crurrent_date check(TimeCreated <= getdate()),
    TimePublished datetime null constraint c_TimePublished_cannot_be_ahead_of_crurrent_date check(TimePublished <= getdate()),
    TimeArchieved datetime null constraint c_TimeArchieved_cannot_be_ahead_of_crurrent_date check(TimeArchieved <= getdate()),
    Picture as trim(concat('Recipe', '_', replace(RecipeName, ' ', '_'), '.jpg')),
    CreatedBy varchar(25) not null constraint c_Recipe_CreatedBy_cannot_be_blank check(CreatedBy <> '')

)

create table dbo.RecipeIngredients(
    RecipeIngredientId int not null identity primary key,
    RecipeId int not null constraint f_Recipe_RecipeIngredients foreign key references Recipe(RecipeId),
    IngredientSequence int not null,
    IngredientDesc varchar(25)  not null constraint c_RecipeIngredients_IngredientDesc_cannot_be_blank check(IngredientDesc <> ''),
    Measurement varchar(25) not null constraint c_RecipeIngredients_Measurement_cannot_be_blank check(Measurement <> ''),
    Amount varchar(10) not null,
        constraint u_RecipeIngredients_IngredientDesc unique(RecipeId, IngredientDesc)

)

create table dbo.RecipeDirections(
    RecipeDirectionId int not null identity primary key,
    RecipeId int not null constraint f_Recipe_RecipeDirections foreign key references Recipe(RecipeId),
    DirectionSequence int not null,
    DirectionDesc varchar(100) not null constraint c_RecipeDirections_DirectionDesc_cannot_be_blank check(DirectionDesc <> '')
)

create table dbo.Course(
    CourseId int not null identity primary key,
    CourseName varchar(30) not null
)

create table dbo.CourseRecipes(
    CourseRecipeId int not null identity primary key, 
    CourseId int not null constraint f_Course_CourseRecipes foreign key references Course(CourseId),
    RecipeId int not null constraint f_Recipe_CourseRecipes foreign key references Recipe(RecipeId),
    DishType varchar(20) null constraint c_CourseRecipes_DishType_Can_either_be_main_or_side_or_blank check(DishType in ('', 'main', 'side'))
)

create table dbo.Meal(
    MealId int not null identity primary key,
    MealName varchar(25) not null constraint c_Meal_MealName_cannot_be_blank check(MealName <> '')
        constraint u_Meal_MealName unique,
    MealStatus varchar(10) not null constraint c_Meal_MealStatus_can_either_be_Active_or_Inactive check(MealStatus in ('Active', 'Inactive')),
    Picture as trim(concat('Meal', '_', replace(MealName, ' ', '_'), '.jpg')),
    TimeCreated datetime not null default getdate() constraint c_Meal_TimeCreated_cannot_be_ahead_of_current_date check(TimeCreated <= getdate()),
    CreatedBy varchar(25) not null constraint c_Meal_CreatedBy_cannot_be_blank check(CreatedBy <> '')

)

create table dbo.MealCourses(
    MealCourseId int not null identity primary key, 
    MealId int not null constraint f_Meal_MealCourses foreign key references Meal(MealId),
    CourseId int not null constraint f_Course_MealCourses foreign key references Course(CourseId),
    CourseSequence int not null,
        constraint u_CourseId_mealId unique(CourseId, MealId)
)

create table dbo.CookBook(
    CookBookId int not null identity primary key,
    BookName varchar(25) not null constraint c_CookBook_BookName_cannot_be_blank check(BookName <> ''),
    Price decimal(5, 2) not null,
    CookBookStatus varchar(10) not null constraint c_CookBook_CookBookStatus_can_either_be_active_or_inactive check(CookBookStatus in ('active', 'inactive')),
    Picture as concat('CookBook', '_', replace(BookName, ' ', '_'), '.jpg'),
    TimeCreated datetime not null default getdate() constraint c_CookBook_TimeCreated_cannot_be_ahead_of_current_date check(TimeCreated <= getdate()),
    CreatedBy varchar(25) not null constraint c_CookBook_CreatedBy_cannot_be_blank check(CreatedBy <> '')
)

create table dbo.CookBookRecipes(
    CookBookRecipeId int not null identity primary key, 
    CookBookId int not null constraint f_CookBook_CookBookRecipes foreign key references CookBook(CookBookId),
    RecipeId int not null constraint f_Recipe_CookBookRecipes foreign key references Recipe(RecipeId),
    RecipeSequence int not null 
)