# Checkpoint

## Progress review

We finished literature review for the project in the first two weeks after submitting the proposal. After understanding that Google Inception Net contains 8 unique layers and they can be used to construct CNN and VGG and other nets, we decide to focus on implementing Google Inception net, which essentially is implementing the 8 unique layers.

We are currently stuck on building caffe2 in latedays cluster. There are many dependencies missing. While waiting for instructors to help, we decide to move on and build our own libraies or proceed with Halide implementation first.


### SCHEDULE

| Timeline | Goal to achieve | Progress  |
|:----------|:--------------| :-------|
| April 8 	| Understand Google Inception Net's Layers and how does they work|  Done|
| April 15  	| Scratch the framework and define primitives| Done|
| April 22  | Implement the framework in Halide and test on CIFAR-10 dataset | Ongoing|
| April 29  | Tune different schedule to improve performance, contact PolyMage for automatic shedule, and compete with Caffe and MXNet | Not Started|
| May 7   | Wrap up implementatin and compare/analyse the performance in report | Not Started |


## Updated Goal and Deliverables

We've put lots of hours to build caffe and caffe2 on lateday cluster. We decide to make our scope to be only support protobuf and json input. We could expend the supported input in the future. For now, the ability of taking in protobuf and json is the most important.

Also, We decide to focus on implementation of our H-Piper framework instead of tuning scheduling. To have this framework ready could help investigate locality-parallelism tradeoff and also PolyMage could benifit from our framework by testing its automatically generated schedules on different nets.

The Performance Compete will be done between Caffe's performance VS PolyMage Schedule's performance.

## What to Show in Parallelism Competition

We want to show the comparison of the performance of our hand-tuned schedule, the performance of PolyMage automatic schedule, and the performance of Caffe2. So it will be a graph. I think it will be nice to have a demo to show how easy it is to configure a net but given that we only have 6 minutes, we might not do this demo.

## Preliminary Results 

We don't have any results for now. We are still working on the correctness of our framework.

## Issues

- We don't know how to write fast halide schedule
- Working on installing dependencies to build caffe2 on lateday clusters
- Some questions about Layers implementation of Google Inception Net. For example, there are two possible way to implement Inception Layer. We don't know which one to choose.
- Our biggest concern is the time. We are working hard now and try to finish our plans in time.

## New Schedule with task

| Timeline | People |  Task |
|:----------|:--------------| :-------|
| April 22  | Lei Sun | Maxpool Layer, Softmax Layer Implementation |
| April 22  | Yang Wu |  Protobuf Input Parser and Data Layer |
| April 29  | Lei Sun |  Test cases build. Caffe2 Dependencies. |
| April 29  | Yang Wu |  Conv Layer, DepthConcat Layer,  Net Creation| 
| May 7   | Lei Sun, Yang Wu | Wrap up implementatin and compare/analyse the performance in report | 





