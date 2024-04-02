@echo off
cd "C:\Users\chris\OneDrive\Desktop\Masters"

echo "Do you want to push(a) or pull(b)?"
set /p choice=

IF /I "%choice%"=="a" (
    git add .
    git status

    :prompt1
    echo "Do you want to add and check status again? (y/n)"
    set /p add_status=
    IF /I "%add_status%"=="y" (
        git add .
        git status
        GOTO prompt1
    )

    git commit -m "laptop %DATE% %TIME%"
    git push origin master
)

IF /I "%choice%"=="b" (
    git pull
    echo "Do you want to push? (y/n)"
    set /p choice2=

    IF /I "%choice2%"=="y" (
        git add .
        git status

        :prompt2
        echo "Do you want to add and check status again? (y/n)"
        set /p add_status=
        IF /I "%add_status%"=="y" (
            git add .
            git status
            GOTO prompt2
        )

        git commit -m "laptop %DATE% %TIME%"
        git push origin master
    )
)

echo "Are you complete?"
set /p complete=
IF /I "%complete%"=="n" (
    echo "Please complete your tasks."
) ELSE (
    echo "Thank you. Have a nice day."
)
