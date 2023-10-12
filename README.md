# Image-Analysis-and-computer-vision
Repo containing notes and work for the course Image analysis and computer vision

## Horizon and Affine Rectification

### Overview

This MATLAB script performs horizon and affine rectification on an image of a plane. It identifies pairs of parallel lines, computes their vanishing points, derives the vanishing line (horizon), and uses it to perform an affine rectification of the plane.

### Compute Lines and Vanishing Points

1. The lines passing through the selected points are computed.
2. Pairs of parallel lines are used to compute vanishing points.
3. The horizon is computed as the line passing through the vanishing points.

### Affine Rectification

1. Another pair of parallel lines is selected by the user.
2. A new vanishing point is computed and validated against the horizon.
3. Using the horizon, the image is then rectified to remove the perspective distortion, presenting an affine view of the plane.



## Homework on Affine Measurements in Computer Vision

### Overview
This MATLAB code is an example of estimating affine measurements from an image. It demonstrates the method of determining vanishing points and lines to estimate the height of an object standing on the ground. The estimation is based on the following provided elements:

- The height of a reference object standing on the ground
- A vertical vanishing point
- The vanishing line of the ground

## Key Concepts

### Drawing Vertical and Parallel Segments
The code begins by loading an image and prompting the user to draw vertical segments corresponding to real-world vertical lines. It then calculates the pairwise vanishing points from these segments. The process is repeated for parallel lines on the ground, and the horizon is computed.

### Estimating Vanishing Points
Multiple vanishing points are estimated from the drawn vertical and parallel segments. A unique vertical vanishing point is estimated to represent all vertical lines, minimizing the algebraic error.

### Object Height Estimation
The user selects a reference object and another object whose height is to be estimated by drawing lines representing their bases and tops. The code computes the relative distance and utilizes a 1D projective transformation to estimate the unknown object's height.
