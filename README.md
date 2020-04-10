# Autoscaler for Hybrid cloud

 Problem Statement

For instance, consider a movie booking application server hosted on a Virtual Private Cloud residing within an enterprise’s network. On a weekend we often find surge in the number of requests to the server. This may cause the load on the CPU to increase and the performance of the server may go down and it is also possible that there could be downtime if the surge in traffic load is massive. 

One solution to this problem could be to increase the number of servers hosting the application.  However, maintaining the additional resources will cost more to the enterprise. Additionally, the new servers will be idle or underutilized after the traffic surge reduces. To solve this, we should have a mechanism to add resources only when there a reduction in performance. Also, it is of paramount importance that this mechanism should be automated. It should be able to monitor the certain performance metrics and automatically scale the resources accordingly.
 
Project Description
     
We have provided a solution to this problem by implementing Autoscaling on a Hybrid Cloud environment. If an application within a Virtual Private Cloud environment is experiencing a heavy traffic, a decision will be taken to create more resources for the application on another virtual private cloud. Load Balancing servers now shares the traffic with the newly collected VM(‘s) to bring the load to a limit. These new resources could be a Virtual Machine or a Container. Note that these resources could now reside on different cloud platforms and they can scaled in a hybrid cloud environment.

Auto-scaling also removes additional resources when they are no longer essential. For instance, whenever the traffic is back to normal limits, a decision can be taken to remove these additional resources. It is a cost effective scheme as the enterprise only needs to pay for additional resources during the time of need.

