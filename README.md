# AWS Resource Usage Monitoring Script

This project is a simple shell script that monitors AWS resources using AWS CLI.

The script prints information about:
- S3 Buckets
- EC2 Instances
- Lambda Functions
- IAM Users

The script output is automatically saved to a file using a cron job.

---

## Technologies Used

- AWS EC2
- AWS CLI
- Bash Shell Scripting
- Cron Jobs


---

## Setup

1. Launch an EC2 instance.

2. Install AWS CLI.

3. Create the shell script:

chmod 777 aws_resource_usage.sh

4. Test script manually:

./aws_resource_usage.sh > output.txt

---

## Automating with Cron

Open cron editor:

crontab -e

Add the following line:

0 20 * * * /bin/bash /home/ec2-user/aws_resource_usage.sh >> /home/ec2-user/output.txt 2>&1

This runs the script daily at 8 PM.

---

## Example Output

The script logs information about AWS resources into `output.txt`.

---

## Learning Outcome

- Writing bash automation scripts
- Using AWS CLI
- Scheduling tasks using cron
- Monitoring AWS resources
