<div id="top"></div>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
<!-- [![MIT License][license-shield]][license-url] -->



<!-- PROJECT LOGO -->
<br />
<div align="center">
<!--   <a href="https://github.com/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a> -->

<h3 align="center">Traffic Sign Detection and Recognition using Random Forest Classifier</h3>

  <p align="center">
    Detect and recognize traffic signs using image processing algorithms and machine learning(Random Forest algorithm) --- Accuracy 94%
    <br />
    <a href="https://github.com/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest"><strong>Explore the docs »</strong></a>
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](/result%20images/2.png)

Detect and recognize traffic signs using Image Processing algorithms and Machine Learning(Random Forest) with an **accuracy** of ***94%.***

Datasets used:
* [GTSDB](https://www.kaggle.com/datasets/safabouguezzi/german-traffic-sign-detection-benchmark-gtsdb)
* [GTSRB](https://www.kaggle.com/datasets/meowmeowmeowmeowmeow/gtsrb-german-traffic-sign)

> Due to time constraint and computational limitations, the dataset has been intentionally reduced to 16000 files. To use entire dataset, try adding more masks!

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [MATLAB](https://www.mathworks.com/products/matlab.html)
* [Image Processing]()
* [Machine Learning]()


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

This entire project can be fragmented in two parts:
* Detection
* Recognition

### Prerequisites

Things required to make the project success?
* Knowledge of Image Processing
* Getting around Matlab
* Machine Learning
* Never give up attitude!


## Usage

### After Image detection has been done!

* Open [Hog Feature Extraction](/hog_feature_extraction.m) file and make the required changes upon your requirement and run it.
* **HOG Features** will be saved to avoid extraction for every execution.
* Open [Training and Model Accuracy](/Training_and_Model_Accuracy.m) file to train the model with extracted features.
    > Again change the number of decision trees for your desired accuracy!
    > Also check the ROC-AUC and Precision-Recall curves.
* The model will be saved locally.
    > Saving time varies from computer to computer
* Move all masks to the current directory so that, **Main_function_file** will be in the same level as masks.
* Run the [Main Funtion](/main_function.m) file and you are good to go!!....



<p align="right">(<a href="#top">back to top</a>)</p>




<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>





<!-- CONTACT -->
## Contact

Your Name - Praveenterax - praveendunga789@gmail.com

Project Link: [https://github.com/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest](https://github.com/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest)

<p align="right">(<a href="#top">back to top</a>)</p>




<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest.svg?style=for-the-badge
[contributors-url]: https://github.com/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest.svg?style=for-the-badge
[forks-url]: https://github.com/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest/network/members
[stars-shield]: https://img.shields.io/github/stars/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest.svg?style=for-the-badge
[stars-url]: https://github.com/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest/stargazers
[issues-shield]: https://img.shields.io/github/issues/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest.svg?style=for-the-badge
[issues-url]: https://github.com/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest/issues
[license-shield]: https://img.shields.io/github/license/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest.svg?style=for-the-badge
[license-url]: https://github.com/Praveenterax/Traffic-sign-Detection-Recognition-Matlab-RandomForest/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/praveendunga
[product-screenshot]: /result%20images/2.png
