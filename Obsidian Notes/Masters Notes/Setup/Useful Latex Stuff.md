- [Table Code generator](https://www.tablesgenerator.com/)
- Shortcuts for Bold, Underline and Italics etc LaTeX VSCode
	- File->Preferences->Keyboard Shortcuts ->Open Keyboard Shortcuts(JSON)-> Then do the following
```JSON
// Place your key bindings in this file to override the defaults

[
{

"key": "alt+b",

"command": "editor.action.insertSnippet",

"when": "editorLangId == latex && editorTextFocus",

"args": {

"snippet": "\\textbf{${TM_SELECTED_TEXT}$0}"

}

},

{

"key": "alt+i",

"command": "editor.action.insertSnippet",

"when": "editorLangId == latex && editorTextFocus", // chained clause

"args": {

"snippet": "\\textit{${TM_SELECTED_TEXT}$0}"

}

},

{

"key":"alt+u",

"command": "editor.action.insertSnippet",

"when": "editorLangId == latex && editorTextFocus", // chained clause

"args": {

"snippet": "\\underline{${TM_SELECTED_TEXT}$0}"

}

},

{

"key": "alt+c",

"command": "editor.action.insertSnippet",

"when": "editorLangId == latex && editorTextFocus", // chained clause

"args": {

"snippet": "\\chapter{${TM_SELECTED_TEXT}$0}"

}

},

{

"key": "alt+s",

"command": "editor.action.insertSnippet",

"when": "editorLangId == latex && editorTextFocus", // chained clause

"args": {

"snippet": "\\section{${TM_SELECTED_TEXT}$0}"

}

},

{

"key": "s alt+s",

"command": "editor.action.insertSnippet",

"when": "editorLangId == latex && editorTextFocus", // chained clause

"args": {

"snippet": "\\subsection{${TM_SELECTED_TEXT}$0}"

}

},

{

"key": "s s alt+s",

"command": "editor.action.insertSnippet",

"when": "editorLangId == latex && editorTextFocus", // chained clause

"args": {

"snippet": "\\subsubsection{${TM_SELECTED_TEXT}$0}"

}

},

{

"key": "alt+g",

"command": "editor.action.insertSnippet",

"when": "editorLangId == latex && editorTextFocus",

"args": {

"snippet": "\\begin{figure}[h]\n \\centering\n \\includegraphics{${1:path/to/image}}\n \\caption{${2:Caption}}\n \\label{${3:fig:label}}\n\\end{figure}\n$0"

}

},

{

"key": "alt+t",

"command": "editor.action.insertSnippet",

"when": "editorLangId == latex && editorTextFocus",

"args": {

"snippet": "\\begin{table}[!htb]\n \\centering\n \\caption{${1:Caption}}\n \\label{${2:tab:label}}\n \\begin{tabular}{|c|c|}\n \\hline\n ${3:Header 1} & ${4:Header 2} \\\\\\ \n \\hline\n ${5:Row 1, Col 1} & ${6:Row 1, Col 2} \\\\\\ \n \\hline\n ${7:Row 2, Col 1} & ${8:Row 2, Col 2} \\\\\\ \n \\hline\n \\end{tabular}\n\\end{table}\n$0"

}

}
]
```
