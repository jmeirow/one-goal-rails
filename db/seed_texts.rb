
require 'pp'



SystemText.delete_all

str = "[{\"key\"=>\"GOAL_DESCRIPTION\", \"value\"=>\"Enter your ONE Goal as you would like it to be visible to other members. It will be displayed to other D28 members in the ONE Goal Marquee.\", \"description\"=>\"to do\"}, {\"key\"=>\"GOAL_NOTE_DESCRIPTION\", \"value\"=>\"Enter any addtional notes here. These will <strong>not</strong> be displayed publicly. We could put our changes here.\", \"description\"=>\"to do\"}, {\"key\"=>\"EMAIL_WELCOME_TEXT\", \"value\"=>\"<p>Congratulations, you are now registered for D28's ONE Goal program. </p>\\r\\n\\r\\n<p>With the support and tracking system of this unique program, your fellow Toastmasters are here to help you succeed. For best results in achieving your goal, plan to sign in 2 to 3 times weekly to add \\\"next steps\\\",  track your progress, and gain new insight and support from the Resources page. As a registered user, you will receive e-mails (2 to 3 times weekly) to help motivate and inspire you to reach your goal. </p>\\r\\n\\r\\n<p>Please adjust your e-mail settings to allow these messages to be viewed from your in-box rather than fishing for them in your junk mail. Enjoy the journey.</p>\\r\\n\\r\\n<br/><br/>\\r\\nJason Schumacher\\r\\n<br/>\\r\\nDistrict 28 Governor\\r\\n\", \"description\"=>\"This is the text that makes up the body of the ONE Goal Welcome Email that users receive upon signing up.\"}, {\"key\"=>\"EMAIL_WAITING_FOR_BUDDY_TEXT\", \"value\"=>\"<p>Hello,</p>\\r\\n\\r\\n    <p>\\r\\n    \\tYou have requested a buddy be assigned to you, however there are currently no unmatched Toastmasters to pair with you.\\r\\n    \\tYou will be paired with the next Toastmaster to request a buddy and an email sent to both of you at that time.\\r\\n    </p>\\r\\n\\r\\n<br/><br/>\\r\\nJason Schumacher\\r\\n<br/>\\r\\nDistrict 28 Governor\", \"description\"=>\"This is the text for the email that is sent when a buddy is requested but not currently available.\"}, {\"key\"=>\"HOME_PAGE\", \"value\"=>\"<p style='margin-left:0px;width:90%;font-size:16pt;color: rgb(205, 32, 44)'>\\r\\n\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t<strong>Get what you deserve in your LIFE in 2014</strong><br/>\\r\\n\\t\\t\\t</p>\\r\\n\\t\\t\\t\\r\\n\\r\\n\\t\\t\\t\\t\\tReach ONE of your goals in 2014.<br><br>\\r\\n\\t\\t\\t\\t\\tIf you REALLY want to make something BIG happen, let District 28 Toastmasters help you get there.<br>\\r\\n\\t\\t\\t\\t\\tIt's as easy to start as 1,2,3:<br><br>\\r\\n\\r\\n\\t\\t\\t\\t\\t<ol style='font-weight:bold;margin-left:60px;width:80%;font-size:12pt'>\\r\\n\\t\\t\\t\\t\\t<li>Sign up on the \\\"ONE Goal\\\" website.</li>\\r\\n\\t\\t\\t\\t\\t<li>List your goal. Make it public or anonymous. </li>\\r\\n\\t\\t\\t\\t\\t<li>Request a fellow District 28 Toastmaster buddy online for support.</li>\\r\\n\\t\\t\\t\\t\\t</ol>\\r\\n\\r\\n\\t\\t\\t\\t\\t<br/>\\r\\n\\t\\t\\t\\t\\t<p style='margin-left:30px;width:80%;font-size:12pt'>If you do those 3 things, we'll do these 3 things:</p>\\r\\n\\r\\n\\t\\t\\t\\t\\t<ol style='font-weight:bold;margin-left:60px;'>\\r\\n\\t\\t\\t\\t\\t<li>Marquee your goal (with your name or anonymously) to let others know what goals are in progress.</li>\\r\\n\\t\\t\\t\\t\\t<li>Match you to a District 28 buddy who can give you encouragement, feedback and motivation.</li>\\r\\n\\t\\t\\t\\t\\t<li>Show you how the Toastmaster educational program, club meetings and events can help you achieve your ONE goal.</li>\\r\\n\\t\\t\\t\\t\\t</ol>\\r\\n\\r\\n\\t\\t\\t</p>\\r\\n\\t\\t\\t<p style='margin-left:30px;width:90%;font-size:12pt'>\\r\\n\\t\\t\\t\\tReady? Let's get started. Sign up NOW by clicking<a href='/signup'> here</a>.\\r\\n\\t\\t\\t</p>\", \"description\"=>\"to do\"}, {\"key\"=>\"TELL_ME_MORE\", \"value\"=>\"2. Tell me more (new page) \\r\\nAchieve your goals faster – using a systematic process \\r\\nONE Goal will help you chart a path to your goal by using Toastmasters principles and opportunities. Being able to commit to your progress and communicate effectively are core elements of life-changing goals.\\r\\nThe process or journey of reaching your goal can be recorded on this website. Basically, you will set one goal, commit to it, establish action steps, track your progress, and get support from a “buddy” when needed. \\r\\nThe power of making your goal public \\r\\nOnce you declare a goal, you are making a formal commitment to it.  When people know about your goal, they will encourage you to achieve it. \\r\\nIt’s easy to set a goal but lose track of the smaller steps needed to successfully reach the goal.  You may get distracted, become discouraged or feel like you are in this alone. Let’s face it, how often have you achieved a New Year’s resolution? With this program, if your progress starts to wane, your buddy can help you refocus and take the steps needed to achieve your goal. \\r\\nGet a buddy, be a buddy\\r\\nD28 Toastmasters who sign up for ONE Goal can select to have a buddy assigned to them. Buddies are paired during the registration process. It’s a reciprocal effort to encourage and support each other in reaching your ONE goal. You can communicate via e-mail, text, phone calls or meetings. The name of your buddy and his or her contact information will be sent via e-mail. If it takes longer than xxx days to be paired with a buddy, please notify the site administrator.\\r\\nTo reach your goal, take action on a regular basis\\r\\nThis program allows you to work at your own pace, but biweekly check-ins are advised. Each week and month, you should be able to show progress toward your goal. You will be able to review updated resources, such as powerful motivational tips from across the web, shared by D28 ONE Goal team members. \\r\\nTracking your progress\\r\\nThe tracking system on your ONE Goal page allows you to list what action steps need to be done and provides a notes section on the elements around this action step. (Do you need to contact someone, attend an event, or prepare a speech?) Each time you accomplish an action step, you can mark it done and move on to the next action step. Your progress will become a timeline to help guide you to successful goal completion.\\r\\nHow to reach a Toastmaster goal\\r\\nIf you plan to pursue a Toastmaster education goal as your ONE Goal, you will receive support and encouragement from your buddy, whether it involves finishing a manual, becoming a club or district officer, or completing a leadership project. Jason: add to or outline some TM principles & tips: finishing manuals to earn a CC or other communication goal, serving roles at meetings to obtain a CL, doing work in the community to earn other advanced citations. (For example:) You have used tracking mechanisms and step-by-step actions to move along in Toastmasters – whether you are working on your Competent Communicator designation or are in the home stretch to become a Distinguished Toastmaster (DTM).\\r\\nNancy Z. info here: TM manuals and projects – how to use it for a TM goal and how it can be applied to personal goals.)\\r\\n\\r\\nProgram duration \\r\\nThe five-month benchmark - This program will run through May 15 as a pilot program, with the potential of continuing through 2014. The website will be live for at least one year. (Jason and trio decision.) Regardless, you can continue to work with your buddy as long as you want to.  With this great start, you’ll be well on your way to achieving your goal at your own pace. \\r\\nYour reward\\r\\nThis effort will be “high 5ed” at the spring conference. A raffle of participants will dole out some special prizes, including:\\r\\nfull-paid registration to the spring conference\\r\\na plane-ride in Jeff Kirsch’s private plane (4 lucky winners) will head to XXXX for lunch? \\r\\nAll participants will get an “Striving for ONE Goal” ribbon \\r\\n(Jason to investigate cost, distribution, value to member.)\\r\\n\\r\\nTell your story:\\r\\nIf you attend the spring conference, be ready to participate in a Table Topics about your journey toward your goal. (trio: consider this option, it could be a “pop” question related to the quest. Do it during the lunch portion or Friday night?)\\r\\nGet a Bonus. \\r\\nIn the process of reaching your personal goal, you will also be hitting Toastmaster benchmarks, e.g. CC manual completion, High Performance Leadership (HPL) project, and CL (competent leader) manual completion. \\r\\nRules to follow:\\r\\nYou must update your goal biweekly (twice weekly) to be eligible for the final drawing. \\r\\nThe Toastmaster team will send regular e-mails to you, which will also be posted on the ONE goal website. Commit to opening these e-mails to get added motivation to keep taking action toward your goal. (Note: this could also be a video from Jason and perhaps TI world champs (e.g. Ryan Avery); and D28 Toastmasters who are doing well with their goal.) Per Jason: This would be an incentive for Toastmasters in the “One Goal” program to continue with it, since only participants would have access to these powerful tips from speaking champs. Plus, it would add credibility and pizzazz to the program\", \"description\"=>\"to do\"}, {\"key\"=>\"RESOURCES\", \"value\"=>\"<h1>This remains to-do</h1>\\r\\n\\r\\nYou can add HTML text by editing the 'RESOURCES' row on the System Text page.\\r\\n\\r\\n\", \"description\"=>\"to do\"}, {\"key\"=>\"FAQ\", \"value\"=>\"<h1>This remains to-do</h1>\\r\\n\\r\\nYou can add HTML text by editing the 'FAQ' row on the System Text page.\\r\\n\", \"description\"=>\"to do\"}, {\"key\"=>\"BUDDY_TOOLTIP\", \"value\"=>\"The ONE Goal program uses 'buddies' to provide encouragement and accountability. Would you like us to match you with a buddy or would you like to use your existing mentor or another Toastmaster you already know? (If we match you with a buddy, you will receive an email with their contact information.)\\r\\n\", \"description\"=>\"This is the text that displays next to the 'Want a Buddy?' question on the Member Info screen an appears in the 'tooltip' that appears when you over over the text that says (hover here).\"}, {\"key\"=>\"MEMBER_INFO_REQUIRED_BEFORE_GOAL\", \"value\"=>\"You must first enter Member information\", \"description\"=>\"to do\"}, {\"key\"=>\"GOAL_INFO_REQUIRED_BEFORE_ACTION_STEPS\", \"value\"=>\"You must first enter Goal information\", \"description\"=>\"to do\"}, {\"key\"=>\"EMAIL_SENDER_ADDRESS\", \"value\"=>\"joe.meirow@gmail.com\", \"description\"=>\"This is the email address used to send any emails regarding the buddy program.\"}, {\"key\"=>\"EMAIL_WELCOME_SUBJECT\", \"value\"=>\"Welcome to District 28's ONE Goal Program\", \"description\"=>\"This is the text that is the subject line in the Welcome email that is sent upon signing up for the program.\"}, {\"key\"=>\"EMAIL_WAITING_FOR_BUDDY_SUBJECT\", \"value\"=>\"About your D28 ONE Goal Buddy Request\", \"description\"=>\"This text appears in the subject line of the email sent when a member requests a buddy but one is not available at the moment.\"}, {\"key\"=>\"EMAIL_BUDDY_ASSIGNED_SUBJECT\", \"value\"=>\"Your District 28 ONE Goal Buddy Assignment\", \"description\"=>\"to-do\"}, {\"key\"=>\"EMAIL_BUDDY_ASSIGNED_TEXT\", \"value\"=>\"<p>\\r\\nWe have matched you with a buddy for the ONE Goal program. \\r\\n</p>\\r\\n<p>\\r\\nHe/she is: @member.first_name @member.last_name with the following e-mail @member.email and phone number: @member.phone_number. Please contact your buddy within 3 to 5 days to start gaining support and encouragement to achieve your goal. In turn, you will be providing support and new ideas to your buddy. </p>\\r\\n<p>\\r\\nThe ONE Goal Team. If you have questions, please contact the webmaster at @webmaster.\\r\\n</p>\\r\\n\\\"\", \"description\"=>\"to-do\"}, {\"key\"=>\"WEBMASTER_EMAIL_ADDRESS\", \"value\"=>\"joe.meirow@gmail.com\", \"description\"=>\"Webmaster's email address that appears in the Buddy Matched email text.\"}]"
records = eval(str)
records.each do |record|
  x = SystemRecord.new 
  x.key = record['key']
  x.value = record['value']
  x.description = record['description']
  x.save
  
end

