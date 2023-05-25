import java.util.*;
import java.io.*;

float [] VZPrices = {55.52,53.43,55.24,54.79,56.76,54.5,50.73,47.58,50.56,52.81,53.88,54.45,56.93,59.46,58.78,55.74,56.7,53.72,49.66,50.34,47.63,49.21,49.27,52.81,52.65,51.69,51.24,50.11,44.99,44.37,44.09,43.52,38.46,39.47,40.48,39.92,40.82,39.75,44.93,47.02,45.38,44.03,47.92,52.14,51.35,51.8,48.14,51.29,53.49,52.08,50.56,45.89,50,51.46,51.18,48.99,49.55,49.01,48.9,47.34,46.35,44.95,44.59,44.14,45.49,45.13,46.98,48.51,50.99,51.34,51.33,49.8,49.41,49.77,50.26,49.14,47.96,49.29,49.55,50.45,51.71,50.77,50.95,48.69,49.26,48.3,47.25,46.03,45.94,49.01,49.29,50.44,49.47,47.88,46.71,46.4,46.78,46.11,45.65,44.29,43.92,43.69,43.98,44.06,45.69,46.03,45.81,44.91,43.65,42.3,41.56,42.32,43.77,43.87,43.6,43.47,41.87,41.45,40.48,39.5,37.66,37.88,37.43,39.77,40.03,40.3,39.22,38.35,38.26,36.22,36.22,35.4,32.41,27.92,30.18,28.29,29.26,30.62,29.28,27.35,29.46,28.56,26.93,30.31,32.07,32.43,34.5,35.13,36.7,35.5,36.84,37.84,38.92,35.82,36.31,36.36,36.52,39.92,37.25,34.69,34.77,35.56,34.14,34.21,32.22,32,32.03,34.02,33.33,33.99,32.93,31.44,33.03,34.68,34.4,34.19,33.29,34.22,36.15,36.24,37.25,37.09,36.26,36.26,34.99,32.59,32.83,32.83,32.79,32.98,32.13,33.33,32.83,32.57,31.53,30.86,30.45,29.28,29.95,30.4,30.49,29.48,30,29.86,30.4,30.22,31.27,31.1,31.95,33.44,33.55,33.92,34.12,34.05,34.48,35.31,34.64,35.62,35.56,34.04,33.44,33.87,34.19,34.18,34.41,34.3,34.41,33.38,33.1,32.4,31.94,33.17,32.82,32.43,32.97,32.6,32.38,32.66,35.16,35.86,35.74,35.82,35.8,36.48,36.71,36.95,36.69,36.14,37.52,37.75,36.78,35.77,37.37,38.08,38.06,37.25,38.03,37.91,37.29,37.33,37.07,36.99,35.57,33.95,33.69,33.22,33.31,33.43,32.73,33.13,33.2,32.7,31.8,32.25,32.42,31.9,31.1,32.34,32.66,31.23,31.94,32.11,32.03,31.89,31.74,31.77,31.49,31.46,31.5,31.28,31.27,30.86,30.37,29.97,30.09,29.61,29.68,29.59,29.5,29.5,29.53,27.65,26.95,28.67,28.83,28.39,29.01,29,29.24,29.03,28.02,27.75,27.63,28.75,29.13,28.89,28.96,29.07,29.89,31.35,31.52,31.18,30.85,31.38,31.53,31.68,31.28,30.53,30.07,30.1,29.95,29.95,28.64,28.44,29.04,28.96,29.4,29.94,30.29,30.4,29.86,29.22,30.59,30.66,30.98,31.09,31.41,32.21,32.13,32.51,33.67,34.23,34.08,33.49,34.1,35.05,35.09,33.43,32.86,33.06,32.98,33.05,34.13,34.5,35.19,35.99,35.05,35.21,35.74,36.25,35.89,36.24,36.11,36.23,34.42,34.44,36.02,35.61,35.76,35.71,35.87,35.71,38.69,38.66,40.08,40.23,41.13,40.58,40.77,40.36,39.4,39.64,39.52,41.37,40.98,41.23,40.85,39.27,39.9,40.14,40.1,40.09,41.75,41.84,42.67,43.23,42.77,42.81,43.47,41.51,41.26,40.9,40.55,42.43,42.73,41.86,42.31,41.6,41.44,40.42,36.68,36.92,36.44,36.38,35.71,35.35,34.21,33.16,33.94,34.85,35.85,35.3,34.4,34.63,37.34,36.92,36.84,36.68,36.34,36.95,36.16,34.4,33.74,33.75,33.97,33.28,33.81,32.65,32.48,33.32,33.15,33.55,33.98,33.67,32.49,31.13,30.06,29.19,28.52,27.29,29.74,30.91,29.71,28.28,30.85,31.33,32.63,32.36,31.71,32.5,31.51,30.33,28.95,29.29,30.1,29.9,27.35,27.21,27.08,26.61,28.98,29.12,30.9,30.92,30.25,29.82,29.22,29.3,28.81,28.21,27.8,27.91,28.12,28.45,29.33,29.39,28.56,27.7,29.58,30.56,30.41,29.39,29.42,29.72,29.04,29.4,29.15,28.38,28.44,28.24,27.36,27.57,28.47,27.95,28.49,28.69,30.02,30.91,31.63,31.91,31.29,31.42,31.27,29.96,29.3,29.04,27.94,27.3,27.49,27.23,27.51,28.09,28.55,28.96,29.45,29.65,28.24,27.89,27.41,27.52,27.11,27.12,26.01,25.98,26.7,27.41,27.55,27.26,27.2,27.07,28.18,29.24,29.8,30.38,30.38,29.93,30.35,30.94,31.75,32.68,33.09,33.68,33.2,32.93,32.75,33.62,33.34,33,32.67,32.9,34.04,34.83,35.52,36,37.7,36.58,35.51,36.59,36.48,36.77,36.81,36.32,36.94,36.65,35.84,37.32,38.95,38.7,38.01,38,38.42,38.33,37.68,37.41,37.04,36.99,36.14,35.92,36.17,37.87,37.86,37.37,37.82,36.52,36.39,34.94,35.66,36.5,36.72,35.72,36.75,36.92,37.39,37.15,37.36,37.46,37.84,37.55,37.73,37.4,36.32,38.07,38.58,38.78,39.98,40.25,40.48,39.02,39.44,39,38.27,38.3,38.55,38.77,38.81,39.45,39.84,39.9,39.54,38.61,37.61,38.91,40.44,40.84,41.43,41.96,41.77,41.91,42.44,44.14,44.13,44.77,45.07,45.29,46.41,45.06,46.41,44.88,44.5,44.06,43.34,44.33,45.64,45.92,46.06,48.77,47.07,46.42,45.1,45.45,44.63,43.24,43.77,44.31,44.5,44.94,44.3,43.79,44.51,44.87,43.09,43.42,44.84,44.88,44.78,45.44,46.93,47.98,48.66,49.17,49.59,49.86,50.86,52.35,53.71,54.31,53.15,53.67,53.4,51.98,50.31,51.27,51.69,51.5,51.3,51.58,51.27,51.08,51.94,50.35,49.76,48.18,48.66,47.58,48.36,48.89,48,47.18,47.65,50.06,51.38,51.49,51.09,50.47,51.25,50.36,49.79,49.63,49.41,49.35,49.33,49.4,48.69,48.9,48.5,48.02,47.46,48.34,47.78,48.39,47.06,47.41,47.93,48.35,48.46,47.7,48.37,47.41,48.68,49.3,49.74,50.01,50.33,49.64,49.77,49.79,49.94,50.43,51.02,51.48,53.66,50.3,49.05,49.15,49.82,50.03,49.88,50.38,50.32,50.24,50.26,49.46,49.11,50.5,50.98,51.73,51.48,50.8,50.84,49.34,47.35,47.95,47.79,47.38,48.03,48.48,47.1,49.76,49.99,49.32,49.66,49.69,48.93,49.9,49.9,49.6,49.82,49.57,50.26,50.77,50.86,50.28,50.1,49.75,49.54,47.88,47.92,48.49,47.72,47.45,47.95,48.26,47.17,47.2,48.21,47.7,46.29,46.15,46.27,46.55,44.89,44.18,44.53,44.97,46.33,46.98,47.08,45.54,45.99,45.5,45.89,46.13,46.69,47.15,47.23,46.55,45.27,47.12,49.99,51.2,50.8,51.1,51.34,52.22,52.96,53.85,53.62,54.37,54.49,52.4,52.22,51.81,51.45,51.7,51.35,50.86,51.16,52.83,53.78,55.22,56.29,56.95,56.1,56.2,56.25,55.82,53.99,53.85,53.01,53.14,53.88,52.84,52.82,52.66,52.14,50.61,50.63,48.93,48.38,48.08,48.2,50.8,51.2,51.63,52.66,53.75,53.9,54.83,53.27,53.2,52.7,49.84,49.12,49.3,50.95,50.55,50.15,50.43,50.63,49.76,49.55,48.94,49.55,47.53,46.73,46.74,45.94,45.58,47.19,46.81,47.5,46.63,45.98,45.08,43.82,44.58,48.38,49.63,48.96,48.8,48.98,48.76,47.92,47.9,50.08,50.32,50.08,49.49,51.18,49.69,49.12,46.35,45.77,47.42,51.55,52.33,53.34,53.63,53.69,53.57,52.75,53.3,54.77,54.75,53.19,50.66,49.89,49.17,49.23,49.26,48.61,48.73,48.35,48.97,49.06,51.69,51.65,49.07,48.9,49.31,48.72,49.26,49.8,49.93,51.05,51.66,51.75,51.94,52.38,53,53.27,55.21,55.08,55.06,54.47,55.42,55.02,54.49,55.44,55.9,55.5,58.44,58.8,59.2,60.39,61.58,60.73,59.75,59.4,57.31,55.86,56.99,58.69,58.29,57.87,56.22,54.69,55.19,57.13,57.61,57.35,58.51,60,61.19,59.41,59.13,58.98,58.49,58.23,57.09,58.48,60.54,59.87,58.14,58.56,58.33,58.67,58.51,58.3,57.8,57.23,57.6,56.06,56.69,57.5,58.41,59.1,60.55,60.4,61,60.9,60.59,61.3,61.32,61.34,60.61,59.94,60.03,60.53,61.28,61.63,62.22,62.15,61.69,60.59,60.15,60.82,61,60.15,60.35,58.76,58.69,58.25,57.58,55.93,53.9,55.5,58.1,58.68,58.91,58.6,57.03,56.91,56.2,57.79,58.12,58.23,57.47,56.26,55.41,55.44,56.6,57.57,57.7,58.55,59.61,59.47,59.79,61.5,60.8,61.1,60.37,59.8,59.97,59.72,58.29,57.85,58.97,61.41,61.46,60.8,61.95,61.82,61.06,60.13,59.24,59.54,58.05,57.69,58.62,55.68,55.48,57.61,57.53,56.2,57.3,56.52,58.25,58.98,59.46,58.48,58.84,57.86,59.37,59.85,59.07,57.3,57.37,57.61,57.45,56.78,56.57,56.58,56.79,56.85,56.34,56.26,55.98,56.2,55.71,55.5,55.5,54.98,54.64,54.69,54.85,53.29,53.93,53.2,53.37,52.76,52.62,52.2,51.85,51.93,53.22,53.34,53.09,54.64,54.83,53.94,53.85,54.57,53.66,53.96,54.54,55.39,55.34,53.67,51.81,52.19,53.68,54.7,55.51,51.44,48.44,49.44,49.6,51.61,51.63,51.96,50.79,52.18,51.77,51.89,51.36,51.17,46.5,46.5,45.26,46.05,44.47,43.57,42.32,42.85,41.25,39.7,39.85,37.32,37.7,38.04,38.35,38.69,38.99,39.36,39.23,38.11,38.62,38.54,39.69,42.58,42.18,41.92,44.73,42,41.59,40.58,39.98,39.15,38.63,37.33,37.95,39.05,40.24,39.7,39.51,39};
float [] XOMPrices = {43.13,43,42.94,43.16,42.44,40.94,40.28,38.41,38.84,41,39.97,38.88,40.97,41.56,40.88,39.66,40.75,40,41.69,41.91,41.97,41.94,41.25,42.19,42.38,42.09,39.84,40.38,39.72,40.47,41.78,41.22,42,42.38,41.91,42.09,44.94,45.38,44.97,45.81,47.72,45.25,45.13,46.03,45.63,45.84,47.34,47.16,45.69,44.34,44.25,44.66,44.88,42.09,41.22,41.41,42.25,43.33,43.13,42.6,42.05,43.25,43,41.42,40.55,41.05,42.25,42.71,44.91,44.92,44.87,45.1,45.33,45,45.84,45.36,44.61,44.55,44.4,43.53,43.6,43.72,42.85,41.95,41.85,41.7,41.76,41.5,41.35,41.45,39.6,41.29,42.7,42.35,41.52,40.99,40.4,40.58,38.7,38.25,38.95,38.09,39.47,40.3,40.07,40.09,39.55,39.64,39.87,39.2,39.4,40.96,42,43.52,44.09,43.99,44.29,44.58,43.69,42.75,42.5,41.13,40.17,40.78,41.1,40.44,40.17,39.95,40.2,41.02,41.1,40.64,36.39,35.2,36.88,36.3,37.37,37.28,37.8,34.91,35.8,34.47,34.3,34.52,34.74,36.5,36.3,35.24,35.85,34.99,35.48,35.03,35.4,35.54,36.06,36.22,35.63,36.6,35.45,34.55,34.44,35.1,33.86,34.28,34.43,34.92,34.94,36.01,36.2,35.99,36,35.17,35.57,36.09,36.21,35.66,36.31,36.77,37.71,38.45,38.31,37.22,36.61,36.4,35.89,35.93,36.18,36.61,36.95,37.25,37.74,38.25,38.5,37.77,37.49,38.23,38.43,38.93,38.79,38.15,36.99,36.47,36.3,36.43,37.13,38.12,39.66,40.14,41.22,41.63,40.98,41.5,41.77,41.26,42.15,42.45,42.75,42.64,43.4,42.63,41.48,41.99,42.93,43.9,43.86,43.97,44.24,43.56,43.54,43.82,43.99,44.24,44.98,45.53,44.89,45.55,45.95,46.82,46.34,46.94,46.04,45.65,45.58,47.24,47.64,48.56,49.62,49.79,50.46,50.04,49.3,49.39,50.43,50.5,50.4,52,51.78,50.47,50.8,52.05,51.95,51.02,51.21,51.55,51.95,55.32,56.87,59.85,63.69,64.04,64.37,62.85,62.98,60.7,61.74,60.75,59.95,60.47,58.65,58.05,54.97,56.9,57.78,58.61,61.02,61.13,59.8,60.73,60.24,59.7,60.47,60.09,61.34,61.08,59.75,62.04,63.2,63.89,65.96,65.01,63.89,59.79,59.45,57.89,58.82,58.33,58.39,60.26,59.85,60.38,59.93,58.59,57,59.56,61,62.06,61.65,63.96,62.61,60.68,61.3,61.5,61.09,61.92,61.69,61.89,62.7,62.73,65,64.98,64.77,64.26,62.71,61.93,61.85,62.2,59.55,58.87,62.65,63.89,65,64.94,67.65,69.28,70.42,69.92,71.22,70.2,68.65,66.4,66.58,67.81,67.76,68.73,70.07,72.33,72.39,74.8,74.97,73.53,77.5,78.52,79,77.31,77.44,76.27,74.25,73.63,74.99,75.79,75.97,76,75.55,76.1,72.86,71.56,75.42,76.35,77.31,77.85,79.8,80.86,81.76,81.45,83.33,84.32,84.25,84.6,86.45,86.58,84.99,86.95,90.8,93.09,93.62,87.32,87.9,85.24,85.85,86.99,88.24,89.68,93.4,93.66,93.99,95.07,95.27,92.91,94.27,90.5,88.64,88.72,89.47,92,93.09,93.95,95.1,94.96,93.15,91.25,86.99,87.86,86.29,86.7,88.6,90.17,88.41,87.86,88.5,87.5,89.5,90.15,94.45,94.93,94.51,90.55,92.95,96.12,90.58,90.5,89.4,88.99,88.52,89.63,88.88,86.47,83.23,84.76,80.13,78.95,80.95,81.5,78.89,77.7,82,81.8,81.75,79.88,75.66,75,77.99,77.96,77.75,77.13,81.03,79.44,81.92,83.64,77.4,82.11,82.73,78.45,79.38,80.17,80.49,80.5,72.96,73.49,67.43,67.96,70.43,71.49,71.15,70.43,69.06,67,68.74,71.23,71.2,71.39,70.62,73.5,74.83,73.43,70.17,71.51,68.15,68.8,72.38,72.79,71.4,69.71,70,71.89,69.85,71.08,70.48,70.34,69.85,69.3,73.35,74.65,75,72.85,73.43,75.4,76.54,76.3,74.72,71.3,69.21,69.4,70.6,70.52,69.35,66.76,67.23,65.71,66.45,66.12,66.52,67.58,67.89,67.2,67.8,68.98,69.05,69.43,70,68.22,65.75,64.27,61.67,62.01,62,63.37,64.5,59.39,59.2,59.72,59.81,61.88,62.99,62.67,61.16,60.05,61.6,61.59,61.52,62.13,62.58,64.53,65.65,66.8,66.81,70,71.9,71.22,70.3,71.66,72.22,72.75,73.2,73.69,75.9,78,79.1,79.98,83.98,84,85.11,88.23,86.56,86.08,82.64,83.93,84.94,86.22,86.15,86.43,88,88.13,83.76,82.58,83.13,83.75,81.87,80.82,81.12,82.09,82.6,83.46,85.41,85.13,81.18,73.44,74.75,73.92,74.87,74.34,74.75,74.98,74.59,74.52,78.23,80.16,82.2,80.64,79.95,79.85,77.33,80.74,81.86,81.81,85.23,85.63,86.67,86.21,87.49,87.94,85.5,86.44,86.12,87.47,87.83,87.09,86.93,87.18,87.25,87.67,84.36,86.05,87.18,87.52,84.79,83.15,82.96,82.64,81.23,83.45,85.39,85.7,86.28,85.57,86.38,87.85,87.89,88.5,88.91,88.41,88.4,90,92.4,92.5,92.57,93,93.36,93.67,92.26,91.94,92.05,87.99,89.09,88.69,88.64,90.37,89.74,87.68,89.09,89.71,90.94,91.8,91.93,90.19,88.81,89.82,90.19,90.15,89.91,89.39,90.98,90.99,89.34,88.67,89.89,90.19,91.85,91.88,93.5,93.18,91.51,91.94,92.27,90.75,91.61,93.81,95.25,95.49,94.6,91.97,90.43,87.87,88.99,88.3,88.88,89.87,88.91,86.7,86.95,87.86,88.73,90.96,93.28,95.29,96,95.75,95.71,96.25,99.95,101.74,101.55,101.22,100.34,98.95,96.2,92.31,94.43,95.77,97.25,96.86,95.59,95.99,97.97,98.85,97.88,100.97,100.95,102.91,103.45,102.71,102.22,102.07,101.63,102.95,104.06,104.61,103.27,103.69,103.89,104.72,104.76,100.43,99.43,100.07,100.31,99.59,98.92,98.05,97.16,94.81,95.33,92.53,94.98,96.89,97.16,97.1,97.2,96.8,95.33,93.13,93.64,95.18,93.86,92.78,91.43,92.97,91.94,92.54,93.45,93.07,89.78,88.52,86.38,86.37,85.78,86,86.17,88.53,88.38,88.95,90.09,88.57,87.46,86.37,85.84,85.97,85.96,85.6,84.9,83.23,83.48,82.47,83.32,78.93,79.29,79.18,75.98,75.55,74.68,75.47,73.61,75.9,80.17,82.5,83,83.88,87.44,83.6,80.99,82.35,82.65,77.5,79.61,80.27,80.08,78.14,79.92,78.24,77.85,80.1,81.78,83.06,83.44,82.97,84.46,84.68,84.86,85.1,83.9,85.9,87.84,89.78,89.48,90,90.4,90.46,90.2,91.3,91.59,92.07,93.98,94.49,95.55,95.15,93.62,88.15,88.89,88.94,88.16,88.25,89.37,87.71,84.62,87.81,87.5,88.67,87.85,87.66,84.4,87.99,87.06,87.24,88.5,89,93.22,91.54,91.11,91.34,88.22,87.41,85.88,85.45,83.65,83.42,82.22,84.25,83.29,82.26,82.35,83.87,83.55,83.47,81.97,82.49,83.07,83,83.23,82.89,81.34,82.14,83.69,83.45,81.84,82.49,81.52,81.49,81.05,80.82,80.35,78.79,77.33,76.94,79.33,80.23,80.66,82.45,82.24,83.08,83.39,84.24,83.95,84.14,83.09,81.7,84.13,84.18,83.38,84.27,84.36,87.22,87.99,88.21,89,89.3,83.99,77.62,77.62,79.87,76.98,75.82,75.64,74.89,76.32,78.19,79.82,80.9,78.56,81.97,82.32,82.65,82.35,83.66,83.79,81.94,83.54,83.45,84.12,82.79,84.4,82.15,81.59,79.75,80.05,81.04,81.93,83.78,85.43,87.36,86.89,86.88,82.47,82.18,82.45,83.75,81.73,79.36,79.6,81.95,78.2,75.6,69.58,71.27,72.6,73.29,72.71,76.49,75.77,77.76,78.95,80,80.55,80.91,82,81.48,82.53,83.2,81.83,83.49,80.53,77.66,76.95,76.46,74.25,74.96,75.81,77.76,77.76,77.93,77.88,77.74,76.05,75.66,72.41,70.62,69.98,69.08,70.95,72.85,75.18,72.36,71.45,69.49,70,70.05,69.67,73.12,70.61,70.18,69.44,69.87,70.54,70.38,70.5,71.37,71.36,69.87,68.42,65.73,63.01,61.53,60.62,57.8,54.15,46.26,37.88,39.56,42.18,46.71,44.69,44.89,47.68,47.15,46.2,46.63,47.14,53.45,55.36,49.75,47.22,45.38,45.08,45.09,45.19,44.25,44.31,46.42,43.19,42.51,40.72,38.84,38.15,36.84,35.9,35.95,34.87,35.08,33.77,34.49,38.01,39.13,42.08,41.76,44.47,44.46,42.39,42.55,45.82,51.08,49.74,47.86,50.12,52.36,53.27,57.25,61.05,62.55,61.86,57.78,57.82,57.54,58.01,57.14,59.48,62.47,64.02,62.3,59.8,61.7,63.98,64.8,64.93,64.56,62.76,61.73,58.3,59.33,59.06,58.5,56.3,56.21,56.34,55.27,56.75,57.82,60.99,62.7,63.07,63.87,65.94,66.08,66.38,65.37,63.85,63.14,63.35,62.72,61.84,62.31,69.18,72.15,74.37,76.01,82.53,83.08,79.84,79.79,84.28,91.51,83.45,85.49,84.4,87.21,88.46,89.8,88.14,92.05,89.56,93.59,97.93,99.78,105.57,98.67,92.53,93.24,87.3,86.31,89.65,97.52,95.35,94.3,95.31,99.91,101.56,97,99.19,93.88,89.36,103.32,102.45,106.4,111.21,113.5,114.66,114.64,114.61,112.07,111.36,108.54,108.74,110.5,111.99,113.74,114.12,117.78,117.38,119.63,118.18,112.38,113.37,113.84,109.01,107.28,110.17,117.18,116.66,117.21,119.92};
float [] GSPrices = {94.38,86.94,89.38,89.88,93,89.63,87.31,94,102.5,117.19,117.38,128,119.38,110.81,109,94.94,99.13,101.63,87.88,89.19,85.5,87.25,88,91.44,93.44,95.94,97,105.25,105.56,106.94,112.94,117.88,121.75,121.5,129.81,132.88,133.63,124.13,118.69,116.88,107.63,106.31,106.5,101.63,98.38,93.38,88.19,85.38,93,96.38,100.5,108.38,116.75,112,114.75,120,119.7,114,110.65,102.1,100.5,97.5,91,92.5,93.5,87.2,94,102.5,96.1,98.5,98.2,100.5,105.15,97.6,98.14,95.65,93.5,92.85,85.95,88,87.14,86.04,87.5,85.05,83.4,81.5,82.8,81.45,76.76,72.31,72.9,80,85.35,86.5,83.25,83.12,88.8,92.75,91.24,91.94,95.17,93.6,94.74,93.79,96.78,97.25,91.01,89.64,88.96,84.5,86.5,82.8,83.66,92.25,91.5,91.4,90.95,89.45,86.85,87,86.05,81,80.1,80.85,82.1,78.39,76,75.6,77.02,74.4,74.27,74.99,77,74.7,75.15,75.88,80.14,81.97,80.74,76.1,76.42,73.69,68.89,68.8,65.14,72.48,74.9,75.35,78.5,75.64,81,80.35,80.9,74.86,75.75,71.56,70.8,75.75,75.74,73.35,70.01,69.75,66.96,68.89,69.45,70.55,67.57,72.1,72.1,73.3,74.15,77.2,78.9,78,77.92,76.9,76.7,81.67,89.5,90.7,91.98,87.06,86.2,88.65,90.35,87.69,89.1,86.1,88.24,89.1,88.6,92.22,92.11,93.74,93.1,88.11,88.45,89.63,88.91,94.89,97.39,96.98,95.05,97.1,100,99.5,100.78,98.8,99.9,98.98,102,101.87,102.75,101.56,107.9,108,107.8,109.28,109.29,104.81,104.22,107.5,106.48,106.19,103.3,102.27,98.5,94.69,94.82,94.3,93.9,94.1,92.41,94.85,95.15,92.96,91.48,90.7,90.05,89.06,85.6,88.07,91.57,91.72,93.23,94.25,94.96,94.69,95.66,95.25,95,98.45,101.74,104.9,105.4,105.4,107.46,109.93,110.88,105.5,105.59,105.46,105.43,105.18,106.71,110.33,113.93,113.38,110.25,112.83,113.17,111.9,110.99,111.06,114.25,113.81,107.99,108.16,107.29,105.54,101.2,101.65,99.78,100.36,104.24,103.85,104.96,105.84,109.2,109.98,109.9,111.1,114.35,114.87,112.71,114.44,116.28,118.5,120.4,121.7,122.36,119.79,122.08,124.99,131.18,131.69,131.9,134.99,134.3,134.16,131.9,128.47,129.4,129.44,133.8,134.82,139.75,143.77,144.1,146.35,145.75,147.48,147.08,151.54,152.66,159.63,163.16,164.05,169.31,166.27,164.6,166.55,157,152.94,157,156.29,150.72,150.5,152.72,152.79,150.41,147.85,152.35,156.29,155.4,156.87,155.01,150.54,151.51,163.75,169.69,171.15,176.66,183.96,185.48,193.6,192.21,191.7,197,203.35,202.1,206.7,205.5,204.31,202.48,203.32,214.22,215.13,220.51,215.08,219.26,219.1,222.75,218.97,202.99,208.56,211.89,212.22,209.95,209.87,222.19,226.61,227.34,229.9,231.22,232.41,233.97,230.71,234.99,230.33,223.17,224.9,225.77,223.45,207.88,198.99,198.5,187.25,180.88,180.05,183.7,196.04,211,218.67,230.63,239.7,234.31,236.99,250.7,225.25,240.05,228.4,234.22,229.35,227.45,211.81,217.8,216.79,200.68,202.22,202,208.78,208,190,181.37,181.28,169.29,170.06,180.36,184.52,181.62,181.75,183.03,192.49,203.39,201.12,193,189.32,179.5,177.7,178.56,186.98,187.01,182.64,181.91,184.45,190.04,186.83,180.9,183.2,162.68,165,168.91,172.45,151.4,137.99,142,127.51,128,123.8,102.71,95.25,79.22,66.33,81.19,75.8,78.53,81.29,80.13,87.62,92.2,83.76,75.35,89.1,96.58,98.66,92.48,94,90.21,99.84,106.79,115.65,119.76,124.98,131.27,124.8,130.27,141.56,138.96,144.86,145.9,151.17,150.79,145.85,148.19,149.8,146.97,157.99,166.42,165.47,170.94,165.49,164.9,166.41,166.38,177.81,183.95,188,185.48,192.17,193.6,187.55,182.45,174.6,181.43,179.38,173.63,171.33,167.95,166.5,166.75,170.13,178.75,175.06,171,158.3,159.94,155.35,158.19,160.21,168.25,176.34,178.21,178.73,174.78,181,186.41,166.71,161.05,152.35,149.9,144.3,145.8,146.4,143.27,139.72,140.9,140.38,138.5,152,150.97,153.41,157.25,156.2,149.94,148.5,147.99,150.75,154.7,154.57,148.5,153.4,156.69,161.5,163.79,171.18,171.61,169.35,164.38,163.25,168.47,170.92,169.7,171.23,174.59,175,175.34,167.07,166.64,168.72,169.9,165.88,166.25,163.72,160.5,162.21,162,164.4,163.98,156.1,153.95,153.07,150.74,143.39,138.96,142.3,137.25,138.95,137.78,136.72,136.2,133.43,136.47,139.25,137.34,125.44,119.78,118.1,117.8,108.79,109.66,105.6,104.08,98.07,101.13,104.94,118.07,113.89,109.26,101.02,92.29,102.42,106.1,99.94,95,93.84,96.43,101.45,109.43,112.2,117.57,117.6,116.65,117.91,122.18,119.95,124.87,127.86,128.72,125.54,120.41,119.77,115.55,116.48,110.86,102.14,99.95,97.88,97.5,96.76,97.6,96.18,98.77,97.86,100.49,102.05,102.18,104.38,105.63,107.34,106.58,116.75,122.6,121.11,117.65,121.4,122.94,126.48,124.36,125.89,126.73,118.35,120.31,121.34,119.64,120.07,129.72,129.3,134.64,138.15,144.81,146.75,150.4,152.5,156.72,159,155.69,157.19,155.63,153.11,149.06,148.06,150.59,151.45,146.05,146.84,150.99,158.7,164.47,165.83,166.17,168.2,165.67,154.99,154.1,160.28,164.85,167.41,167.9,169.69,164.8,160.79,160.7,158.05,165.79,170,168.46,160.31,160.49,162.5,162.24,163.35,164.3,165.42,168.24,170.69,171.58,172.2,175.8,176.76,178.85,181.13,179.74,175.59,167.6,165.52,165.23,166.18,167.82,175.59,174.49,170.45,167.98,167.67,163.2,161.44,162.11,161.84,158.22,160.9,160.48,163.43,166.26,167.26,171.08,170.62,169.9,168.97,171.79,177.32,177.48,172.49,174.6,176.98,179.86,182.07,183.47,188.58,188.12,188.54,189.5,183.19,183.49,190,191.98,192.68,191.66,190.89,196.93,198.06,195,196.75,196.96,194.04,189.38,182.98,180.99,184.62,191.33,191.64,193.28,192.87,190,193.92,194.25,192.73,195.86,202.87,200.49,199.75,201.34,202.97,208.26,209.68,211.94,214.61,215.01,218.77,212.49,208.97,214.14,214.61,208.13,207.78,206.57,203.1,189.86,190.25,191.75,190.57,184.41,178.46,183.79,186.65,186.5,191.96,199.47,199.9,194.21,191.49,193.84,190.12,187.89,183.17,184.18,177.5,168.18,158.76,161.59,161,153.83,152,151.97,158.85,156.37,158.18,158.9,160.01,160,162.27,168.9,168.66,167.19,162.53,160,162.29,161.65,157.91,151.32,152.8,150.7,150.92,163.24,164.09,162.17,162.13,164.58,166.9,168.07,170.24,172.42,171.67,169.33,163.97,169.98,172.95,175.79,178.85,179.18,205,212.07,213.41,227.16,242.42,245.57,243.65,244.5,246.2,247.77,243.06,240.79,241.11,244.16,251.95,252.65,255.15,254.77,250.28,244.93,232,232.89,229.79,226.88,229.36,228.89,227.34,226.82,225.45,222.44,223.85,226.94,227.04,228.79,230.06,230.64,230.36,223.74,229.79,235.83,230.61,224.95,227.56,224,228.1,232.1,237.6,247.08,246.35,245.25,246.5,247.74,244.98,240.9,239.59,250.79,254.9,260.5,262.14,259.2,259.72,257.3,262,270.5,273.79,263.3,269.28,270,273.12,271.09,275.31,267.5,257.06,258,262.5,262.25,252.75,243.07,245.42,245.88,240.7,232.47,235.92,238.23,231.67,225.47,224.64,228.87,233.72,238.8,239.73,239.46,233.72,239.67,245.08,239.45,235.5,238.52,235.74,231.4,226.92,228.9,228.87,231.69,234.06,222.31,202.3,198.45,195.66,184.43,174.85,165.95,176,178.1,203,201.47,203.29,199.33,198.89,199.45,201.5,200.83,198.97,206.45,193.11,205.5,209.97,208.5,205.59,208.75,206.98,200,199.32,193.31,190.74,197,198.34,205.84,209.85,214.19,217.33,222.24,222.13,208.3,206.6,204.45,205.21,208.93,221.5,219.33,214.2,209.71,207.29,208.93,215.42,219.28,224.77,221.41,220.71,224.28,225.4,227.99,232.2,232.21,234.64,243.4,250.46,248.85,246.5,245.77,241.18,237.8,226.69,211.79,185.4,169.54,167.66,161.1,187.33,185.28,186.32,193.72,185.91,184.85,183.83,211.31,222.98,222.26,214.98,207.51,203,207.79,225.24,213.81,204.18,208.8,216.95,207.85,213,215.23,209.96,203.8,197.46,203.13,209.81,214.89,211.38,202.81,204.39,220.96,227.72,238.12,239.75,245.36,245.93,260.85,263.93,295.89,309.41,306.6,286.35,297.24,306.7,316.78,335.81,340.1,350,356.85,342.88,335.75,334.9,344.47,344.43,353.83,371.65,376.98,373.08,373.77,392.05,393.26,378.75,371.15,381.64,373.63,385.33,378,379.95,398.86,418.62,408.99,420.73,420.76,414.73,417.01,393.74,404.21,397.85,407.27,415.94,419.81,426.16,413.65,407.34,407.48,396.37,401.75,399.84,387.61,391.33,412.66,404.37,361.57,350.48,370.95,377.4,365.89,350.7,343.84,337.47,346.77,346.3,344,331.87,333.03,347.35,322.16,324.8,315.15,314.32,328.67,329.72,325.21,294.48,303.13,308.97,300.89,299.08,329.05,335.18,336.91,356.05,358.62,348.74,340.32,341.03,344.37,329.79,302.41,315.16,311.62,325.77,342.58,358.38,387,389.58,389.44,388.39,378.87,378.56,350.88,347.75,350.31,374.35,366.79,355.99,374.57,379.68,377.05,367.88,370.3,358.86,326.38,322.22,327.33,328.98,339.63,342.36,345.06};
float [] AAPLPrices = {1,0.91,1.08,1.02,0.98,1.05,1.07,1.06,1.18,1.15,1.13,1.34,1.29,1.24,1.19,1.16,1.15,1.13,1.02,0.97,0.84,0.89,0.88,0.86,1.03,0.99,0.99,1.08,1.05,0.95,0.92,0.88,0.94,1.03,1.14,1.15,1.08,1.1,0.99,0.48,0.41,0.42,0.37,0.41,0.4,0.37,0.35,0.36,0.31,0.29,0.27,0.27,0.33,0.33,0.35,0.37,0.4,0.39,0.37,0.36,0.36,0.39,0.38,0.42,0.42,0.4,0.41,0.46,0.47,0.48,0.46,0.44,0.43,0.4,0.39,0.39,0.41,0.43,0.43,0.45,0.45,0.37,0.36,0.35,0.35,0.33,0.34,0.34,0.31,0.32,0.3,0.29,0.32,0.33,0.35,0.34,0.36,0.36,0.36,0.38,0.43,0.41,0.39,0.41,0.43,0.43,0.41,0.42,0.45,0.46,0.45,0.43,0.44,0.45,0.45,0.45,0.43,0.45,0.45,0.47,0.45,0.44,0.44,0.46,0.45,0.44,0.42,0.39,0.37,0.32,0.33,0.34,0.33,0.27,0.28,0.27,0.29,0.29,0.28,0.26,0.26,0.27,0.27,0.27,0.26,0.27,0.28,0.29,0.31,0.29,0.29,0.29,0.29,0.28,0.27,0.26,0.27,0.27,0.27,0.26,0.27,0.27,0.26,0.27,0.27,0.27,0.27,0.27,0.26,0.26,0.27,0.25,0.24,0.26,0.33,0.34,0.33,0.34,0.33,0.32,0.35,0.35,0.35,0.37,0.38,0.39,0.38,0.38,0.36,0.39,0.41,0.42,0.41,0.41,0.4,0.39,0.43,0.45,0.42,0.43,0.42,0.41,0.38,0.38,0.39,0.38,0.38,0.37,0.39,0.43,0.44,0.41,0.42,0.41,0.43,0.42,0.43,0.49,0.5,0.49,0.49,0.5,0.51,0.53,0.51,0.49,0.49,0.5,0.49,0.51,0.52,0.55,0.6,0.6,0.61,0.56,0.6,0.58,0.59,0.58,0.56,0.57,0.63,0.64,0.65,0.67,0.69,0.7,0.73,0.82,0.86,0.95,1,0.99,1.02,1.17,1.24,1.19,1.21,1.18,1.16,1.24,1.33,1.28,1.32,1.43,1.46,1.62,1.61,1.61,1.54,1.55,1.57,1.53,1.59,1.58,1.35,1.34,1.33,1.34,1.35,1.46,1.46,1.38,1.38,1.42,1.36,1.37,1.48,1.57,1.59,1.55,1.65,1.73,1.68,1.68,1.83,1.84,1.92,1.95,1.98,1.94,2.04,2.06,2.23,2.22,2.35,2.48,2.6,2.67,2.7,2.66,2.69,2.74,3.09,3.09,2.84,2.74,2.59,2.54,2.61,2.59,2.42,2.43,2.34,2.27,2.57,2.53,2.5,2.55,2.6,2.64,2.44,2.33,2.26,2.2,2.13,2.15,2.12,2.08,2.02,2.2,2.35,2.5,2.49,2.45,2.47,2.45,2.63,2.68,2.72,2.78,2.72,2.75,2.86,2.95,2.92,3.02,3.08,3.32,3.33,3.3,3.21,3.14,3.05,3.09,3.49,3.49,3.18,3.09,3.09,3.06,3.24,3.21,3.18,3.24,3.37,3.46,3.4,3.4,3.3,3.66,3.63,3.9,3.95,4.11,4.36,4.56,4.51,4.48,4.47,4.76,4.92,5.15,5.32,5.19,4.9,4.62,4.83,4.99,5.21,4.98,5.17,5.54,5.77,6.14,6.24,6.74,6.79,6.88,6.34,6.16,6.7,6.96,7.14,6.93,7.25,7.16,6.56,6.41,5.71,4.88,4.85,4.68,4.53,4.72,4.55,4.65,4.8,5.21,5.53,5.7,5.8,6.11,6.5,6.72,6.87,6.74,6.77,6.78,6.67,6.51,6.39,6.34,6.46,6.4,6.01,5.8,6.06,6.44,6.35,6.29,6.2,5.89,5.27,5.01,4.27,3.63,4.16,3.62,4.01,3.99,3.59,3.27,3.4,3.44,3.7,3.45,3.22,3.25,3.47,3.25,3.21,3.39,3.57,3.68,3.47,3.32,3.31,3.47,3.7,3.93,4.15,4.29,4.44,4.54,4.57,4.77,4.68,4.62,4.85,5.23,5.16,4.98,5.13,5.17,4.99,5.43,5.71,5.89,5.98,6.02,6.05,6.16,6.1,6.23,6.67,6.75,6.69,6.84,6.87,7.45,7.38,6.97,7.32,7.43,7.36,7.24,7.13,7.05,7.48,7.64,7.7,7.61,7.7,7.63,7.15,7.2,7.3,7.33,7.85,8.13,8.09,8.28,8.53,8.64,8.97,9.72,9.73,9.57,9.46,9.23,9.26,9.5,9.26,9.82,9.96,9.63,9.39,9.35,9.47,9.5,9.44,9.36,9.1,9,9.24,9.52,9.93,10.48,10.53,10.52,11.25,11.39,11.13,11.44,11.48,11.09,11.35,11.39,11.57,11.61,11.63,11.67,12.01,12.45,12.45,12.34,12.38,12.86,13.03,12.44,12.87,12.92,12.73,12.57,12.65,12.31,12.01,12.68,12.68,12.57,12.5,12.23,12.09,12.58,12.39,11.9,11.9,12.27,12.86,13.04,14.15,14.45,14.27,13.56,13.75,13.71,14,13.88,14.3,15.1,14.62,13.74,15.07,15.24,14.61,14.62,14.57,13.97,13.5,14.06,14.16,14.12,14.41,14.61,15.1,15.28,15.41,16.23,16.43,17.77,18.8,18.68,19.58,19.56,21.43,21.77,22.19,22.67,23,22.15,22.07,21.37,20.57,20.27,20.59,20.77,20.74,21.02,21.07,20.86,21.94,22.14,21.98,21.77,22.07,22.32,23.15,24.1,24.32,24.37,24.89,25.18,24.83,24.17,23.13,23.31,22.69,21.54,21.1,19.8,20.43,21.22,21.24,19.63,19.1,18.72,19.82,19,18.24,18.39,16.52,17.1,17.32,16.53,16.25,15.55,15.87,16.5,16.78,15.85,15.64,15.28,14.96,16.19,16.63,16.35,16.01,16.33,16.23,16.04,15.56,14.6,15.12,15.35,15.53,15.88,16.53,16.85,18.01,18.35,18.22,17.94,18.14,17.09,17.75,17.58,17.64,18.19,19.04,19.26,18.89,18.9,18.83,19.94,20.54,20.39,20.09,20.42,20.05,19.53,20.01,19.9,19.81,18.68,19.5,19.69,19.03,19.1,19.27,19.15,19.61,19.41,19.01,18.85,20.43,21.41,21.59,21.34,21.95,23.01,23.26,23.76,23.19,23,23.53,24.2,24.28,24.47,24.86,24.15,24.55,25.37,25.73,25.94,25.77,25.76,25.74,25.39,25.6,25.45,26.37,27.01,27.58,28.55,29.39,29.94,29.81,28.71,28.31,28.63,28.69,28.31,28.2,28.44,30,30.13,31.87,32.38,33.4,32.57,32.39,32.31,32.01,31.62,32.03,32.14,32.66,33.64,32.64,32.37,33.24,33.23,32.85,32.55,32.08,32.45,31.74,31.56,32.41,33.24,30.98,30.64,30,29.41,28.33,28.63,28.55,29.22,29.17,28.64,28.07,28.19,29.81,30.31,30.96,30.45,29.98,29.93,29.85,29.97,28.2,27.25,27.36,26.46,25.3,25.37,25.38,24.33,24.09,24.72,24.51,25.94,25.71,26.63,26.91,27.61,28.05,28.1,27.24,26.41,23.98,23.44,23.86,25.18,25.1,25.47,24.78,24.22,24.12,24.22,24.83,25.25,26.14,26.91,27.24,27.56,27.33,27,27.19,29.03,29.05,28.66,28.64,29.67,29.55,29.59,28.56,27.93,27.64,28.11,28.12,28.68,29.18,29.38,29.5,29.54,29.98,30.13,30.61,32.62,33.24,34.07,34.37,35.07,34.99,35.26,35.7,36.13,36.37,35.97,35.73,36.23,37.24,39.1,39.16,38.73,38.86,38.99,36.88,36.79,37.07,36.33,37.33,37.94,38.5,39.94,40.46,40.63,40.19,41.24,41.06,40.99,40.13,38.68,38.87,39.5,40.22,40.9,43.57,44.06,43.63,43.88,43.77,43.16,43.54,44.3,42.96,43.84,44.34,45.03,44.86,42.54,40.97,43.71,43.91,45.15,45,45.88,44.37,43.79,43.56,43.96,44.73,41.73,46.06,47.59,47.38,47.41,47.57,48.55,48.22,47.31,46.82,47.11,47.96,48.16,48.99,52.19,52.45,54.49,54.8,57.22,57.42,57.09,55.74,56.61,58.37,56.82,55.75,56.06,55.59,52.53,49.96,47.68,45.7,46.24,43.14,42.09,39.63,39.84,38.63,39.47,39.53,42.25,43.89,43.12,43.33,43.97,44.44,46.83,49.42,48.22,49.28,50.71,51.04,52.12,53.83,52.21,48.12,47,45.15,47.98,49.2,50.21,50.39,51.27,51.1,51.63,52.43,55.34,50.88,53.04,53.61,52.61,53.61,56.61,55.94,55.62,57.06,59.41,59.53,61.68,63.98,65.11,66.44,67,67,67.75,68.83,70.66,73.49,75.15,78.17,79.69,80.83,81.96,81.31,81.81,81.16,76.05,76,71.61,64.77,64.67,65.62,67.93,72.06,70.75,74.75,77.59,79.92,80.22,81.06,82.94,88.69,89.14,93.1,92.62,96.32,99.96,99.25,106.42,114.41,116.04,124.87,128.79,137.98,120.5,118.83,112.86,117.72,117,125.39,120.42,117.28,119.62,121.99,120.99,117.62,123.78,125.95,129.58,134.41,138.79,133.61,131.45,139.85,145.09,137.42,137.88,136.01,129.72,128.72,123.21,127.22,124.24,124.18,133.04,135,135.53,137.07,134.07,129.54,128,128.32,126.16,128.46,132.55,134.64,140,145.65,150,148.72,149.83,148.04,149.44,151.68,150.86,154.98,157.26,151.42,147.47,145.96,144.22,144.9,150.18,153.17,152.43,151.57,161.02,165.7,170.3,179.63,182.13,176.85,181.33,182.94,177.18,172.54,170.35,176.24,176.65,173.34,166.69,168.91,165.02,164.48,175.28,179.61,178.49,171.27,171.53,166.2,166.48,156.74,149.77,149.68,151.74,149.87,137.34,141.91,143.49,147.55,150.86,156.28,163.63,167.19,172.17,176.15,171.05,162.9,157.82,164.26,158.74,154.72,147.54,144.52,147.85,157.5,155.45,150.01,153.59,151.83,149.13,150.92,149.97,136.81,131.41,130.9,134.92,138.61,147.23,157.38,155.23,156.33,151.3,151.11,156.3,156.74,162.14,165,166.84,166.32,168.16,169.85};
int indexMonth = 12;
int countdown;

//sample prices: 
float [] VZPrices1 = {55.52,53.43,55.24,54.79,56.76,54.5,50.73,47.58,50.56,52.81,53.88,54.45};
float [] XOMPrices1 = {43.13,43,42.94,43.16,42.44,40.94,40.28,38.41,38.84,41,39.97,38.88};
float [] GSPrices1 = {94.38,86.94,89.38,89.88,93,89.63,87.31,94,102.5,117.19,117.38,128};
float [] AAPLPrices1 = {1.0,0.91,1.08,1.02,0.98,1.05,1.07,1.06,1.18,1.15,1.13,1.34}; 
float[][] sampleInput = new float[4][12];



Bot bot1 = new Bot(sampleInput);
public float[][] combo (float[] data, order, float[][] list){
    if (order == 0)
    return sum;
    float multiple = 1;
    int x = 0;
    while (index < data.length && x < order){
        if (index == data.length) {
        int[] combination = data.clone();
        combinations.add(combination);
    } else {
        int max = Math.min(end, end + 1 - data.length + index);
        for (int i = start; i <= max; i++) {
            data[index] = i;
            helper(combinations, data, i + 1, end, index + 1);
        }
    }
    }
}
void setup(){
  countdown = 0;
  for (int i = 0; i<VZPrices1.length ; i++){
  sampleInput[0][i] = AAPLPrices1[i];
  sampleInput[1][i] = GSPrices1[i];
  sampleInput[2][i] = XOMPrices1[i];
  sampleInput[3][i] = VZPrices1[i];
}

  size(1000,1000);
  
}
void draw(){
  if(countdown == 0){
    //1 second timer
    countdown+=30;
    int x = 30;
  int y = 0;
  stroke(200);
  while (x < 820){
    while (y < 940){
       fill(0);
       rect(x, y, 60, 60);
      y+=60;
    }
    x+=60;
    y = 0;
  }
  int yNumbers = 480;
  int yPlace = 10;
  fill(255, 0, 255);
  for(int i =0; yNumbers >=0; i++){
  text("" + yNumbers, 10, yPlace);
  yNumbers -=30;
  yPlace += 60;
  }
  
  int xNumbers = 10;
  int xPlace = 80;
  fill(255, 0, 255);
  text("11", 20, 970);
  for(int i =0; xNumbers >=0; i++){
  text("" + xNumbers, xPlace, 970);
  xNumbers --;
  xPlace += 60; 
  }
  text("Months Ago", 450, 985);
  for (int i = 0; i< bot1.stockPrices.length; i++){
    if(i ==0){
      stroke(255, 0,0);
    }else if(i == 1){
      stroke(0, 255,0);
    }else if(i == 2){
      stroke(0, 255,255);
    }else if(i == 3){
      stroke(0, 0,255);
    }
    for(int j =0; j <11; j++){
      float price1 = bot1.stockPrices[i][j];
      float price2 = bot1.stockPrices[i][j+1];
      float y1 =960.0 -((price1/480.0) *960.0);
      float y2 =960.0 -((price2/480.0) *960.0);
      line(30.0+(j*60.0), y1,30.0+((j+1)*60.0),y2);
    }
  }
  if(indexMonth <1217){
  bot1.updateStockPricesMonthly(AAPLPrices[indexMonth], GSPrices[indexMonth], XOMPrices[indexMonth], VZPrices[indexMonth]);
  indexMonth ++;
  }
  }
  if(countdown > 0){
    countdown --;
  }
  
}
