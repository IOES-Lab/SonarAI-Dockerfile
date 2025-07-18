## Small Underwater Objects 3D Point Cloud Dataset
This repository provides a high-quality underwater Objects 3D point cloud dataset acquired using the BlueView BV5000 S3 multibeam sonar. The dataset includes multiple real underwater objects captured at different distances and labeled for object detection and recognition tasks.

## Overview
The dataset contains 3D point cloud representations of underwater objects such as tires, dummies, drums, and nets. All data were collected in real sea environments using a multibeam sonar scanner and processed to generate .xyz files with intensity values.

- Device: BlueView BV5000 S3
- Environment: Real ocean near Korea Maritime and Ocean University
- Depth: ~6 meters
- Format: `.xyz`, `.son`, `.txt`

## Dataset Structure
## 📁 Dataset Structure
```
Tire/
├── Tire_5m/
│   ├── *.xyz   # 3D Point Cloud (x, y, z, intensity)
│   ├── *.txt   # YOLO label files
│   └── *.son   # Raw sonar files
├── Tire_7m/
│   ├── *.xyz
│   ├── *.txt
│   └── *.son
└── Tire_10m/
    ├── *.xyz
    ├── *.txt
    └── *.son

Dummy/
├── Dummy_5m/
│   ├── *.xyz
│   ├── *.txt
│   └── *.son
├── Dummy_7m/
│   ├── *.xyz
│   ├── *.txt
│   └── *.son
└── Dummy_10m/
    ├── *.xyz
    ├── *.txt
    └── *.son

Drum/
├── Drum_5m/
│   ├── *.xyz
│   ├── *.txt
│   └── *.son
├── Drum_7m/
│   ├── *.xyz
│   ├── *.txt
│   └── *.son
└── Drum_10m/
    ├── *.xyz
    ├── *.txt
    └── *.son

Net/
├── Net_5m/
│   ├── *.xyz
│   ├── *.txt
│   └── *.son
├── Net_7m/
│   ├── *.xyz
│   ├── *.txt
│   └── *.son
└── Net_10m/
    ├── *.xyz
    ├── *.txt
    └── *.son

Chair/
├── Chair_5m/
│   ├── *.xyz
│   ├── *.txt
│   └── *.son
├── Chair_7m/
│   ├── *.xyz
│   ├── *.txt
│   └── *.son
└── Chair_10m/
    ├── *.xyz
    ├── *.txt
    └── *.son
```
