@ECHO off

:: get the python executable files
:: default values
SET PYTHON27_HOME=%QPROTEO_HOME%/venv_win64/python27
SET PYTHON3x_HOME=%QPROTEO_HOME%/venv_win64/python3x
:: from the interative shell
SET /p PYTHON27_HOME="Write the path where is located the python3x files (complete path). With empty enter, takes the default path: "
SET /p PYTHON3x_HOME="Write the path where is located the python3x files (complete path). With empty enter, takes the default path: "
:: from command line
IF NOT "%1" == "" ( SET PYTHON27_HOME="%1" )
IF NOT "%2" == "" ( SET PYTHON3x_HOME="%2" )
ECHO **
ECHO ** use the following paths for python27 and python3x:
ECHO %PYTHON27_HOME%
ECHO %PYTHON3x_HOME%

:: go to home
CD %QPROTEO_HOME%

:: install the PIP packages
ECHO **
ECHO ** install the 'pip' package for python27
%PYTHON27_HOME%/python  %QPROTEO_HOME%/venv_win64/get-pip.py
ECHO **
ECHO ** install the 'pip' package for python3x
%PYTHON3x_HOME%/python  %QPROTEO_HOME%/venv_win64/get-pip.py

:: install virtualenv packeges
ECHO **
ECHO ** install the 'virtualenv' package for python27
%PYTHON27_HOME%/Scripts/pip install virtualenv
ECHO **
ECHO ** install the 'virtualenv' package for python3x
%PYTHON3x_HOME%/Scripts/pip install virtualenv

SET /P DUMMY=Hit ENTER to continue...