use HeartyHearth

delete CookBookRecipes
delete CookBook
delete MealCourses
delete Meal
delete CourseRecipes
delete Course
delete RecipeDirections
delete RecipeIngredients
delete Recipe
delete Cosine 

insert cosine(CosineName)
select 'American'
union select 'French'
union select 'English'
union select 'Israeli'

insert Recipe(CosineId, RecipeName, CaloriesInRecipe, RecipeStatus, TimeCreated, TimePublished, TimeArchieved, CreatedBy)
select (select c.CosineId from Cosine c where c.CosineName = 'American'),
'Chocolate Chip Cookies', 120, 'Draft', '2025-09-29', null, null, 'HanochP'
union select (select c.CosineId from Cosine c where c.CosineName = 'American'),
'Chocolate Chip cake', 110, 'Draft', '2025-09-29', null, null, 'HanochP'
union select (select c.CosineId from Cosine c where c.CosineName = 'French'),
'Cheesy pasta', 110, 'Draft', '2025-09-29', null, null, 'HanochP'
union select (select c.CosineId from Cosine c where c.CosineName = 'French'),
'Apple Yogurt Smoothie', 70, 'Published', '2025-08-01', '2025-09-28', null, 'ShmilyS'
union select (select c.CosineId from Cosine c where c.CosineName = 'English'),
'Cheese Bread', 200, 'Draft', '2025-09-29', null, null, 'MottyG'
union select (select c.CosineId from Cosine c where c.CosineName = 'American'),
'Butter Muffins', 150, 'archived', '2024-09-28', '2025-05-20', '2025-08-28', 'YossiS'

;
with x as(
    select Recipe = 'Chocolate Chip Cookies',  Seq = '1', Ingredient = 'sugar', Mesurment = 'Cup', Amount = '1'
    union select 'Chocolate Chip Cookies', '2', 'Oil', 'Cup', '1/2'
    union select 'Chocolate Chip Cookies', '3', 'Eggs', 'Whole', '3'
    union select 'Chocolate Chip Cookies', '4', 'Flour', 'Cup', '2'
    union select 'Chocolate Chip Cookies', '5', 'Vanila sugar', 'Tsp', '1'
    union select 'Chocolate Chip Cookies', '6', 'Baking powder', 'Tsp', '2'
    union select 'Chocolate Chip Cookies', '7', 'Baking soda', 'Tsp', '1/2'
    union select 'Chocolate Chip Cookies', '8', 'Choclate chips', 'Cup', '1'
    union select 'Apple Yogurt Smoothie', '1', 'granny smith apple', 'Whole', '3'
    union select 'Apple Yogurt Smoothie', '2', 'vanilla yogurt', 'Cup', '2'
    union select 'Apple Yogurt Smoothie', '3', 'sugar', 'Tsp', '2'
    union select 'Apple Yogurt Smoothie', '4', 'orange juice', 'Cup', '1/2'
    union select 'Apple Yogurt Smoothie', '5', 'Honey', 'Tbsp', '2'
    union select 'Apple Yogurt Smoothie', '6', 'ice cubes', 'Unit', '5-6'
    union select 'Cheese bread', '1', 'club bread', 'Slice', '1'
    union select 'Cheese bread', '2', 'butter', 'OZ', '4'
    union select 'Cheese bread', '3', 'shredded cheese', 'OZ', '8'
    union select 'Cheese bread', '4', 'cloves garlic (crushed)', 'Unit', '2'
    union select 'Cheese bread', '5', 'black pepper', 'Tsp', '1/4'
    union select 'Cheese bread', '6', 'salt', 'Pinch', '1'
    union select 'Butter Muffins', '1', 'butter', 'stick', '1'
    union select 'Butter Muffins', '2', 'sugar', 'Cup', '3'
    union select 'Butter Muffins', '3', 'vanilla pudding', 'Tbsp', '2'
    union select 'Butter Muffins', '4', 'eggs', 'Whole', '4'
    union select 'Butter Muffins', '5', 'whipped cream cheese', 'OZ', '8'
    union select 'Butter Muffins', '6', 'sour cream cheese', 'OZ', '8'
    union select 'Butter Muffins', '7', 'Flour', 'Cup', '1'
    union select 'Butter Muffins', '8', 'baking powder', 'Tsp', '2'
)
insert RecipeIngredients(RecipeId, IngredientSequence, IngredientDesc, Measurement, Amount)
select r.RecipeId, x.Seq, x.Ingredient, x.Mesurment, x.Amount
from x 
join Recipe r 
on x.Recipe = r.RecipeName

;
with x as(
    select Recipe = 'Chocolate Chip Cookies', Seq = 1, Descr = 'First combine sugar, oil and eggs in a bowl' 
    union select 'Chocolate Chip Cookies', 2, 'mix well' 
    union select 'Chocolate Chip Cookies', 3, 'add flour, vanilla sugar, baking powder and baking soda' 
    union select 'Chocolate Chip Cookies', 4, 'beat for 5 minutes' 
    union select 'Chocolate Chip Cookies', 5, 'add chocolate chips' 
    union select 'Chocolate Chip Cookies', 6, 'freeze for 1-2 hours' 
    union select 'Chocolate Chip Cookies', 7, 'roll into balls and place spread out on a cookie sheet' 
    union select 'Chocolate Chip Cookies', 8, 'bake on 350 for 10 min.' 
    union select 'Apple Yogurt Smoothie', 1, 'Peel the apples and dice'
    union select 'Apple Yogurt Smoothie', 2, 'Combine all ingredients in bowl except for apples and ice cubes'
    union select 'Apple Yogurt Smoothie', 3, 'mix until smooth'
    union select 'Apple Yogurt Smoothie', 4, 'add apples and ice cubes'
    union select 'Apple Yogurt Smoothie', 5, 'pour into glasses. '
    union select 'Cheese bread', 1, 'Slit bread every 3/4 inch'
    union select 'Cheese bread', 2, 'Combine all ingredients in bowl'
    union select 'Cheese bread', 3, 'fill slits with cheese mixture'
    union select 'Cheese bread', 4, 'wrap bread into a foil and bake for 30 minutes.'
    union select 'Butter Muffins', 1, 'Cream butter with sugars'             
    union select 'Butter Muffins', 2, 'Add eggs and mix well'
    union select 'Butter Muffins', 3, 'Slowly add rest of ingredients and mix well'
    union select 'Butter Muffins', 4, 'fill muffin pans 3/4 full and bake for 30 minutes.'
     
)

insert RecipeDirections(RecipeId, DirectionSequence, DirectionDesc)
select r.RecipeId, x.Seq, x.Descr
from x 
join Recipe r 
on x.Recipe = r.RecipeName


insert Course(CourseName)
select 'Dessert'
union select 'Appetizer'
union select 'Main course'
union select 'After dinner'

;
with x as(
   select Course = 'After dinner', Recipe = 'Chocolate Chip Cookies', Dish = 'main'
   union select 'Main Course', 'Cheese bread', 'main'
   union select 'Main Course', 'Butter Muffins', 'side'
   union select 'Appetizer', 'Apple Yogurt Smoothie', null
)
insert CourseRecipes(CourseId, RecipeId, DishType)
select c.CourseId, r.RecipeId, x.Dish
from x 
join Recipe r 
on x.Recipe = r.RecipeName
join Course c 
on x.Course = c.CourseName


insert Meal(MealName, MealStatus, CreatedBy)
select 'Breakfast bash', 'Active', 'Hanochp'
union select 'Lunch Blast', 'Active', 'ShmilyS'
union select 'dinner', 'Inactive', 'MottyG'

;
with x as(
    select Meal = 'Breakfast bash', Course = 'Main course', seq = 1
    union select 'Breakfast bash', 'Appetizer', 2
    union select 'Lunch Blast', 'Main course', 1
    union select 'Lunch Blast', 'After dinner', 2
)
insert MealCourses(MealId, CourseId, CourseSequence)
select m.MealId, c.CourseId, x.seq
from x 
join Meal m 
on x.Meal = m.MealName
join Course c 
on x.Course = c.CourseName

insert CookBook(BookName, Price, CookBookStatus, CreatedBy)
select 'Treats for two', 30, 'Active', 'HanochP'
union select 'Food for good', 50, 'Active', 'ShmilyS'
union select 'The Best for the Best', 20, 'Inactive', 'MottyG'


;
with x as(
    select CookBook = 'Treats for two', Recipe = 'Chocolate Chip Cookies', seq = 1
    union select 'Treats for two', 'Apple Yogurt Smoothie', 2
    union select 'Treats for two', 'Cheese Bread', 3
    union select 'Treats for two', 'Butter Muffins', 4
    union select 'food for good', 'Cheese Bread', 1
    union select 'food for good', 'Butter Muffins', 2
    union select 'The Best for the Best', 'Cheese Bread', 1
)
insert CookBookRecipes(CookBookId, RecipeId, RecipeSequence)
select c.CookBookId, r.RecipeId, x.seq
from x 
join Recipe r 
on x.Recipe = r.RecipeName
join CookBook c 
on x.CookBook = c.BookName