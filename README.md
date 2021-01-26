# udacity_aws_architecture_performance
This Project contains all requested artefacts grouped by task

Based on the latest mentors feedback and the advice from another mentor to raise my concerns with how things are graded in a re-submission.

# Granularity in Task 1/1
* The project descriptions lacks granularity. So it is not clear for instance to which detail diagrams have to be made. In the last rating, the mentor mentioned that he wants me to add CIDR ranges. I added this, because it is no big deal. I however adjust the description in the project or reevaluate your rubic.

# Diagram in Task 1/2
* Mentor complains that I connect a lambda function with S3 and claims that only cloudfront should be connected with S3. I corrected this, because I want to finish this exercise, but it is factually wrong.

I can have a lambda function that can also write to S3. I find the project very bad as we just have to write a diagram and there is no purpose explained. If there would be a purpose, I would understand.

# Cost estimate - Factual Errors or confusing things in grading
* The mentors asks me to add VPCs to the cost estimate. However VPCs are are free. Evaluating VPCs is counterproductive. However adding a Natgateway, we can add costs. I suggest adjusting your standard feedback.
* Please add where to add the rationale. I am not sure if the prior mentor saw that i had them in a separate file. If you want them in the CSV, add them to the CSV
* I keep the rationale separated in text file
* Please reconsider to give a feedback to use t instead of m. Coming from the industry and project using EKS nodes and DBs, it do not think it is a good practice in every scenario.

# Task 3, Point 8: FACTUAL ERRORS
Here we have a situation that is not solvable by design.

The requirement is: "Download the the portion of the CLoudTrail Log that shows the entire Task 3 timeframe."

This is a hen and egg problem.
- If I create a CloudTrail log, the CloudTrail starts logging after it is created.
- If part of the exercise is to create users and policies for the CloudTrail-Log and log them via Cloudtrail, how can the CloudTrail log this if is has not been created yet?
- The only way out would be to log this in a separate CloudTrail log to capture all activities needed to create a cloudlog.

In addition, the exercise requests to deliver all information in a CSV file. However, Cloudtrail logs as JSON.

Therefore, I challenge this part of the exercise and ask to change this. I assume by raising this problem and by providing a json with cloudtrail logs after the cloudtrail was created, I should have demostrated that I understand the topic.