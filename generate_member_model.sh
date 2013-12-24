#rails g model member first_name last_name phone_number email_address club_name user_id
#rails g scaffold_controller members first_name last_name phone_number email_address club_name user_id

# rails g model goal user_id:integer description display_name club_name display_club request_buddy
# rails g scaffold_controller goals user_id:integer description display_name club_name display_club request_buddy

# rails g model action_step goal_id description target_date:date completed:date 
rails g scaffold_controller action_steps goal_id description target_date:date completed:date 


