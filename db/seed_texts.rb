
require 'pp'





SystemText.create(  :key => 'RESOURCES_TEXT', 
                    :value => '<h2>Please edit the System Text for <em>RESOURCES_TEXT</em> to change this text</h2>', 
                    :description => 'Text for the Resource Page') if SystemText.where("key = ?", 'RESOURCES_TEXT').count == 0


SystemText.create(  :key => 'RESOURCES_EMAIL', 
                    :value => 'liz@cezatcreative.com', 
                    :description => 'email recipient of submitted Resources.') if SystemText.where("key = ?", 'RESOURCES_EMAIL').count == 0



SystemText.create(  :key => 'RESOURCES_PAGE_HEADING', 
                    :value => '<h1>ONE Goal Resources</h1>', 
                    :description => 'Page heading for Resources page.') if SystemText.where("key = ?", 'RESOURCES_PAGE_HEADING').count == 0


SystemText.create(  :key => 'RESOURCES_PAGE_HEADING', 
                    :value => '<h1>ONE Goal Resources</h1>', 
                    :description => 'Page heading for Resources page.') if SystemText.where("key = ?", 'RESOURCES_PAGE_HEADING').count == 0



SystemText.create(  :key => 'RESOURCES_SUGGESTION_PROMPT', 
                    :value => 'Suggest Resource', 
                    :description => 'The text that appears by the mailto link for suggesting a resource on the Resource page.') if SystemText.where("key = ?", 'RESOURCES_SUGGESTION_PROMPT').count == 0


SystemText.create(  :key => 'ACTION_STEP_ITEM_FONT_SIZE', 
                    :value => '10', 
                    :description => 'Controls the font-size of the text of each Action Step on the Action Steps page.') if SystemText.where("key = ?", 'ACTION_STEP_ITEM_FONT_SIZE').count == 0

SystemText.create(  :key => 'ACTION_STEP_TARGET_DATE_FONT_SIZE', 
                    :value => '10', 
                    :description => 'Controls the font-size of the text of each Action Step on the Action Steps page.') if SystemText.where("key = ?", 'ACTION_STEP_TARGET_DATE_FONT_SIZE').count == 0

SystemText.create(  :key => 'ACTION_STEP_COMPLETED_DATE_FONT_SIZE', 
                    :value => '10', 
                    :description => 'Controls the font-size of the text of each Action Step on the Action Steps page.') if SystemText.where("key = ?", 'ACTION_STEP_COMPLETED_DATE_FONT_SIZE').count == 0

SystemText.create(  :key => 'ACTION_STEP_LINKS_FONT_SIZE', 
                    :value => '10', 
                    :description => 'Controls the font-size of the text of each Action Step on the Action Steps page.') if SystemText.where("key = ?", 'ACTION_STEP_LINKS_FONT_SIZE').count == 0




SystemText.where("key = ?", "RESOURCES").first.delete if  SystemText.where("key = ?", 'RESOURCES').count > 0
SystemText.where("key = ?", "ACTION_STEPS_FONT_SIZE").first.delete if  SystemText.where("key = ?", 'ACTION_STEPS_FONT_SIZE').count > 0





