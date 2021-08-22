# Trafficsign_Detection_Recognition_MATLAB_RandomForest
Detect traffic sign and recognize them using Image Processing algorithms and Machine Learning(Random Forest)

To tun the code:
1. Run extract_hog_features file
2. make necessary changes such as path directory, cell size and image size
3. The hog features will be saved inorder to avoid running the same code again (you cab choose not to save if available in work shop, in that case comment "clear all" in "Training_and_Model_Accuracy")
4. Run Training_and_Model_Accuracy file to train the model
5. Change the number of trees as per needed (usually trail and error basis, while doing this run comment out save command of classifier)
6. It takes sometime to save the classifier and extracted Hog features
7. 
