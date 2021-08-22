# Trafficsign_Detection_Recognition_MATLAB_RandomForest
Detect traffic sign and recognize them using Image Processing algorithms and Machine Learning(Random Forest)

Datasets used:
GTSDB- Testing folder is used for detection, for entire datatset to work add required color masks
GTSRB- Only used 16000 files of 39000 files, keeping time constraint in mind

However, you can use entire datasets of both GTSDB and GTSRB for more practical usecase

Note: !!!! This project does not detect each and every signboard, however works fine with GTSDB "test dataset" !!!!

This project composes of two major phases:
1. Detection (using Image Processing, no machine learning involved)
2. Recognition (using machine learning)

To tun the code:
1. Run extract_hog_features file
2. make necessary changes such as path directory, cell size and image size
3. The hog features will be saved inorder to avoid running the same code again (you cab choose not to save if available in work shop, in that case comment "clear all" in "Training_and_Model_Accuracy")
4. Run Training_and_Model_Accuracy file to train the model
5. Change the number of trees as per needed (usually trail and error basis, while doing this run comment out save command of classifier i.e. line 26)
6. It takes sometime to save the classifier and extracted Hog features
7. Now move all the files in masks folder to the current working folder
8. Run main_function file to complete the process
9. Read the code files inorder to change them according to your necessity
10. Have Fun!
