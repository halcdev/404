#!/bin/bash

# Path to your .procmailrc file
PROCMAIL_CONFIG="/home/shay/a/ece404u5/.procmailrc"

# Directory containing your junkMail files
JUNK_MAIL_DIR="/home/shay/a/ece404u5/Mail/404/"

# Loop through each junkMail file
for i in {1..74}
do
    # Format the file name with leading zero for numbers less than 10
    FILENAME="junkMail_$(printf "%02d" $i)"

    # Execute procmail for each file
    # procmail $PROCMAIL_CONFIG < "$JUNK_MAIL_DIR/$FILENAME"

    # Optional: Echo the file name to track progress
    echo "Processed $FILENAME"
done

# Optional: Check if any mails are left unfiltered
# If your mailbox is configured to /var/mail/your_username
# Uncomment the following line
# mailx
