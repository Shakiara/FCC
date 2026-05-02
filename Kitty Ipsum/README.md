The first thing you need to do is start the terminal. Do that by clicking the "hamburger" menu at the top left of the screen, going to the "terminal" section, and clicking "new terminal". Once you open a new one, type echo hello bash into the terminal and press enter.

The command you just entered printed to the terminal. You can redirect that output to a file using >. Here’s an example: <command> > <filename>. Enter the same command but redirect the output into stdout.txt.

A stdout.txt file was created. You should take a look at it. Instead of printing hello bash to the terminal, it redirected the output to the file. A single > will create or overwrite the file. Use the same command with >> to append to the file.

Take a look at the file again. The output of echo hello bash was added to it. Use the command with one > again to overwrite the file.

Take a look at the file. It was overwritten with the output of the command. Enter > stdout.txt in the terminal to redirect nothing into the file. Effectively, emptying it.

Next, enter bad_command in the terminal to see what happens. You will get an error.

Enter the same command, but try to redirect the output to stderr.txt using >.

There’s two types of output, stdout (standard out) for when a command is successful, and stderr (standard error) for when it’s not. Both of these will print to the terminal by default. bad_command was not a valid command, so it printed to stderr. You can redirect stderr with 2>. Enter the same command but redirect stderr to stderr.txt

Take a look at the stderr.txt file. The error was redirected to the file and nothing printed in the terminal. You used 2> to redirect stderr. Similarily, you can use 1> to redirect stdout. Enter echo hello bash again and use it to redirect stdout to the stdout.txt file.

stdout and stderr are for output. stdin (standard in) is the third thing commands can use and is for getting input. The default is the keyboard. Enter read NAME in the terminal to see a command that uses stdin.

The read command is looking at stdin for where to get input, which is pointing to the keyboard. Type your name and press enter.

Use echo to print the variable you just created.

Use echo to print the NAME variable again, but redirect the stdout to stdout.txt so it overwrites the file.

Use echo and redirection to put the text freeCodeCamp in a name.txt file for some more testing. Remember that it will create the file if it doesn't exist.

Just like you can redirect output, you can redirect stdin as well. Here's an example: <command> < <filename_for_stdin>. Use the read command to assign the NAME variable to the contents of name.txt by redirecting the stdin.

stdin was pointing to the name.txt file this time. Use echo to print the NAME variable again.

Now the variable is set to the content of the file, which was the input. Another way to set the stdin is by using the pipe (|). It will use the output from one command as input for another. Here's an example: <command_1> | <command_2>. This will take the stdout from command_1 and use it as the stdin for command_2. Use this method to echo your name and pipe the output into the read command which reads your name into the NAME variable.

Use echo to print the variable again.

It worked, but it doesn't look like it. When you used the pipe (|) to set the input for read, it ran the command in a subshell or subprocess. Basically, another terminal instance within the one you see. The variable was set in there and didn't affect the one you had previously set. cat is another command that takes input. Enter it in the terminal.

cat will print the contents of a file or input to stdout. You didn't specify any input for the command. Feel free to type something and press enter. When you are done, press control+c to finish the command.

cat can take a filename as an argument. Use it again with your name.txt file as an arguement to print the contents of the file.

Enter the same command but use redirection to set the stdin to name.txt

Use echo to print your name and pipe the output into the cat command.

You should be starting to get the hang of how stdin, stdout, and stderr work but let's try another example with your own command. Use touch to create a file named script.sh.

Give your new script executable permissions with the chmod command and the +x flag.

This will be a very simple script with only a few commands. At the top of file, add a shebang that looks like this: #!/bin/bash.

Below the shebang, add a read command that reads input into a NAME variable.

Below that, use echo to print Hello <name> using the variable.

One more thing. Add bad_command at the bottom of the file.

Your script takes input from stdin and will output to stdout and stderr. Run your script and don't input anything for now.

The read command in your script is waiting for input. Type your name and press enter.

You input your name, and your script output the result of the two commands. Run the script again, but use a pipe to echo your name as the input.

It didn't ask for input this time because you gave it input with the pipe. The two types of output were printed in the terminal. Run the same command but redirect stderr output to the stderr.txt

Again, it didn't ask for input. This time it only printed your name to the terminal and not the output of bad_command. That produced an error, which you redirected to stderr.txt. Take a look at that file. You can redirect both the stderr and stdout by adding another redirection at the end like this: > <filename>. Enter the same command, redirect the stderr to the same place again, and the stdout to stdout.txt.

It didn't ask for input and nothing was printed in the terminal that time. You redirected both outputs to files. You should take a look at them to see if they have what you expected. Run your script again, use redirection to set name.txt as the input. Don't redirect any of the output.

Excellent. Run the same command, but redirect the stderr to stderr.txt.

Nice job! Run it again, redirect the stderr to the same place and the stdout to stdout.txt

😄 You have two kitty_ipsum files. Find out what's in them by printing the first one in the terminal with cat.

It's some kitty ipsum. You may enjoy reading it 😄 Look at the second one with cat like you did this one.

You will write a small script to translate both of them into doggy ipsum. For now, you will learn some commands to figure out how. The first one is wc. It prints some info about a file. It can take a file as an argument like the cat command. Use it to see what it shows you about your kitty_ipsum_1.txt file.

Not quite sure what all those numbers mean. Check the manual of the wc command to see if you can find out more.

wc stands for word count. It showed you how many lines were in the file, how many words, and how many bytes. Use the -l flag to only output how many lines are in the file. Don't do any redirecting of input or output.

The file has 27 lines. Check how many words are in the file.

332 words are in the kitty_ipsum_1.txt file. Lastly, check how many characters it has.

Use the command without any flags to see if the numbers are the same.

That shows the byte count instead of the character count. Some characters must be more than one byte. Use cat to pipe the content of the file as the input of the wc command to see if the output is the same.

It looks like the way you give input to a command may affect the output. It only printed the numbers that time and not the filename. Try using redirection as the input with the same file and command to see what that outputs.

No filename again with fewer spaces that time. You may have to play with certain commands to get the output you are looking for. You are going to create a file that has some meta information about the two kitty ipsum files in it. Use echo and redirection to print ~~ kitty_ipsum_1.txt info ~~ to a file named kitty_info.txt. Make sure to place the text in quotes.

Open the file so you can keep track of what's in it. Use echo and the -e flag with the new line character (\n) to append Number of lines: to the kitty_info.txt file. Add the new line character at the beginning of the text so there's an empty line. Remember that you can append output to a file with >>.

You should be able to find out how many lines are in the kitty_ipsum_1.txt file and add that number to the kitty_info.txt file. Use the cat command to pipe the content of kitty_ipsum_1.txt as input for the wc command. Use the flag for getting the number of lines from that input and append the number to the kitty_info.txt file. Tip: enter the command without appending to see if it's working first.

Next, you want to put a word count of the file in the info. Use echo again to append Number of words: to kitty_info.txt. Put a new line in front of the text like you did for the first one.

Use cat and the pipe method again to append the number of words in kitty_ipsum_1.txt to kitty_info.txt.

Next, you want to add the number of characters. Use the echo command with redirection to append Number of characters:, with a new line in front of it, to kitty_info.txt like you did with the other sentences.

Append the number of characters in kitty_ipsum_1.txt to kitty_info.txt. Use the redirection method as the input for the wc command this time instead of the piping method.

grep is a command for searching for patterns in text. You can use it like this: grep '<pattern>' <filename>. Use it to search for the pattern meow in the kitty_ipsum_1.txt file.

It showed you all the lines that contain meow somewhere in them, but it’s a little messy. View the manual of grep to see if you can find anything to help.

That's a lot of options. Use grep to search for the meow pattern in the same file, but add that --color flag to see if it's a little more helpful.

That’s better. Add the flag to show all the line numbers with the command.

It's showing the line number of each match it found. grep can use regular expressions, too. Enter the previous command, but change the pattern to meow[a-z]* to see all words that start with meow.

Looking at the output, you can see that it matched meow and meowzer, instead of just meow. Use the echo command and redirection to append the text Number of times meow or meowzer appears:, with a new line in front of it, to the kitty_info.txt file.

So how can you find how many times those two words appear? Use grep to find the meow[a-z]* pattern in the file again to see how many times they appear. Add the --color flag to the command.

It looks like seven, but how can you get a count of that from the command line to append to the info file for the next piece of information? grep has a -c flag to give you a count. Enter the last command but use that instead of the --color flag.

That gave you a count of the number lines that the pattern occurred on. Check the manual of grep to see if there's a way to find a count of all the words matched.

It doesn't look like that's an option. But there is a -o flag that says it will put the matches on their own lines. Try that one with that command instead of the -c flag.

That gave you each match on it's own line. You can use the wc command again to get a count of the lines to find out how many matches there are. Pipe the output of the last command into the wc command and use the flag for showing the line count.

Awesome. wc counted the lines in the output of the grep. That should be the count for how many times those words appear. Enter the same command but append the number to the kitty_info.txt file.

Append the text Lines that they appear on: to the kitty_info.txt file. Use the echo command with the -e flag again and put a new line in front of the text.

There was a -n flag with grep to get line numbers. Use it to check the kitty_ipsum_1.txt file for the meow[a-z]* pattern again.

Check the grep manual to see if there's a way to get just the line numbers.

There doesn't appear to be a way to just get the line numbers. There's a sed command for replacing text that might work. First, some practice. Use cat to print the name.txt file in the terminal. It should still say freeCodeCamp.

sed can replace text like this: sed 's/<pattern_to_replace>/<text_to_replace_it_with>/' <filename>. By default, it won't replace the text in the file. It will output it to stdout. Use it to replace r with 2 in the name.txt file and the output prints to the terminal.

You can see that it replaced the r with a 2 in freeCodeCamp. Use it again to replace free with f233 in the same way.

Try it again, replacing freecodecamp with f233C0d3C@mp.

Nothing was replaced that time. It didn't find the freecodecamp text you tried to replace because the case of a few letters didn't match. You can add regex flags after the last / in the sed argument. A g, for global, would replace all instances of a matched pattern, or an i to ignore the case of the pattern. Enter the same command but add the correct regex flag to ignore the case.

It worked that time since it wasn't required to match the case. As with any command, the input can be redirected. Use the same sed replacement and file but redirect the input this time.

The method of input didn't affect the output. Use the cat and pipe method this time to set the input for the sed command, replacing the same text.

Back to the task at hand. You want to add the line numbers asked for in the kitty_info.txt file. Use grep with the flag to show line numbers to find the meow[a-z]* pattern in the kitty_ipsum_1.txt file again.

You can use sed to change each line number in that output. Start by entering the last command and pipe the output into sed that replaces [0-9] with 1.

That matched the first digit it found on each line and replaced it with 1. Enter the same command but change the matching pattern to [0-9]+ to match one or more numbers.

That didn't replace anything. Check the manual of sed quick to see if there's anything to help.

Looks like there's a lot of options with sed as well. There's a flag to use extended regular expressions. Add it to that previous command that didn't work so it recognizes the + in your pattern. The previous command was grep -n 'meow[a-z]*' kitty_ipsum_1.txt | sed 's/[0-9]+/1/'.

It worked that time. It replaced all the numbers at the start with a 1. Next, you will use a capture group in the regex to capture the numbers so you can use them in the replacement area. Enter the same command but use s/([0-9]+)/\1/ with sed to capture the numbers at the start. It will replace them with themselves for now.

That matched all the numbers and replaced them with the same numbers. All you need to do is match everything else on each line and replace it with only the numbers. Add .* at the end of the sed matching pattern so it matches everything, captures the numbers, and replaces everything with the captured numbers.

There's your list of numbers for the kitty_info.txt file. Enter the same command and append the list of numbers to it.

Take a look at the file. Hopefully it doesn't look too messy. You can reset a lesson at any time if it doesn't look right, or if you accidentally change something in one of the other files. There's one more group of words to find info on for this file. Use grep with the --color flag to see all the words that start with cat in the same file. Use a similar pattern that you used to find words starting with meow.

There's three variations of words starting with cat. Use echo with the -e flag to append Number of times cat, cats, or catnip appears: to the kitty_info.txt file. Put a new line at the beginning of the text like the other lines.

You will want to find the number of times those words appear again. First, use grep with the correct flag to put all the matches of the cat[a-z]* pattern on their own line.

Enter the same command and pipe the output into the command that outputs the count of those lines.

That's a count of how many times cat, cats, or catnip appears in the file. Enter the same command and append the count to the kitty_info.txt file.

Next, use echo to add the text Lines that they appear on: to the kitty_info.txt file again. Place a new line in front of the text like before.

The process to add the lines to the file will be the same as you did before. Start by using grep to match the cat words in the file and showing the line numbers with the output.

That shows you the line numbers and text. You will have to use sed again to extract only the line numbers. Pipe the output of the last command into sed to do that. As a reminder, the sed pattern was 's/([0-9]+).*/\1/'.

Awesome. Enter the last command and append the line numbers to the kitty_info.txt file.

Hopefully your info file is looking good. Next, you want to do the same thing for the kitty_ipsum_2.txt file. Using echo in the terminal, append ~~ kitty_ipsum_2.txt info ~~ to the kitty_info.txt file. Put two new lines in front of the text this time.

The first piece of info you want to know is the number of lines in the file. Use the terminal to append Number of lines: to the file with a new line in front.

Use cat with the pipe method to append the info to the kitty_info.txt file that it is asking for.

Nice job! Next, use the terminal to append Number of words: to the kitty_info.txt file. Put a new line in front of the text again.

Append the suggested info the kitty_info.txt file. Use redirection instead of the pipe method for the input this time.

Next, is the character count. Append Number of characters: to the file with a new line in front of the text. Use the method you have been using.

Using the pipe or input redirection method, append the character count of kitty_ipsum_2.txt to the kitty_info.txt file.

Excellent. Next, use grep to see how many variations of meow there are in kitty_ipsum_2.txt. Use the same pattern you used before and add the flag to show colors so it's easier to see.

It's the same variations as the other file. Append Number of times meow or meowzer appears: to the kitty_info.txt file with a new line in front of it like before.

Use grep and wc in the terminal to append the suggested number to the kitty_info.txt file.

😎 Next, use the terminal to append Lines that they appear on: to the kitty_info.txt file with a new line in front of the text.

Use grep and sed in the terminal to append the suggested line numbers to the kitty_info.txt file.

😎 😎 Use grep to see how many variations of cat there are in kitty_ipsum_2.txt. Use the same pattern you used before and include the flag to show colors so it's easier to see.

Same variations as the other kitty ipsum file. Append Number of times cat, cats, or catnip appears: to the kitty_info.txt file. Use the method you have been using.

Use grep and wc in the terminal to append the suggested info to kitty_info.txt

😎 😎 😎 One more. Append Lines that they appear on: to it like you did for the others.

Use grep and sed in the terminal to append the suggested numbers to the kitty_info.txt file.

😎 😎 😎 😎 The kitty_info file is done and it has some information about the two ipsum files. Next, you will create a small script to translate both them into doggy ipsum. It will be as simple as replacing all the cat references with similar words for dogs. In the terminal, use touch to create translate.sh.

Give your new script executable permissions so you can run it in the terminal.

Add a shebang to the script that uses bash like you did for the other script you made.

The script will take a file as input that can be passed as an argument or read from stdin. Below the shebang, use cat to print the content of the first argument passed to the script.

Run the script and use the first kitty ipsum file as an argument to see if it's working.

Try the same command using redirection to print the file.

Looks like that is working. Try the cat and pipe method.

Using any of those three methods as input is working. Time to start replacing some of the text with doggy ipsum. In your script file, pipe the input into a sed that replaces catnip with dogchow.

Run the script passing the first kitty ipsum file as a argument to see if it's working.

If you look, you can find dogchow in there so it's probably working. To make sure pipe the results of that into a grep command that searches for dogchow. Output the results in color.

It's showing three places catnip was replaced with dogchow. To make sure you got them all, enter the previous command and search for catnip instead.

It didn't output anything, so it must be replacing all the instances of catnip. You can replace many patterns using sed like this: sed 's/<pattern_1>/<replacement_1>/; s/<pattern_2>/<replacement_2>/'. Note that you need the semi-colon between the two replacement patterns and they both need to be wrapped in the quotes. In your script, add another pattern to the sed command that replaces cat with dog.

Now, it should replace catnip with dogchow and cat with dog. Use the script to translate the first ipsum file again. Search the results with grep for any words that start with dog. Part of that search pattern should be [a-z]*. Make sure to show the results in color.

As expected, it replaced instances of cat with dog. Enter the same command, but search for anything starting with cat to make sure it replaced them all.

It didn't find any so it must be replacing them all. You added two patterns as part of the sed in your script. Add a third that replaces all meow words with woof.

Using your script, translate the first ipsum file again. Check the results with grep for words that start with dog or woof. Here's an example of the search pattern you want: grep '<dog_words>|<woof_words>'. To view "dog words", you would use dog[a-z]*. Be sure to view the result in color.

That didn't work. Enter the same command, but add the flag to use extended regular expressions to the grep search so it recognizes the |.

If you look closely, you can see that the meow part of meowzer on that one line didn't get replaced with woof. grep only matched the first instance of meow it found on that line. Add the "global" regex flag to all three patterns of the sed command in your script so it will replace all instances of any of the words.

Enter the same command to translate the first ipsum file and see the matches of all words starting with dog or woof to see if that worked.

It worked, but woofzer doesn't sound quite right. Change your sed pattern that matched meow to match meow|meowzer. Add the flag to use extended regular expressions to the sed command so it recognizes the |.

Now it should replace either of those two words with woof. Check it again with that command you entered before that searches for dog or woof words.

It replaced meowzer that time. To be sure it replaced all the words in the file, enter the same command but check for meow or cat words in the same way.

No results means it didn't find any matches for cat or meow words after being translated. Check the second kitty ipsum file for the same pattern to make sure it's replacing all those words.

Okay, your script is finished. Translate the kitty_ipsum_1.txt file, using the filename as an argument, and put the output into a new doggy_ipsum_1.txt file.

Use cat to print the new file to the terminal.

It looks good 👍 diff is a command to view the difference between two files. You can use it like this: diff <file_1> <file_2>. Use it to view the difference between the kitty_ipsum_1 and doggy_ipsum_1 files.

It may look a little cryptic, but it's showing the lines that don't match in the two files. Check the manual of diff to see if there's any way to make it prettier.

Use the flag to show the diff of the same two files in color.

That's better. The red lines are lines that aren't in the second file, and the green lines are what they were replaced with. The line numbers that were changed are above each section. Translate your second kitty ipsum file and redirect the output into doggy_ipsum_2.txt.

View the content of your new file with cat