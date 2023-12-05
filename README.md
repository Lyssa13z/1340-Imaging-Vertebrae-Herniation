# 1340-Imaging-Vertebrae-Herniation

[1] What the project does:

  This project was for a Pitt bio-imaging class BIOENG 1340. This project uses matlab, ITK-Snap, and Teachable Machine (machine learning software), to determin the severity of vertebrea      discs herniations in MRI scans of patients.  

  The data we used is MRI scans from: https://data.mendeley.com/datasets/k57fr854j2/2 
  
  The original research paper that uses this data set: https://doi.org/10.3390/diagnostics13040663 
  
  The labels from the radiologist that clasify the patients severity: https://data.mendeley.com/datasets/zbf6b4pttk/2

    The steps we took for this project:
      1) We selected T2 Sagital slice 9 MRI Scans of each patient
      2) For each MRI Scan we assessed the labeling from the radiologist to classify within 1 of 3 classes:
           a) Class I - No Herniation
           b) Class II - Mild Herniation
           c) Class III - Severe Herniation
      3) We then converted these images from .ima files to .jpg files, using python, so that they would be compatable with the machine learning software

    For the Machine Learning:
      4) We then used matlab (*file name*) to crop the MRI scans to where the herniation of each image is and to classify each image into a seperate folder 
      5) We then imported these cropped images of the differing levels of herniation into the Teachable Machine (machine learning software) to train the software
         a) we had 70 total scans to train our machine, 30 disks with no herniation, 20 disks with mild herniation, 20 disks with severe herniation
      6) From there we selected seperate full MRI Scan photos to use as our sample data:
          a) We selected 12 no hernation full spine scans, 10 mild herniation full spine scans, and 7 severe herniation full spine scans
          b) we were not able to use more data, as some of the labeling for the data was unclear to the level of severity and we did not want into "interperate the labeling"
           which would scew our data.
      7) We then preformed a paired T-test to analyze our classification from our machine learning vs classification from the radiologist
          a) we used a software called Prism to preform this paired T test
          b) But I have also created a malab file (*file name*) that preforms a 1 way anova in cases where more than one software is compared to the radiologist classifications
  
    For Intensity and Geometric Metrics Model:
      4)We opened the .ima images into ITK-Snap software, and collected data on the height of discs, as well as the signal intesity of discs to create man made models 
      5)We planned to use these models to classify the testing data
      6) then we would use these sample sets and an ANOVA test to compare:
          a) Machine Learning Classification to Experts Classification​
          b) Intensity Metrics Model Classification to Experts Classification​
          c) Geometric Measurements Model Classification to Experts Classification
     

[2] Why the project is useful:

  This project aims to automate the classification of vertebral disk herniations in MRI scans using machine learning, enhancing diagnostic processes in healthcare. By training a model with   labeled MRI images, it enables quicker and potentially more consistent identification of herniation severity levels, aiding radiologists in assessments. Validating the model's accuracy     through statistical analyses ensures its reliability, showcasing the potential for technology to streamline medical imaging analysis and improve patient care.


[3] How users can get started with the project:

  To convert Images from .ima to .jpeg: (*file name*)
  To crop, classify, and add data to a set folder for machine training use: (*file name*) 
  


[4] Who contributes to the project:

Hannah P,  Rutuja K, Brianna M,, Natasha M, Alyssa Z



