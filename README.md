# UPC_ETSEIB_LaTeXReportTemplate

The presented files provide a general template for creating Lab reports in LaTeX. It is aimed at students from ETSEIB's School.
It is easy to customize and can be modified to suit one's particular needs.

## Recomendations
- It is recommended to have installed a package manager so the required packages can be downloaded automatically. (For this purpose I use MikTex package manager: https://miktex.org/)

## Files
- Informe_style.cs: Class that contains the report layout.
- Informe.tex: General template used as the skeleton of the report.

## Folders
- images: Folder where the images used in the report should be included. This will be the source were  Here it only includes the School logo asit appears on top of every page.

## How to use it:
1. Download the files Informe_style.cs and Informe.tex and also the folder images, which contains the school's logo.
2. Place the files and the folder in the same directory.
3. Inside Informe_style.cs modify the parametres that are surronded by ##, such as ## Date ## by the actual information of the specific report (As a LaTeX editor I pesonally use Texmaker: http://www.xm1math.net/texmaker/).
4. Do the same as in step 3 but this time in the file Informe.tex
5. In the same directory where the files are located create a .tex file for every chapter/problem/exercise that should be included in the report and include them in the Informe.tex file via the \include{name_of_file} command. This files should start with the command:

 ``` latex
  \chapter{## Exercise/Problem name ##}
 
  \label{ch:## Chapter Label ##}
 ```
 So that it is indicated that they are the starting point of a new exercise/problem.

6. Write the paticular report for each of the execises/problems and compile the main file Informe.tex to obtain the resulting report in pdf. 
