puts "Deleting old data..."
Question.destroy_all
Subject.destroy_all

puts "🌱 Seeding Subjects..."
java_script = Subject.create(category: "JavaScript")
html = Subject.create(category: "HTML")
css = Subject.create(category: "CSS")
python = Subject.create(category: "Python")
sql = Subject.create(category: "SQL")
java = Subject.create(category: "Java")
c = Subject.create(category: "C++")


puts "🌱 Seeding Questions..."
# JS
Question.create(prompt: "Inside which HTML element do we put the JavaScript?", answer1: "<script>", answer2: "<js>", answer3: "<javascript>", answer4: "<scripting>", correct_answer: "<script>", subject_id: java_script.id)
Question.create(prompt: "Where is the correct place to insert a JavaScript?", answer1: "The <head> section", answer2: "Both the <head> section and the <body> section are correct", answer3: "The <body> section", answer4: "None of the answers are correct", correct_answer: "Both the <head> section and the <body> section are correct", subject_id: java_script.id)
Question.create(prompt: "How do you write 'Hello World' in an alert box?", answer1: "alert('Hello World');", answer2: "msg('Hello World');", answer3: "alertBox('Hello World');", answer4: "msgBox('Hello World');", correct_answer: "alert('Hello World');", subject_id: java_script.id)
Question.create(prompt: "What is the correct syntax for referring to an external script called 'xxx.js'?", answer1: "<script src='xxx.js'>" , answer2: "<script name='xxx.js'>", answer3: "<script href='xxx.js'>", answer4: "None of the answers are correct", correct_answer: "<script src='xxx.js'>", subject_id: java_script.id)
Question.create(prompt: "How do you call a function named 'myFunction'?", answer1: "function myFunction()" , answer2: "function = myFunction()", answer3: "function:myFunction()", answer4: "None of the answers are correct", correct_answer: "function myFunction()", subject_id: java_script.id)
Question.create(prompt: "How can you detect the client's browser name?", answer1: "navigator.appName", answer2: "browser.name", answer3: "client.navName", answer4: "client.serverName", correct_answer: "navigator.appName", subject_id: java_script.id)
Question.create(prompt: 'What is the correct JavaScript syntax for opening a new window called "w2"?', answer1: 'w2 = window.new("http://www.google.com");', answer2: 'w2 = window.open("http://www.google.com");', answer3: 'w2 = window.create("http://www.google.com");', answer4: 'w2 = window.code("http://www.google.com");', correct_answer: 'w2 = window.open("http://www.google.com");', subject_id: java_script.id)
Question.create(prompt: "Which of the following function of String object creates a string to be displayed as bold as if it were in a <b> tag?", answer1: "anchor()", answer2: "big()", answer3: "blink()", answer4: "bold()", correct_answer: "bold()", subject_id: java_script.id)
Question.create(prompt: "Which of the following function of Array object returns true if at least one element in this array satisfies the provided testing function?", answer1: "reverse()", answer2: "shift()", answer3: "slice()", answer4: "some()", correct_answer: "some()", subject_id: java_script.id)
Question.create(prompt: "How do you round the number 7.25, to the nearest integer?", answer1: "round(7.25)", answer2: "Math.rnd(7.25)", answer3: "Math.integer(7.25)", answer4: "Math.round(7.25)", correct_answer: "Math.round(7.25)", subject_id: java_script.id)

# HTML
Question.create(prompt: "What does HTML stand for?", answer1: "Hyperlinks and Text Markup Language" , answer2: "Home Tool Markup Language", answer3: "Hyper Text Markup Language", answer4: "None of the answers are correct", correct_answer: "Hyper Text Markup Language", subject_id: html.id)
Question.create(prompt: "Who is making the Web standards?", answer1: "Mozilla" , answer2: "Google", answer3: "Microsoft", answer4: "The World Wide Web Consortium", correct_answer: "The World Wide Web Consortium", subject_id: html.id)
Question.create(prompt: "Choose the correct HTML element for the largest heading:", answer1: "<h1>" , answer2: "<heading>", answer3: "<h6>", answer4: "<head>", correct_answer: "<h1>", subject_id: html.id)
Question.create(prompt: "What is the correct HTML element for inserting a line break?", answer1: "<lb>" , answer2: "<br>", answer3: "<break>", answer4: "None of the answers are correct", correct_answer: "<br>", subject_id: html.id)
Question.create(prompt: "Choose the correct HTML element to define important text", answer1: "<i>" , answer2: "<b>", answer3: "<important>", answer4: "<strong>", correct_answer: "<strong>", subject_id: html.id)
Question.create(prompt: "How can you open a link in a new tab/browser window?", answer1: '<a href="url" target="_blank">', answer2:'<a href="url" new>', answer3: '<a href="url" target="new">', answer4: '<a href="/" target="new">', correct_answer: '<a href="url" target="_blank">' , subject_id: html.id)
Question.create(prompt: '<a href="url" target="_blank">', answer1: '<table><tr><tt>', answer2: '<table><head><tfoot>', answer3: '<table><tr><td>', answer4: '<thead><body><tr>', correct_answer: '<table><tr><td>', subject_id: html.id)
Question.create(prompt: 'How can you make a numbered list?', answer1: "<list>", answer2: "<ul>", answer3: "<dl>", answer4: "<ol>", correct_answer: "<ol>", subject_id: html.id)
Question.create(prompt: "How can you make a bulleted list?", answer1: "<ul>", answer2: "<dl>", answer3: "<list>", answer4: "<ol>", correct_answer: "<ul>", subject_id: html.id)
Question.create(prompt: "What is the correct HTML for making a drop-down list?", answer1: '<input type="dropdown">', answer2: '<list>', answer3: '<select>', answer4: '<input type="list>', correct_answer: "<select>", subject_id: html.id)

# CSS
Question.create(prompt: "What does CSS stand for?", answer1: "Cascading Style Sheets", answer2: "Colorful Style Sheets", answer3: "Creative Style Sheets", answer4: "Computer Style Sheets", correct_answer: "Cascading Style Sheets", subject_id: css.id)
Question.create(prompt: "Which is the correct CSS syntax?", answer1: "{body:color=black;}", answer2: "body{color:black;}", answer3: "body {color: black;", answer4: "{body;color:black;}", correct_answer: "body{color:black;}", subject_id: css.id)
Question.create(prompt: "How do you insert a comment in a CSS file?", answer1: "//this is a comment", answer2: "/* this is a comment */", answer3: "// this is a comment//", answer4: "'this is a comment", correct_answer: "/* this is a comment */", subject_id: css.id)
Question.create(prompt: "What is the correct CSS syntax for making all the <p> elements bold?", answer1: "<p style='font-size:bold;'>", answer2: "p{text-size:bold;}", answer3: "<p style='text-size:bold;'>", answer4: "p{font-weight:bold;}", correct_answer: "p{font-weight:bold;}", subject_id: css.id)
Question.create(prompt: "Which snippet of CSS is commonly used to center a website horizontally?", answer1: "site-align: center;", answer2:"margin:center;", answer3: "margin: auto 0;", answer4: "margin: 0 auto;", correct_answer: "margin: 0 auto;", subject_id: css.id)
Question.create(prompt: "How do you make a list not display bullet points?", answer1: "list-style-type: no-bullet", answer2: "list: none", answer3: "bulletpoints:none", answer4: "list-style-type: none", correct_answer: "list-style-type: none", subject_id: css.id)
Question.create(prompt: "What is the correct Syntax for importing a stylesheet in CSS?", answer1: "@import url(css/example.css);", answer2: "@import-stylesheet url(css/example.css);", answer3: "import-css url(css/example.css);", answer4: "@import-style url(css/example.css)", correct_answer: "@import url(css/example.css);", subject_id: css.id)
Question.create(prompt: "How do you make each word in a text start with a capital letter?", answer1: "text-transform: capitalize", answer2: "text-transform: uppercase", answer3: "Cannot be done with CSS", answer4: "text: capitalize", correct_answer: "text-transform: capitalize", subject_id: css.id)
Question.create(prompt: "How do you display hyperlinks without an underline?", answer1: "a{underline: none;}", answer2: "a{text-decoration:no-underline;}", answer3: "a{decoration:no-underline;}", answer4: "a{text-decoration:none;}", correct_answer: "a{text-decoration:none;}", subject_id: css.id)
Question.create(prompt: "What is the default value of the position property?", answer1: "relative", answer2: "static", answer3: "fixed", answer4: "absolute", correct_answer: "static", subject_id: css.id)

## python
Question.create(prompt: "What is the correct file extension for Python files?", answer1: ".py", answer2: ".pty", answer3: ".pyth", answer4: ".pt", correct_answer: ".py", subject_id: python.id)
Question.create(prompt: "What is the correct syntax to output the type of a variable or object in Python?", answer1: "print(typeof(x))", answer2: "print(type(x))", answer3: "print(typeof x)", answer4: "print(typeOf(x))", correct_answer: "print(type(x))", subject_id: python.id)
Question.create(prompt: "What method can be used to return a string in upper case letters?", answer1: "toUpperCase()", answer2: "uppercase()", answer3: "upperCase()", answer4: "upper()", correct_answer: "upper()", subject_id: python.id)
Question.create(prompt: "Which of these collections defines a LIST?", answer1: "('apple', 'banana', 'cherry')", answer2: '["apple", "banana", "cherry"]', answer3: '{"name": "apple", "color": "green"}', answer4: '{"apple", "banana", "cherry"}', correct_answer: '["apple", "banana", "cherry"]', subject_id: python.id)
Question.create(prompt: "Which of these collections defines a TUPLE?", answer1: '{"name": "apple", "color": "green"}', answer2: '["apple", "banana", "cherry"]', answer3: '("apple", "banana", "cherry")', answer4: '{"apple", "banana", "cherry"}', correct_answer: '("apple", "banana", "cherry")', subject_id: python.id)
Question.create(prompt: "Which of these collections defines a SET?", answer1: '{"apple", "banana", "cherry"}', answer2: '("apple", "banana", "cherry")', answer3: '{"name": "apple", "color": "green"}', answer4: '["apple", "banana", "cherry"]', correct_answer: '{"apple", "banana", "cherry"}', subject_id: python.id)
Question.create(prompt: "Which method can be used to remove any whitespace from both the beginning and the end of a string?", answer1: "len()", answer2: "ptrim()", answer3: "trim()", answer4: "strip()", correct_answer: "strip()", subject_id: python.id)
Question.create(prompt: "Which of these collections defnies a DICTIONARY?", answer1: '("apple", "banana", "cherry")', answer2: '["apple", "banana", "cherry"]', answer3: '{"name": "apple", "color": "green"}', answer4: '{"apple", "banana", "cherry"}', correct_answer:'{"name": "apple", "color": "green"}', subject_id: python.id)
Question.create(prompt: "Which statement is used to stop a loop?", answer1: "exit", answer2: "stop", answer3: "break", answer4: "quit", correct_answer: "break", subject_id: python.id)
Question.create(prompt: "Which collection is ordered, changeable, and allows duplicate members?", answer1: "TUPLE", answer2: "SET", answer3: "LIST", answer4: "DICTIONARY", correct_answer: "LIST", subject_id: python.id)

#sql PROBABLY GET RID OF SQL
Question.create(prompt: 'With SQL, how do you select all the records from a table named "Persons" where the value of the column "FirstName" starts with an "a"?', answer1: "SELECT * FROM Persons WHERE FirstName='a'", answer2: "SELECT * FROM Persons WHERE FirstName='%a%'", answer3: "SELECT * FROM Persons WHERE FirstName LIKE 'a%'", answer4: "SELECT * FROM Persons WHERE FirstName LIKE '%a'", correct_answer: "SELECT * FROM Persons WHERE FirstName LIKE 'a%'", subject_id: sql.id)
Question.create(prompt: 'With SQL, how can you return all the records from a table named "Persons" sorted descending by "FirstName"?', answer1: 'SELECT * FROM Persons ORDER BY FirstName DESC', answer2: "SELECT * FROM Persons SORT 'FirstName' DESC", answer3: "SELECT * FROM Persons SORT BY 'FirstName' DESC", answer4: "SELECT * FROM Persons ORDER FirstName DESC", correct_answer: "SELECT * FROM Persons ORDER BY FirstName DESC", subject_id: sql.id)
Question.create(prompt: "What does SQL stand for?", answer1: "Structured Question Language", answer2: "Strong Question Language", answer3: "Structured Query Language", answer4: "Strong Query Language", correct_answer: "Structured Query Language", subject_id: sql.id)
Question.create(prompt: "Which SQL statement is used to extract data from a database?", answer1: "SELECT", answer2: "GET", answer3: "EXTRACT", answer4: "PULL", correct_answer: "SELECT", subject_id: sql.id)
Question.create(prompt:"Which SQL statement is used to insert new data in a database?", answer1: "INSERT NEW", answer2: "ADD RECORD", answer3: "INSERT INTO", answer4: "ADD NEW", correct_answer: "INSERT INTO", subject_id: sql.id)
Question.create(prompt: "Which SQL statement is used to delete data from a database?", answer1: "COLLAPSE", answer2: "REMOVE", answer3: "DELETE", answer4: "CUT", correct_answer: "REMOVE", subject_id: sql.id)
Question.create(prompt:'With SQL, how do you select all the records from a table named "Persons" where the "FirstName" is "Peter" and the "LastName" is "Jackson"?', answer1: "SELECT FirstName='Peter', LastName='Jackson' FROM Persons", answer2: "SELECT * FROM Persons WHERE FirstName<>'Peter' AND LastName<>'Jackson'", answer3: "SELECT * FROM Persons WHERE FirstName='Peter' AND LastName='Jackson'", answer4: "SELECT * FROM Persons WHERE FirstName='Peter' && LastName='Jackson'", correct_answer: "SELECT * FROM Persons WHERE FirstName='Peter' AND LastName='Jackson'", subject_id: sql.id )
Question.create(prompt:"Which SQL statement is used to return only different values?", answer1: "SELECT UNIQUE", answer2: "SELECT DISTINCT", answer3: "SELECT DIFFERENT", answer4: "SELECT ONLY", correct_answer: "SELECT DISTINCT", subject_id: sql.id)
Question.create(prompt: "Which SQL keyword is used to sort the result-set?", answer1: "SORT", answer2: "ORDER", answer3: "ORDER BY", answer4: "SORT BY", correct_answer: "ORDER BY", subject_id: sql.id)
Question.create(prompt: "Which operator is used to search for a specified pattern in a column?", answer1: "FROM", answer2: "GET", answer3: "ORDER BY", answer4: "LIKE", correct_answer: "LIKE", subject_id: sql.id)


#java
Question.create(prompt: 'What is a correct syntax to output "Hello World" in Java?', answer1: 'print ("Hello World");', answer2: 'System.out.println("Hello World");', answer3: 'echo("Hello World");', answer4: 'Console.WriteLine("Hello World");', correct_answer: 'System.out.println("Hello World");', subject_id: java.id)
Question.create(prompt: "How do you create a variable with the numeric value 5?", answer1: "num x = 5", answer2: " x = 5;", answer3: "float x = 5;", answer4: "int x = 5;", correct_answer: "int x = 5;", subject_id: java.id)
Question.create(prompt: "How do you create a variable with the floating number 2.8?", answer1: 'int x = 2.8f;', answer2: 'x = 2.8f;', answer3: 'float x = 2.8f;', answer4: 'byte x = 2.8f', correct_answer: 'float x = 2.8f;', subject_id: java.id)
Question.create(prompt: "Which keyword is used to create a class in Java?", answer1: "className", answer2: "class()", answer3: "MyClass", answer4: "class", correct_answer: "class", subject_id: java.id)
Question.create(prompt: "Which statement is used to stop a loop?", answer1: "stop", answer2: "exit", answer3: "return", answer4: "break", correct_answer: "break", subject_id: java.id)
Question.create(prompt: "Which method can be used to find the highest value of x and y?", answer1: "Math.max(x,y)", answer2: "Math.largest(x,y)", answer3: "Math.sum(x,y)", answer4: "Math.maximum(x,y)", correct_answer: "Math.max(x,y)", subject_id: java.id)
Question.create(prompt: "Which keyword is used to return a value inside a method?", answer1: "print", answer2: "return", answer3: "puts", answer4: "break", correct_answer: "return", subject_id: java.id)
Question.create(prompt: "How do you insert COMMENTS in Java code?", answer1: "#This is a comment", answer2: "/* This is a comment", answer3: "// This is a comment", answer4: "{* This is a comment *}", correct_answer: "// This is a comment", subject_id: java.id)
Question.create(prompt: "How do you create a variable with the numeric value 5?", answer1: "x=5", answer2: "num x=5", answer3: "float x=5", answer4: "int x=5", correct_answer: "int x=5", subject_id: java.id)
Question.create(prompt: "Which method can be used to return a string in upper case letters?", answer1: "toUpperCase()", answer2: "upperCase()", answer3:"toCapitalize()", answer4: "capitalize()", correct_answer: "toUpperCase()", subject_id: java.id)


#c++
Question.create(prompt: 'What is a correct syntax to output "Hello World" in C++?', answer1: 'System.out.println("Hello World");', answer2: 'print ("Hello World");', answer3: 'cout << "Hello World";', answer4: 'Console.WriteLine("Hello World");', correct_answer: 'cout << "Hello World";', subject_id: c.id)
Question.create(prompt: "How do you create a variable with the floating number 2.8?", answer1: "int x = 2.8;", answer2: "x = 2.8;", answer3: "double x = 2.8;", answer4: "byte x = 2.8", correct_answer: "double x = 2.8;", subject_id: c.id)
Question.create(prompt: "Which keyword is used to create a class in C++?", answer1: "MyClass", answer2: "className", answer3: "class", answer4: "class()", correct_answer: "class", subject_id: c.id)
Question.create(prompt: "How do you create a reference variable of an existing variable?", answer1: "With the ref word", answer2: "With the * operator", answer3: "With the REF word", answer4: "With the & operator", correct_answer: "With the & operator", subject_id: c.id)
Question.create(prompt: "Which statement is used to stop a loop?", answer1: "break", answer2: "return", answer3: "stop", answer4: "exit", correct_answer: "break", subject_id: c.id)
Question.create(prompt: "How do you start writing a while loop is C++?", answer1: "while x > y;", answer2: "while x > y {", answer3: "while (x > y)", answer4: "x > y while {", correct_answer: "while (x > y)", subject_id: c.id)
Question.create(prompt: "Which method can be used to find the highest value of x and y?", answer1: "max(x,y)", answer2: "maxNum(x,y)", answer3: "maximum(x,y)", answer4: "largest(x,y)", correct_answer: "max(x,y)", subject_id: c.id)
Question.create(prompt: "How do you insert COMMENTS in C++ code?", answer1: "#This is a comment", answer2: "/* This is a comment", answer3: "// This is a comment", answer4: "{*This is a comment*}", correct_answer: "// This is a comment", subject_id: c.id )
Question.create(prompt: "Which data type is used to create a variable that should store text?", answer1: "String", answer2: "myString", answer3: "string", answer4: "Txt", correct_answer: "string", subject_id: c.id)
Question.create(prompt: "Which header file lets us work with input and output objects?", answer1: "#include <iostream>", answer2: "#include <inputstr>", answer3: "#include <stream>", answer4: "#include <iosstring>", correct_answer: "#include <iostream>", subject_id: c.id)

puts "✅ Done seeding!"
