![An Open Guide](figures/signpost-horiz1-1600.jpg)

The Open Guide to Amazon Web Services
=====================================

[![Slack Chat](https://img.shields.io/badge/Chat-Slack-ff69b4.svg "Join us. Anyone is welcome!")](https://og-aws.slack.lexikon.io/) [![Ask a Question](https://img.shields.io/badge/%3f-Ask%20a%20Question-dc9d47.svg "Questions help improve the Guide")](https://airtable.com/shrXZ61VrovWfXYBg)

[Credits](AUTHORS.md) ∙ [Contributing guidelines](CONTRIBUTING.md)

Table of Contents
-----------------

**Purpose**

-	[Why an Open Guide?](#why-an-open-guide)
-	[Scope](#scope)
-	[Legend](#legend)

**AWS in General**

-	[General Information](#general-information)
-	[Learning and Career Development](#learning-and-career-development)
-	[Managing AWS](#managing-aws)
-	[Managing Servers and Applications](#managing-servers-and-applications)

| Specific AWS Services                 | Basics                         | Tips                          | Gotchas                                        |
|---------------------------------------|--------------------------------|-------------------------------|------------------------------------------------|
| [Security and IAM](#security-and-iam) | [📗](#security-and-iam-basics) | [📘](#security-and-iam-tips) | [📙](#security-and-iam-gotchas-and-limitations) |
| [S3](#s3) | [📗](#s3-basics) | [📘](#s3-tips) | [📙](#s3-gotchas-and-limitations) |
| [EC2](#ec2) | [📗](#ec2-basics) | [📘](#ec2-tips) | [📙](#ec2-gotchas-and-limitations) |
| [AMIs](#amis) | [📗](#ami-basics) | [📘](#ami-tips) | [📙](#ami-gotchas-and-limitations) |
| [Auto Scaling](#auto-scaling) | [📗](#auto-scaling-basics) | [📘](#auto-scaling-tips) | [📙](#auto-scaling-gotchas-and-limitations) |
| [EBS](#ebs) | [📗](#ebs-basics) | [📘](#ebs-tips) | [📙](#ebs-gotchas-and-limitations) |
| [EFS](#efs) | [📗](#efs-basics) |  |  |
| [Load Balancers](#load-balancers) | [📗](#load-balancer-basics) | [📘](#load-balancer-tips) | [📙](#load-balancer-gotchas-and-limitations) |
| [CLB (ELB)](#clb) | [📗](#clb-basics) | [📘](#clb-tips) | [📙](#clb-gotchas-and-limitations) |
| [ALB](#alb) | [📗](#alb-basics) | [📘](#alb-tips) | [📙](#alb-gotchas-and-limitations) |
| [Elastic IPs](#elastic-ips) | [📗](#elastic-ip-basics) | [📘](#elastic-ip-tips) | [📙](#elastic-ip-gotchas-and-limitations) |
| [Glacier](#glacier) | [📗](#glacier-basics) | [📘](#glacier-tips) | [📙](#glacier-gotchas-and-limitations) |
| [RDS](#rds) | [📗](#rds-basics) | [📘](#rds-tips) | [📙](#rds-gotchas-and-limitations) |
| [DynamoDB](#dynamodb) | [📗](#dynamodb-basics) | [📘](#dynamodb-tips) | [📙](#dynamodb-gotchas-and-limitations) |
| [ECS](#ecs) | [📗](#ecs-basics) | [📘](#ecs-tips) |  |
| [Lambda](#lambda) | [📗](#lambda-basics) | [📘](#lambda-tips) | [📙](#lambda-gotchas-and-limitations) |
| [API Gateway](#api-gateway) | [📗](#api-gateway-basics) |  | [📙](#api-gateway-gotchas-and-limitations) |
| [Route 53](#route-53) | [📗](#route-53-basics) | [📘](#route-53-tips) |  |
| [CloudFormation](#cloudformation) | [📗](#cloudformation-basics) | [📘](#cloudformation-tips) | [📙](#cloudformation-gotchas-and-limitations) |
| [VPCs, Network Security, and Security Groups](#vpcs-network-security-and-security-groups) | [📗](#vpc-basics) | [📘](#vpc-and-network-security-tips) | [📙](#vpc-and-network-security-gotchas-and-limitations) |
| [KMS](#kms) | [📗](#kms-basics) | [📘](#kms-tips) |  |
| [CloudFront](#cloudfront) | [📗](#cloudfront-basics) | [📘](#cloudfront-tips) | [📙](#cloudfront-gotchas-and-limitations) |
| [DirectConnect](#directconnect) | [📗](#directconnect-basics) | [📘](#directconnect-tips) |  |
| [Redshift](#redshift) | [📗](#redshift-basics) | [📘](#redshift-tips) | [📙](#redshift-gotchas-and-limitations) |
| [EMR](#emr) | [📗](#emr-basics) | [📘](#emr-tips) | [📙](#emr-gotchas-and-limitations) |

**Special Topics**

-	[High Availability](#high-availability)
-	[Billing and Cost Management](#billing-and-cost-management)
-	[Further Reading](#further-reading)

**Legal**

-	[Disclaimer](#disclaimer)
-	[License](#license)

**Figures and Tables**

[![Tools and Services Market Landscape](figures/aws-market-landscape-320px.png)](#tools-and-services-market-landscape) [![AWS Data Transfer Costs](figures/aws-data-transfer-costs-320px.png)](#aws-data-transfer-costs)

-	[Figure: Tools and Services Market Landscape](#tools-and-services-market-landscape): A selection of third-party companies/products
-	[Figure: AWS Data Transfer Costs](#aws-data-transfer-costs): Visual overview of data transfer costs
-	[Table: Service Matrix](#service-matrix): How AWS services compare to alternatives
-	[Table: AWS Product Maturity and Releases](#aws-product-maturity-and-releases): AWS product releases
-	[Table: Storage Durability, Availability, and Price](#storage-durability-availability-and-price): A quantitative comparison

Why an Open Guide?
------------------

A lot of information on AWS is already written. Most people learn AWS by reading a blog or a “[getting started guide](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html)” and referring to the [standard AWS references](https://aws.amazon.com/documentation/). Nonetheless, trustworthy and practical information and recommendations aren’t easy to come by. AWS’s own documentation is a great but sprawling resource few have time to read fully, and it doesn’t include anything but official facts, so omits experiences of engineers. The information in blogs or [Stack Overflow](http://stackoverflow.com/questions/tagged/amazon-web-services) is also not consistently up to date.

This guide is by and for engineers who use AWS. It aims to be a useful, living reference that consolidates links, tips, gotchas, and best practices. It arose from discussion and editing over beers by [several engineers](AUTHORS.md) who have used AWS extensively.

Before using the guide, please read the [**license**](#license) and [**disclaimer**](#disclaimer).

### Please help!

**This is an early in-progress draft!** It’s our first attempt at assembling this information, so is far from comprehensive still, and likely to have omissions or errors.

[![Slack Chat](https://img.shields.io/badge/Chat-Slack-ff69b4.svg "Join us. Anyone is welcome!")](https://og-aws.slack.lexikon.io/) [![Ask a Question](https://img.shields.io/badge/%3f-Ask%20a%20Question-dc9d47.svg "Questions help improve the Guide")](https://airtable.com/shrXZ61VrovWfXYBg)

Please help by [**joining the Slack channel**](https://og-aws.slack.lexikon.io/) to talk about AWS (anyone is welcome, even if you only have questions!), [**submitting a question**](https://airtable.com/shrXZ61VrovWfXYBg), or [**contributing to the guide**](CONTRIBUTING.md). This guide is *open to contributions*, so unlike a blog, it can keep improving. Like any open source effort, we combine efforts but also review to ensure high quality.

Scope
-----

-	Currently, this guide covers selected “core” services, such as EC2, S3, Load Balancers, EBS, and IAM, and partial details and tips around other services. We expect it to expand.
-	It is not a tutorial, but rather a collection of information you can read and return to. It is for both beginners and the experienced.
-	The goal of this guide is to be:
	-	**Brief:** Keep it dense and use links
	-	**Practical:** Basic facts, concrete details, advice, gotchas, and other “folk knowledge”
	-	**Current:** We can keep updating it, and anyone can contribute improvements
	-	**Thoughtful:** The goal is to be helpful rather than present dry facts. Thoughtful opinion with rationale is welcome. Suggestions, notes, and opinions based on real experience can be extremely valuable. (We believe this is both possible with a guide of this format, unlike in some [other venues](http://meta.stackexchange.com/questions/201994/is-there-a-place-to-ask-opinion-based-questions).)
-	This guide is not sponsored by AWS or AWS-affiliated vendors. It is written by and for engineers who use AWS.

Legend
------

-	📒 Marks standard/official AWS pages and docs
-	🔹 Important or often overlooked tip
-	❗ Gotcha or warning (where risks or time or resource costs are significant)
-	🔸 Limitation or quirk (where it’s not quite so bad)
-	📜 Undocumented feature (folklore)
-	🐥 Relatively new (and perhaps immature) services or features
-	⏱ Performance discussions
-	⛓ Lock-in: Products or decisions that are likely to tie you to AWS in a new or significant way — that is, later moving to a non-AWS alternative would be costly in terms of engineering effort
-	🚪 Alternative non-AWS options
-	💸 Cost issues, discussion, and gotchas
-	🕍 A mild warning attached to “full solution” or opinionated frameworks that may take significant time to understand and/or might not fit your needs exactly; the opposite of a point solution (the cathedral is a nod to [Raymond’s metaphor](https://en.wikipedia.org/wiki/The_Cathedral_and_the_Bazaar)\)
-	📗📘📙 Colors indicate basics, tips, and gotchas, respectively.
-	🚧 Areas where correction or improvement are needed (possibly with link to an issue — do help!)

General Information
-------------------

### When to Use AWS

-	[AWS](https://en.wikipedia.org/wiki/Amazon_Web_Services) is the dominant public cloud computing provider.
	-	In general, “[cloud computing](https://en.wikipedia.org/wiki/Cloud_computing)” can refer to one of three types of cloud: “public,” “private,” and “hybrid.” AWS is a public cloud provider, since anyone can use it. Private clouds are within a single (usually large) organization. Many companies use a hybrid of private and public clouds.
	-	The core features of AWS are [infrastructure-as-a-service](https://en.wikipedia.org/wiki/Cloud_computing#Infrastructure_as_a_service_.28IaaS.29) (IaaS) — that is, virtual machines and supporting infrastructure. Other cloud service models include [platform-as-a-service](https://en.wikipedia.org/wiki/Cloud_computing#Platform_as_a_service_.28PaaS.29) (PaaS), which typically are more fully managed services that deploy customers’ applications, or [software-as-a-service](https://en.wikipedia.org/wiki/Cloud_computing#Software_as_a_service_.28SaaS.29) (SaaS), which are cloud-based applications. AWS does offer a few products that fit into these other models, too.
	-	In business terms, with infrastructure-as-a-service you have a variable cost model — it is [OpEx, not CapEx](http://www.investopedia.com/ask/answers/020915/what-difference-between-capex-and-opex.asp) (though some [pre-purchased contracts](https://aws.amazon.com/ec2/purchasing-options/reserved-instances/) are still CapEx).
-	AWS revenue was [about $5 billion as of 2015](https://awsinsider.net/articles/2015/04/23/amazon-earnings-q1-2015.aspx) (roughly a fifth of Amazon.com’s total revenue).
-	**Main reasons to use AWS:**
	-	If your company is building systems or products that may need to scale
	-	and you have technical know-how
	-	and you want the most flexible tools
	-	and you’re not significantly tied into different infrastructure already
	-	and you don’t have internal, regulatory, or compliance reasons you can’t use a public cloud-based solution
	-	and you’re not on a Microsoft-first tech stack
	-	and you don’t have a specific reason to use Google Cloud
	-	and you can afford, manage, or negotiate its somewhat higher costs
	-	... then AWS is likely a good option for your company.
-	Each of those reasons above might point to situations where other services are preferable. In practice, many, if not most, tech startups as well as a number of modern large companies can or already do benefit from using AWS. Many large enterprises are partly migrating internal infrastructure to Azure, Google Cloud, and AWS.
-	**Costs:** Billing and cost management are such big topics that we have [an entire section on this](#billing-and-cost-management).
-	🔹**EC2 vs. other services:** Most users of AWS are most familiar with [EC2](#ec2), AWS’ flagship virtual server product, and possibly a few others like S3 and CLBs. But AWS products now extend far beyond basic IaaS, and often companies do not properly understand or appreciate all the many AWS services and how they can be applied, due to the [sharply growing](#which-services-to-use) number of services, their novelty and complexity, branding confusion, and fear of ⛓lock-in to proprietary AWS technology. Although a bit daunting, it’s important for technical decision-makers in companies to understand the breadth of the AWS services and make informed decisions. (We hope this guide will help.)
-	🚪**AWS vs. other cloud providers:** While AWS is the dominant IaaS provider (31% market share in [this 2016 estimate](https://www.srgresearch.com/articles/aws-remains-dominant-despite-microsoft-and-google-growth-surges)), there is significant competition and alternatives that are better suited to some companies. [This Gartner report](https://www.gartner.com/doc/reprints?id=1-2G2O5FC&ct=150519&st=sb) has a good overview of the major cloud players :
	-	[**Google Cloud**](https://cloud.google.com/). It arrived later to market than AWS, but has vast resources and is now used widely by many companies, including a few large ones. It is gaining market share. Not all AWS services have similar or analogous services in Google Cloud. And vice versa: In particular Google offers some more advanced machine learning-based services like the [Vision](https://cloud.google.com/vision/), [Speech](https://cloud.google.com/speech/), and [Natural Language](https://cloud.google.com/natural-language/) APIs. It’s not common to switch once you’re up and running, but it does happen: [Spotify migrated](http://www.wsj.com/articles/google-cloud-lures-amazon-web-services-customer-spotify-1456270951) from AWS to Google Cloud. There is more discussion [on Quora](https://www.quora.com/What-are-the-reasons-to-choose-AWS-over-Google-Cloud-or-vice-versa-for-a-high-traffic-web-application) about relative benefits.
	-	[**Microsoft Azure**](https://azure.microsoft.com/en) is the de facto choice for companies and teams that are focused on a Microsoft stack, and it has now placed significant emphasis on Linux as well
	-	In **China**, AWS’ footprint is relatively small. The market is dominated by Alibaba’s [Aliyun](https://intl.aliyun.com/).
	-	Companies at (very) large scale may want to reduce costs by managing their own infrastructure. For example, [Dropbox migrated](https://news.ycombinator.com/item?id=11282948) to their own infrastructure.
	-	Other cloud providers such as [Digital Ocean](https://www.digitalocean.com/) offer similar services, sometimes with greater ease of use, more personalized support, or lower cost. However, none of these match the breadth of products, mind-share, and market domination AWS now enjoys.
	-	Traditional managed hosting providers such as [Rackspace](https://www.rackspace.com/) offer cloud solutions as well.
-	🚪**AWS vs. PaaS:** If your goal is just to put up a single service that does something relatively simple, and you’re trying to minimize time managing operations engineering, consider a [platform-as-a-service](https://en.wikipedia.org/wiki/Platform_as_a_service) such as [Heroku](https://www.heroku.com/). The AWS approach to PaaS, Elastic Beanstalk, is arguably more complex, especially for simple use cases.
-	🚪**AWS vs. web hosting:** If your main goal is to host a website or blog, and you don’t expect to be building an app or more complex service, you may wish consider one of the myriad of [web hosting services](https://www.google.com/search?q=web+hosting).
-	🚪**AWS vs. managed hosting:** Traditionally, many companies pay [managed hosting](https://en.wikipedia.org/wiki/Dedicated_hosting_service) providers to maintain physical servers for them, then build and deploy their software on top of the rented hardware. This makes sense for businesses who want direct control over hardware, due to legacy, performance, or special compliance constraints, but is usually considered old fashioned or unnecessary by many developer-centric startups and younger tech companies.
-	**Complexity:** AWS will let you build and scale systems to the size of the largest companies, but the complexity of the services when used at scale requires significant depth of knowledge and experience. Even very simple use cases often require more knowledge to do “right” in AWS than in a simpler environment like Heroku or Digital Ocean. (This guide may help!)
-	**Geographic locations:** AWS has data centers in [over a dozen geographic locations](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions), known as **regions**, in Europe, East Asia, North and South America, and now Australia and India. It also has many more **edge locations** globally for reduced latency of services like CloudFront.
	-	See the [current list](https://aws.amazon.com/about-aws/global-infrastructure/) of regions and edge locations, including upcoming ones.
	-	If your infrastructure needs to be in close physical proximity to another service for latency or throughput reasons (for example, latency to an ad exchange), viability of AWS may depend on the location.
-	⛓**Lock-in:** As you use AWS, it’s important to be aware when you are depending on AWS services that do not have equivalents elsewhere.
	-	Lock-in may be completely fine for your company, or a significant risk. It’s important from a business perspective to make this choice explicitly, and consider the cost, operational, business continuity, and competitive risks of being tied to AWS. AWS is such a dominant and reliable vendor, many companies are comfortable with using AWS to its full extent. Others can tell stories about the [dangers of “cloud jail” when costs spiral](http://firstround.com/review/the-three-infrastructure-mistakes-your-company-must-not-make/).
	-	Generally, the more AWS services you use, the more lock-in you have to AWS — that is, the more engineering resources (time and money) it will take to change to other providers in the future.
	-	Basic services like virtual servers and standard databases are usually easy to migrate to other providers or on premises. Others like load balancers and IAM are specific to AWS but have close equivalents from other providers. The key thing to consider is whether engineers are architecting systems around specific AWS services that are not open source or relatively interchangeable. For example, Lambda, API Gateway, Kinesis, Redshift, and DynamoDB do not have substantially equivalent open source or commercial service equivalents, while EC2, RDS (MySQL or Postgres), EMR, and ElastiCache more or less do. (See more [below](#which-services-to-use), where these are noted with ⛓.)
-	**Combining AWS and other cloud providers:** Many customers combine AWS with other non-AWS services. For example, legacy systems or secure data might be in a managed hosting provider, while other systems are AWS. Or a company might only use S3 with another provider doing everything else. However small startups or projects starting fresh will typically stick to AWS or Google Cloud only.
-	**Hybrid cloud:** In larger enterprises, it is common to have [hybrid deployments](https://aws.amazon.com/enterprise/hybrid/) encompassing private cloud or on-premises servers and AWS — or other enterprise cloud providers like [IBM](https://www.ibm.com/cloud-computing/solutions/hybrid-cloud)/[Bluemix](http://www.ibm.com/cloud-computing/bluemix/hybrid/), [Microsoft](https://www.microsoft.com/en-us/cloud-platform/hybrid-cloud)/[Azure](https://azure.microsoft.com/en-us/overview/azure-stack/), [NetApp](http://www.netapp.com/us/solutions/cloud/hybrid-cloud/), or [EMC](http://www.emc.com/en-us/cloud/hybrid-cloud-computing/index.htm).
-	**Major customers:** Who uses AWS and Google Cloud?
	-	AWS’s [list of customers](https://aws.amazon.com/solutions/case-studies/) includes large numbers of mainstream online properties and major brands, such as Netflix, Pinterest, Spotify (moving to Google Cloud), Airbnb, Expedia, Yelp, Zynga, Comcast, Nokia, and Bristol-Myers Squibb.
        -       Azure's [list of customers](https://azure.microsoft.com/en-us/case-studies/) includes companies such as NBC Universal, 3M and Honeywell Inc.
	-	Google Cloud’s [list of customers](https://cloud.google.com/customers/) is large as well, and includes a few mainstream sites, such as [Snapchat](http://www.businessinsider.com/snapchat-is-built-on-googles-cloud-2014-1), Best Buy, Domino’s, and Sony Music.

### Which Services to Use

-	AWS offers a *lot* of different services — [about fifty](https://aws.amazon.com/products/) at last count.
-	Most customers use a few services heavily, a few services lightly, and the rest not at all. What services you’ll use depends on your use cases. Choices differ substantially from company to company.
-	**Immature and unpopular services:** Just because AWS has a service that sounds promising, it doesn’t mean you should use it. Some services are very narrow in use case, not mature, are overly opinionated, or have limitations, so building your own solution may be better. We try to give a sense for this by breaking products into categories.
-	**Must-know infrastructure:** Most typical small to medium-size users will focus on the following services first. If you manage use of AWS systems, you likely need to know at least a little about all of these. (Even if you don’t use them, you should learn enough to make that choice intelligently.)
	-	[IAM](#security-and-iam): User accounts and identities (you need to think about accounts early on!)
	-	[EC2](#ec2): Virtual servers and associated components, including:
		-	[AMIs](#amis): Machine Images
		-	[Load Balancers](#load-balancers): CLBs and ALBs
		-	[Autoscaling](#auto-scaling): Capacity scaling (adding and removing servers based on load)
		-	[EBS](#ebs): Network-attached disks
		-	[Elastic IPs](#elastic-ips): Assigned IP addresses
	-	[S3](#s3): Storage of files
	-	[Route 53](#route-53): DNS and domain registration
	-	[VPC](#vpcs-network-security-and-security-groups): Virtual networking, network security, and co-location; you automatically use
	-	[CloudFront](#cloudfront): CDN for hosting content
	-	[CloudWatch](https://aws.amazon.com/cloudwatch/): Alerts, paging, monitoring
-	**Managed services:** Existing software solutions you could run on your own, but with managed deployment:
	-	[RDS](#rds): Managed relational databases (managed MySQL, Postgres, and Amazon’s own Aurora database)
	-	[EMR](#emr): Managed Hadoop
	-	[Elasticsearch](https://aws.amazon.com/elasticsearch-service/): Managed Elasticsearch
	-	[ElastiCache](https://aws.amazon.com/elasticache/): Managed Redis and Memcached
-	**Optional but important infrastructure:** These are key and useful infrastructure components that are less widely known and used. You may have legitimate reasons to prefer alternatives, so evaluate with care to be sure they fit your needs:
	-	⛓[Lambda](#lambda): Running small, fully managed tasks “serverless”
	-	[CloudTrail](https://aws.amazon.com/cloudtrail/): AWS API logging and audit (often neglected but important)
	-	⛓🕍[CloudFormation](#cloudformation): Templatized configuration of collections of AWS resources
	-	🕍[Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk/): Fully managed (PaaS) deployment of packaged Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker applications
	-	🐥⛓[EFS](https://aws.amazon.com/efs/): Network filesystem
	-	⛓🕍[ECS](#ecs): Docker container/cluster management (note Docker can also be used directly, without ECS)
	-	⛓[ECR](https://aws.amazon.com/ecr/): Hosted private Docker registry
	-	🐥[Config](https://aws.amazon.com/config/): AWS configuration inventory, history, change notifications
-	**Special-purpose infrastructure:** These services are focused on specific use cases and should be evaluated if they apply to your situation. Many also are proprietary architectures, so tend to tie you to AWS.
	-	⛓[DynamoDB](#dynamodb): Low-latency NoSQL key-value store
	-	⛓[Glacier](#glacier): Slow and cheap alternative to S3
	-	⛓[Kinesis](https://aws.amazon.com/kinesis/): Streaming (distributed log) service
	-	⛓[SQS](https://aws.amazon.com/sqs/): Message queueing service
	-	⛓[Redshift](#redshift): Data warehouse
	-	🐥[QuickSight](https://aws.amazon.com/quicksight/): Business intelligence service
	-	[SES](https://aws.amazon.com/ses/): Send and receive e-mail for marketing or transactions
	-	⛓[API Gateway](https://aws.amazon.com/api-gateway/): Proxy, manage, and secure API calls
	-	⛓[IoT](https://aws.amazon.com/iot/): Manage bidirectional communication over HTTP, WebSockets, and MQTT between AWS and clients (often but not necessarily “things” like appliances or sensors)
	-	⛓[WAF](https://aws.amazon.com/waf/): Web firewall for CloudFront to deflect attacks
	-	⛓[KMS](#kms): Store and manage encryption keys securely
	-	[Inspector](https://aws.amazon.com/inspector/): Security audit
	-	[Trusted Advisor](https://aws.amazon.com/premiumsupport/trustedadvisor/): Automated tips on reducing cost or making improvements
-	**Compound services:** These are similarly specific, but are full-blown services that tackle complex problems and may tie you in. Usefulness depends on your requirements. If you have large or significant need, you may have these already managed by in-house systems and engineering teams.
	-	[Machine Learning](https://aws.amazon.com/machine-learning/): Machine learning model training and classification
	-	⛓🕍[Data Pipeline](https://aws.amazon.com/datapipeline/): Managed ETL service
	-	⛓🕍[SWF](https://aws.amazon.com/swf/): Managed state tracker for distributed polyglot job workflow
	-	⛓🕍[Lumberyard](https://aws.amazon.com/lumberyard/): 3D game engine
-	**Mobile/app development:**
	-	[SNS](https://aws.amazon.com/sns/): Manage app push notifications and other end-user notifications
	-	⛓🕍[Cognito](https://aws.amazon.com/cognito/): User authentication via Facebook, Twitter, etc.
	-	[Device Farm](https://aws.amazon.com/device-farm/): Cloud-based device testing
	-	[Mobile Analytics](https://aws.amazon.com/mobileanalytics/): Analytics solution for app usage
	-	🕍[Mobile Hub](https://aws.amazon.com/mobile/): Comprehensive, managed mobile app framework
-	**Enterprise services:** These are relevant if you have significant corporate cloud-based or hybrid needs. Many smaller companies and startups use other solutions, like Google Apps or Box. Larger companies may also have their own non-AWS IT solutions.
	-	[AppStream](https://aws.amazon.com/appstream/): Windows apps in the cloud, with access from many devices
	-	[Workspaces](https://aws.amazon.com/workspaces/): Windows desktop in the cloud, with access from many devices
	-	[WorkDocs](https://aws.amazon.com/workdocs/) (formerly Zocalo): Enterprise document sharing
	-	[WorkMail](https://aws.amazon.com/workmail/): Enterprise managed e-mail and calendaring service
	-	[Directory Service](https://aws.amazon.com/directoryservice/): Microsoft Active Directory in the cloud
	-	[Direct Connect](https://aws.amazon.com/directconnect/): Dedicated network connection between office or data center and AWS
	-	[Storage Gateway](https://aws.amazon.com/storagegateway/): Bridge between on-premises IT and cloud storage
	-	[Service Catalog](https://aws.amazon.com/servicecatalog/): IT service approval and compliance
-	**Probably-don't-need-to-know services:** Bottom line, our informal polling indicates these services are just not broadly used — and often for good reasons:
	-	[Snowball](https://aws.amazon.com/importexport/): If you want to ship petabytes of data into or out of Amazon using a physical appliance, read on.
	-	[CodeCommit](https://aws.amazon.com/codecommit/): Git service. You’re probably already using GitHub or your own solution ([Stackshare](http://stackshare.io/stackups/github-vs-bitbucket-vs-aws-codecommit) has informal stats).
	-	🕍[CodePipeline](https://aws.amazon.com/codepipeline/): Continuous integration. You likely have another solution already.
	-	🕍[CodeDeploy](https://aws.amazon.com/codedeploy/): Deployment of code to EC2 servers. Again, you likely have another solution.
	-	🕍[OpsWorks](https://aws.amazon.com/opsworks/): Management of your deployments using Chef. While Chef is popular, it seems few people use OpsWorks, since it involves going in on a whole different code deployment framework.
-	[AWS in Plain English](https://www.expeditedssl.com/aws-in-plain-english) offers more friendly explanation of what all the other different services are.

### Tools and Services Market Landscape

There are now enough cloud and “big data” enterprise companies and products that few can keep up with the market landscape. (See the [Big Data Evolving Landscape – 2016](https://practicalanalytics.co/2016/02/09/big-data-evolving-landscape-2016/) for one attempt at this.)

We’ve assembled a landscape of a few of the services. This is far from complete, but tries to emphasize services that are popular with AWS practitioners — services that specifically help with AWS, or a complementary, or tools almost anyone using AWS must learn.

![Popular Tools and Services for AWS Practitioners](figures/aws-market-landscape.png)

🚧 *Suggestions to improve this figure? Please [file an issue](CONTRIBUTING.md).*


### Common Concepts

-	📒 The AWS [**General Reference**](https://docs.aws.amazon.com/general/latest/gr/Welcome.html) covers a bunch of common concepts that are relevant for multiple services.
-	AWS allows deployments in [**regions**](https://docs.aws.amazon.com/general/latest/gr/rande.html), which are isolated geographic locations that help you reduce latency or offer additional redundancy (though typically availability zones are the first tool of choice for [high availability](#high-availability)).
-	Each service has API **endpoints** for each region. Endpoints differ from service to service and not all services are available in each region, as listed in [these tables](https://docs.aws.amazon.com/general/latest/gr/rande.html).
-	[**Amazon Resource Names (ARNs)**](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) are specially formatted identifiers for identifying resources. They start with 'arn:' and are used in many services, and in particular for IAM policies.

### Service Matrix

Many services within AWS can at least be compared with Google Cloud offerings or with internal Google services. And often times you could assemble the same thing yourself with open source software. This table is an effort at listing these rough correspondences. (Remember that this table is imperfect as in almost every case there are subtle differences of features!)

| Service                       | AWS                                                                          | Google Cloud                 | Google Internal | Microsoft Azure                    | Other providers                   | Open source “build your own”                               |
|-------------------------------|------------------------------------------------------------------------------|------------------------------|-----------------|------------------------------------|-----------------------------------|------------------------------------------------------------|
| Virtual server                | EC2                                                                          | Compute Engine (GCE)         |                 | Virtual Machine                    | DigitalOcean                      | OpenStack                                                  |
| PaaS                          | Elastic Beanstalk                                                            | App Engine                   | App Engine      | Web Apps                           | Heroku                            | Meteor, AppScale                                           |
| Serverless, microservices     | Lambda, API Gateway                                                          | Functions                    |                 | Function Apps                      |                                   |                                                            |
| Container, cluster manager    | ECS                                                                          | Container Engine, Kubernetes | Borg or Omega   | Container Service                  |                                   | Kubernetes, Mesos, Aurora                                  |
| File storage                  | S3                                                                           | Cloud Storage                | GFS             | Storage Account                    |                                   | Swift, HDFS                                                |
| Block storage                 | EBS                                                                          | Persistent Disk              |                 | Storage Account                    |                                   | NFS                                                        |
| SQL datastore                 | RDS                                                                          | Cloud SQL                    |                 | SQL Database                       |                                   | MySQL, PostgreSQL                                          |
| Sharded RDBMS                 |                                                                              |                              | F1, Spanner     |                                    |                                   | Crate.io, CockroachDB                                      |
| Bigtable                      |                                                                              | Cloud Bigtable               | Bigtable        |                                    |                                   | HBase                                                      |
| Key-value store, column store | DynamoDB                                                                     | Cloud Datastore              | Megastore       | Tables, DocumentDB                 |                                   | Cassandra, CouchDB, RethinkDB, Redis                       |
| Memory cache                  | ElastiCache                                                                  | App Engine Memcache          |                 | Redis Cache                        |                                   | Memcached, Redis                                           |
| Search                        | CloudSearch, Elasticsearch (managed)                                         |                              |                 | Search                             | Algolia, QBox                     | Elasticsearch, Solr                                        |
| Data warehouse                | Redshift                                                                     | BigQuery                     | Dremel          | SQL Data Warehouse                 | Oracle, IBM, SAP, HP, many others | Greenplum                                                  |
| Business intelligence         | QuickSight                                                                   |                              |                 | Power BI                           | Tableau                           |                                                            |
| Lock manager                  | [DynamoDB (weak)](https://gist.github.com/ryandotsmith/c95fd21fab91b0823328) |                              | Chubby          | Lease blobs in Storage Account     |                                   | ZooKeeper, Etcd, Consul                                    |
| Message broker                | SQS, SNS, IoT                                                                | Pub/Sub                      | PubSub2         | Service Bus                        |                                   | RabbitMQ, Kafka, 0MQ                                       |
| Streaming, distributed log    | Kinesis                                                                      | Dataflow                     | PubSub2         | Event Hubs                         |                                   | Kafka Streams, Apex, Flink, Spark Streaming, Storm         |
| MapReduce                     | EMR                                                                          | Dataproc                     | MapReduce       | HDInsight, DataLake Analytics      | Qubole                            | Hadoop                                                     |
| Monitoring                    | CloudWatch                                                                   | Monitoring                   | Borgmon         | Monitor                            |                                   | Prometheus(?)                                              |
| Metric management             |                                                                              |                              | Borgmon, TSDB   | Application Insights               |                                   | Graphite, InfluxDB, OpenTSDB, Grafana, Riemann, Prometheus |
| CDN                           | CloudFront                                                                   | Cloud CDN                    |                 | CDN                                |                                   | Apache Traffic Server                                      |
| Load balancer                 | CLB/ALB                                                                      | Load Balancing               | GFE             | Load Balancer, Application Gateway |                                   | nginx, HAProxy, Apache Traffic Server                      |
| DNS                           | Route53                                                                      | DNS                          |                 | DNS                                |                                   | bind                                                       |
| Email                         | SES                                                                          |                              |                 |                                    | Sendgrid, Mandrill, Postmark      |                                                            |
| Git hosting                   | CodeCommit                                                                   | Cloud Source Repositories    |                 | Visual Studio Team Services        | GitHub, BitBucket                 | GitLab                                                     |
| User authentication           | Cognito                                                                      |                              |                 | Azure Active Directory             |                                   | oauth.io                                                   |
| Mobile app analytics          | Mobile Analytics                                                             | Firebase Analytics           |                 | HockeyApp                          | Mixpanel                          |                                                            |
| Mobile app testing            | Device Farm                                                                  | Firebase Test Lab            |                 | Xamarin Test Cloud                 | BrowserStack, Sauce Labs, Testdroid                                                            |


🚧 [*Please help fill this table in.*](CONTRIBUTING.md)

Selected resources with more detail on this chart:

-	Google internal: [MapReduce](http://research.google.com/archive/mapreduce.html), [Bigtable](http://research.google.com/archive/bigtable.html), [Spanner](http://research.google.com/archive/spanner.html), [F1 vs Spanner](http://highscalability.com/blog/2013/10/8/f1-and-spanner-holistically-compared.html), [Bigtable vs Megastore](http://perspectives.mvdirona.com/2008/07/google-megastore/)

### AWS Product Maturity and Releases

It’s important to know the maturity of each AWS product. Here is a mostly complete list of first release date, with links to the [release notes](https://aws.amazon.com/releasenotes/). Most recently released services are first. Not all services are available in all regions; see [this table](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/).

| Service                                                                                                    | Original release | Availability                                                                  | CLI Support |
|------------------------------------------------------------------------------------------------------------|------------------|-------------------------------------------------------------------------------|:-----------:|
| 🐥[Database Migration Service](https://aws.amazon.com/releasenotes/AWS-Database-Migration-Service?browse=1) | 2016-03          | General                                                                       |             |
| 🐥[IoT](https://aws.amazon.com/blogs/aws/aws-iot-now-generally-available/)                                  | 2015-08          | General                                                                       | ✓           |
| 🐥[WAF](https://aws.amazon.com/releasenotes/AWS-WAF?browse=1)                                               | 2015-10          | General                                                                       | ✓           |
| 🐥[Data Pipeline](https://aws.amazon.com/releasenotes/AWS-Data-Pipeline?browse=1)                           | 2015-10          | General                                                                       | ✓           |
| 🐥[Elasticsearch](https://aws.amazon.com/releasenotes/Amazon-Elasticsearch-Service?browse=1)                | 2015-10          | General                                                                       | ✓           |
| 🐥[Service Catalog](https://aws.amazon.com/releasenotes/AWS-Service-Catalog?browse=1)                       | 2015-07          | General                                                                       | ✓           |
| 🐥[Device Farm](https://aws.amazon.com/releasenotes/AWS-Device-Farm?browse=1)                         	  | 2015-07          | General                                                                       | ✓           |
| 🐥[CodePipeline](https://aws.amazon.com/releasenotes/AWS-CodePipeline?browse=1)                             | 2015-07          | General                                                                       | ✓           |
| 🐥[CodeCommit](https://aws.amazon.com/releasenotes/AWS-CodeCommit?browse=1)                                 | 2015-07          | General                                                                       | ✓           |
| 🐥[API Gateway](https://aws.amazon.com/releasenotes/Amazon-API-Gateway?browse=1)                            | 2015-07          | General                                                                       | ✓           |
| 🐥[Config](https://aws.amazon.com/releasenotes/AWS-Config?browse=1)                                         | 2015-06          | General                                                                       | ✓           |
| 🐥[EFS](https://aws.amazon.com/releasenotes/Amazon-EFS?browse=1)                                            | 2015-05          | General                                                                       | ✓           |
| 🐥[Machine Learning](https://aws.amazon.com/releasenotes/AmazonML?browse=1)                                 | 2015-04          | General                                                                       | ✓           |
| [Lambda](https://aws.amazon.com/releasenotes/AWS-Lambda?browse=1)                                          | 2014-11          | General                                                                       | ✓           |
| [ECS](https://aws.amazon.com/ecs/release-notes/)                                                           | 2014-11          | General                                                                       | ✓           |
| [KMS](https://aws.amazon.com/releasenotes/AWS-KMS?browse=1)                                                | 2014-11          | General                                                                       | ✓           |
| [CodeDeploy](https://aws.amazon.com/releasenotes/AWS-CodeDeploy?browse=1)                                  | 2014-11          | General                                                                       | ✓           |
| [Kinesis](https://aws.amazon.com/releasenotes/Amazon-Kinesis?browse=1)                                     | 2013-12          | General                                                                       | ✓           |
| [CloudTrail](https://aws.amazon.com/releasenotes/AWS-CloudTrail?browse=1)                                  | 2013-11          | General                                                                       | ✓           |
| [AppStream](https://aws.amazon.com/releasenotes/Amazon-AppStream?browse=1)                                 | 2013-11          | Preview                                                                       |             |
| [CloudHSM](https://aws.amazon.com/releasenotes/AWS-CloudHSM?browse=1)                                      | 2013-03          | General                                                                       | ✓           |
| [Silk](https://aws.amazon.com/releasenotes/Amazon-Silk?browse=1)                                           | 2013-03          | Obsolete?                                                                     |             |
| [OpsWorks](https://aws.amazon.com/releasenotes/AWS-OpsWorks?browse=1)                                      | 2013-02          | General                                                                       | ✓           |
| [Redshift](https://aws.amazon.com/releasenotes/Amazon-Redshift?browse=1)                                   | 2013-02          | General                                                                       | ✓           |
| [Elastic Transcoder](https://aws.amazon.com/releasenotes/Amazon-Elastic-Transcoder?browse=1)               | 2013-01          | General                                                                       | ✓           |
| [Glacier](https://aws.amazon.com/releasenotes/Amazon-Glacier?browse=1)                                     | 2012-08          | General                                                                       | ✓           |
| [CloudSearch](https://aws.amazon.com/releasenotes/Amazon-CloudSearch?browse=1)                             | 2012-04          | General                                                                       | ✓           |
| [SWF](https://aws.amazon.com/releasenotes/Amazon-SWF?browse=1)                                             | 2012-02          | General                                                                       | ✓           |
| [Storage Gateway](https://aws.amazon.com/releasenotes/AWS-Storage-Gateway?browse=1)                        | 2012-01          | General                                                                       | ✓           |
| [DynamoDB](https://aws.amazon.com/releasenotes/Amazon-DynamoDB?browse=1)                                   | 2012-01          | General                                                                       | ✓           |
| [DirectConnect](https://aws.amazon.com/releasenotes/AWS-Direct-Connect?browse=1)                           | 2011-08          | General                                                                       | ✓           |
| [ElastiCache](https://aws.amazon.com/releasenotes/Amazon-ElastiCache?browse=1)                             | 2011-08          | General                                                                       | ✓           |
| [CloudFormation](https://aws.amazon.com/releasenotes/AWS-CloudFormation?browse=1)                          | 2011-04          | General                                                                       | ✓           |
| [SES](https://aws.amazon.com/releasenotes/Amazon-SES?browse=1)                                             | 2011-01          | General                                                                       | ✓           |
| [Elastic Beanstalk](https://aws.amazon.com/releasenotes/AWS-Elastic-Beanstalk?browse=1)                    | 2010-12          | General                                                                       | ✓           |
| [Route 53](https://aws.amazon.com/releasenotes/Amazon-Route-53?browse=1)                                   | 2010-10          | General                                                                       | ✓           |
| [IAM](https://aws.amazon.com/releasenotes/AWS-Identity-and-Access-Management?browse=1)                     | 2010-09          | General                                                                       | ✓           |
| [SNS](https://aws.amazon.com/releasenotes/Amazon-SNS?browse=1)                                             | 2010-04          | General                                                                       | ✓           |
| [EMR](https://aws.amazon.com/releasenotes/Elastic-MapReduce?browse=1)                                      | 2010-04          | General                                                                       | ✓           |
| [RDS](https://aws.amazon.com/releasenotes/Amazon-RDS?browse=1)                                             | 2009-12          | General                                                                       | ✓           |
| [VPC](https://aws.amazon.com/releasenotes/Amazon-VPC?browse=1)                                             | 2009-08          | General                                                                       | ✓           |
| [Snowball](https://aws.amazon.com/releasenotes/AWS-ImportExport?browse=1)                                  | 2009-05          | General                                                                       | ✓           |
| [CloudWatch](https://aws.amazon.com/releasenotes/CloudWatch?browse=1)                                      | 2009-05          | General                                                                       | ✓           |
| [CloudFront](https://aws.amazon.com/releasenotes/CloudFront?browse=1)                                      | 2008-11          | General                                                                       | ✓           |
| [Fulfillment Web Service](https://aws.amazon.com/releasenotes/Amazon-FWS?browse=1)                         | 2008-03          | Obsolete?                                                                     |             |
| [SimpleDB](https://aws.amazon.com/releasenotes/Amazon-SimpleDB?browse=1)                                   | 2007-12          | ❗[Nearly obsolete](https://forums.aws.amazon.com/thread.jspa?threadID=121711) | ✓           |
| [DevPay](https://aws.amazon.com/releasenotes/DevPay?browse=1)                                              | 2007-12          | General                                                                       |             |
| [Flexible Payments Service](https://aws.amazon.com/releasenotes/Amazon-FPS?browse=1)                       | 2007-08          | Retired                                                                       |             |
| [EC2](https://aws.amazon.com/releasenotes/Amazon-EC2?browse=1)                                             | 2006-08          | General                                                                       | ✓           |
| [SQS](https://aws.amazon.com/releasenotes/Amazon-SQS?browse=1)                                             | 2006-07          | General                                                                       | ✓           |
| [S3](https://aws.amazon.com/releasenotes/Amazon-S3?browse=1)                                               | 2006-03          | General                                                                       | ✓           |
| [Alexa Top Sites](https://aws.amazon.com/alexa-top-sites/)                                                 | 2006-01          | General ❗HTTP-only                                                            |             |
| [Alexa Web Information Service](https://aws.amazon.com/awis/)                                              | 2005-10          | General ❗HTTP-only                                                            |             |

### Compliance

-	Many applications have strict requirements around reliability, security, or data privacy. The [AWS Compliance](https://aws.amazon.com/compliance/) page has details about AWS’s certifications, which include **PCI DSS Level 1**, **SOC 3**, and **ISO 9001**.
-	Security in the cloud is a complex topic, based on a [shared responsibility model](https://aws.amazon.com/compliance/shared-responsibility-model/), where some elements of compliance are provided by AWS, and some are provided by your company.
-	Several third-party vendors offer assistance with compliance, security, and auditing on AWS. If you have substantial needs in these areas, assistance is a good idea.
-	From inside **China**, AWS services outside China [are generally accessible](https://en.greatfire.org/aws.amazon.com), though there are at times breakages in service. There are also AWS services [inside China](https://www.amazonaws.cn/en/).

### Getting Help and Support

-	**Forums:** For many problems, it’s worth searching or asking for help in the [discussion forums](https://forums.aws.amazon.com/index.jspa) to see if it’s a known issue.
-	**Premium support:** AWS offers several levels of [premium support](https://aws.amazon.com/premiumsupport/).
	-	Any small company should probably pay for the cheap “Developer” support as it’s a flat $49/month and it lets you file support tickets with 12 to 24 hour turnaround time.
	-	The higher-level support services are quite expensive — and increase your bill by at least 10%. Many large and effective companies never pay for this level of support. They are usually more helpful for midsize or larger companies needing rapid turnaround on deeper or more perplexing problems.
	-	Keep in mind, a flexible architecture can reduce need for support. You shouldn’t be relying on AWS to solve your problems often. For example, if you can easily re-provision a new server, it may not be urgent to solve a rare kernel-level issue unique to one EC2 instance. If your EBS volumes have recent snapshots, you may be able to restore a volume before support can rectify the issue with the old volume. If your services have an issue in one availability zone, you should in any case be able to rely on a redundant zone or migrate services to another zone.
	-	Larger customers also get access to AWS Enterprise support, with dedicated technical account managers (TAMs) and shorter response time SLAs.
	-	There is definitely some controversy about how useful the paid support is. The support staff don’t always seem to have the information and authority to solve the problems that are brought to their attention. Often your ability to have a problem solved may depend on your relationship with your account rep.
-	**Account manager:** If you are at significant levels of spend (thousands of US dollars plus per month), you may be assigned (or may wish to ask for) a dedicated account manager.
	-	These are a great resource, even if you’re not paying for premium support. Build a good relationship with them and make use of them, for questions, problems, and guidance.
	-	Assign a single point of contact on your company’s side, to avoid confusing or overwhelming them.
-	**Contact:** The main web contact point for AWS is [here](https://aws.amazon.com/contact-us/). Many technical requests can be made via these channels.
-	**Consulting and managed services:** For more hands-on assistance, AWS has established relationships with many [consulting partners](https://aws.amazon.com/partners/consulting/) and [managed service partners](https://aws.amazon.com/partners/msp/). The big consultants won’t be cheap, but depending on your needs, may save you costs long term by helping you set up your architecture more effectively, or offering specific expertise, e.g. security. Managed service providers provide longer-term full-service management of cloud resources.
-	**AWS Professional Services:** AWS provides [consulting services](https://aws.amazon.com/professional-services/) alone or in combination with partners.

### Restrictions and Other Notes

-	🔸Lots of resources in Amazon have [**limits**](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) on them. This is actually helpful, so you don’t incur large costs accidentally. You have to request that quotas be increased by opening support tickets. Some limits are easy to raise, and some are not. (Some of these are noted in sections below.)
-	🔸[**AWS terms of service**](https://aws.amazon.com/service-terms/) are extensive. Much is expected boilerplate, but it does contain important notes and restrictions on each service. In particular, there are restrictions against using many AWS services in **safety-critical systems**. (Those appreciative of legal humor may wish to review clause 57.10.)

### Related Topics

-	[OpenStack](https://www.openstack.org/) is a private cloud alternative to AWS used by large companies that wish to avoid public cloud offerings.

Learning and Career Development
-------------------------------

### Certifications

-	**Certifications:** AWS offers [**certifications**](https://aws.amazon.com/certification/) for IT professionals who want to demonstrate their knowledge.
  -	[Certified Solutions Architect Associate](https://aws.amazon.com/certification/certified-solutions-architect-associate/)
  -	[Certified Developer Associate](https://aws.amazon.com/certification/certified-developer-associate/)
  -	[Certified SysOps Administrator Associate](https://aws.amazon.com/certification/certified-sysops-admin-associate/)
  -	[Certified Solutions Architect Professional](https://aws.amazon.com/certification/certified-solutions-architect-professional/)
  -	[Certified DevOps Engineer Professional](https://aws.amazon.com/certification/certified-devops-engineer-professional/)
-	**Getting certified:** If you’re interested in studying for and getting certifications, [this practical overview](https://gist.github.com/leonardofed/bbf6459ad154ad5215d354f3825435dc) tells you a lot of what you need to know. The official page is [here](https://aws.amazon.com/training/) and there is an [FAQ](https://aws.amazon.com/certification/faqs/).
-	**Do you need a certification?** Especially in consulting companies or when working in key tech roles in large non-tech companies, certifications are important credentials. In others, including in many tech companies and startups, certifications are not common or considered necessary. (In fact, fairly or not, some Silicon Valley hiring managers and engineers see them as a “negative” signal on a resume.)

Managing AWS
------------

### Managing Infrastructure State and Change

A great challenge in using AWS to build complex systems (and with DevOps in general) is to manage infrastructure state effectively over time. In general, this boils down to three broad goals for the state of your infrastructure:

-	**Visibility**: Do you know the state of your infrastructure (what services you are using, and exactly how)? Do you also know when you — and anyone on your team — make changes? Can you detect misconfigurations, problems, and incidents with your service?
-	**Automation**: Can you reconfigure your infrastructure to reproduce past configurations or scale up existing ones without a lot of extra manual work, or requiring knowledge that’s only in someone’s head? Can you respond to incidents easily or automatically?
-	**Flexibility**: Can you improve your configurations and scale up in new ways without significant effort? Can you add more complexity using the same tools? Do you share, review, and improve your configurations within your team?

Much of what we discuss below is really about how to improve the answers to these questions.

There are several approaches to deploying infrastructure with AWS, from the console to complex automation tools, to third-party services, all of which attempt to help achieve visibility, automation, and flexibility.

### AWS Configuration Management

The first way most people experiment with AWS is via its web interface, the AWS Console. But using the Console is a highly manual process, and often works against automation or flexibility.

So if you’re not going to manage your AWS configurations manually, what should you do? Sadly, there are no simple, universal answers — each approach has pros and cons, and the approaches taken by different companies vary widely, and include directly using APIs (and building tooling on top yourself), using command-line tools, and using third-party tools and services.

### AWS Console

-	The [AWS Console](https://aws.amazon.com/console/) lets you control much (but not all) functionality of AWS via a web interface.
-	Ideally, you should only use the AWS Console in a few specific situations:
	-	It’s great for read-only usage. If you’re trying to understand the state of your system, logging in and browsing it is very helpful.
	-	It is also reasonably workable for very small systems and teams (for example, one engineer setting up one server that doesn’t change often).
	-	It can be useful for operations you’re only going to do rarely, like less than once a month (for example, a one-time VPC setup you probably won’t revisit for a year). In this case using the console can be the simplest approach.
-	❗**Think before you use the console:** The AWS Console is convenient, but also the enemy of automation, reproducibility, and team communication. If you’re likely to be making the same change multiple times, avoid the console. Favor some sort of automation, or at least have a path toward automation, as discussed next. Not only does using the console preclude automation, which wastes time later, but it prevents documentation, clarity, and standardization around processes for yourself and your team.

### Command-Line tools

-	The [**aws command-line interface**](https://aws.amazon.com/cli/) (CLI), used via the **aws** command, is the most basic way to save and automate AWS operations.
-	Don’t underestimate its power. It also has the advantage of being well-maintained — it covers a large proportion of all AWS services, and is up to date.
-	In general, whenever you can, prefer the command line to the AWS Console for performing operations.
-	🔹Even in absence of fancier tools, you can **write simple Bash scripts** that invoke *aws* with specific arguments, and check these into Git. This is a primitive but effective way to document operations you’ve performed. It improves automation, allows code review and sharing on a team, and gives others a starting point for future work.
-	🔹For use that is primarily interactive, and not scripted, consider instead using the [**aws-shell**](https://github.com/awslabs/aws-shell) tool from AWS. It is easier to use, with auto-completion and a colorful UI, but still works on the command line. If you’re using [SAWS](https://github.com/donnemartin/saws), a previous version of the program, [you should migrate to aws-shell](https://github.com/donnemartin/saws/issues/68#issuecomment-240067034).

### APIs and SDKs

-	**SDKs** for using AWS APIs are available in most major languages, with [Go](https://github.com/aws/aws-sdk-go), [iOS](https://github.com/aws/aws-sdk-ios), [Java](https://github.com/aws/aws-sdk-java), [JavaScript](https://github.com/aws/aws-sdk-js), [Python](https://github.com/boto/boto3), [Ruby](https://github.com/aws/aws-sdk-ruby), and [PHP](https://github.com/aws/aws-sdk-php) being most heavily used. AWS maintains [a short list](http://docs.aws.amazon.com/AmazonCloudFront/latest/APIReference/AWSLibraries.html), but the [awesome-aws list](https://github.com/donnemartin/awesome-aws#sdks-and-samples) is the most comprehensive and current. Note [support for C++](https://github.com/donnemartin/awesome-aws#c-sdk) is [still new](https://aws.amazon.com/blogs/aws/introducing-the-aws-sdk-for-c/).
-	**Retry logic:** An important aspect to consider whenever using SDKs is error handling; under heavy use, a wide variety of failures, from programming errors to throttling to AWS-related outages or failures, can be expected to occur. SDKs typically implement [**exponential backoff**](https://docs.aws.amazon.com/general/latest/gr/api-retries.html) to address this, but this may need to be understood and adjusted over time for some applications. For example, it is often helpful to alert on some error codes and not on others.
-	❗Don’t use APIs directly. Although AWS documentation includes lots of API details, it’s better to use the SDKs for your preferred language to access APIs. SDKs are more mature, robust, and well-maintained than something you’d write yourself.

### Boto

-	A good way to automate operations in a custom way is [**Boto3**](https://github.com/boto/boto3), also known as the [Amazon SDK for Python](http://aws.amazon.com/sdk-for-python/). [**Boto2**](https://github.com/boto/boto), the previous version of this library, has been in wide use for years, but now there is a newer version with official support from Amazon, so prefer Boto3 for new projects.
-	If you find yourself writing a Bash script with more than one or two CLI commands, you’re probably doing it wrong. Stop, and consider writing a Boto script instead. This has the advantages that you can:
	-	Check return codes easily so success of each step depends on success of past steps.
	-	Grab interesting bits of data from responses, like instance ids or DNS names.
	-	Add useful environment information (for example, tag your instances with git revisions, or inject the latest build identifier into your initialization script).

### General Visibility

-	🔹[**Tagging resources**](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) is an essential practice, especially as organizations grow, to better understand your resource usage. For example, through automation or convention, you can add tags:
	-	For the org or developer that “owns” that resource
	-	For the product that resource supports
	-	To label lifecycles, such as temporary resources or one that should be deprovisioned in the future
	-	To distinguish production-critical infrastructure (e.g. serving systems vs backend pipelines)
	-	To distinguish resources with special security or compliance requirements

Managing Servers and Applications
---------------------------------

### AWS vs Server Configuration

This guide is about AWS, not DevOps or server configuration management in general. But before getting into AWS in detail, it’s worth noting that in addition to the configuration management for your AWS resources, there is the long-standing problem of configuration management for servers themselves.

### Philosophy

-	Heroku’s [**Twelve-Factor App**](http://12factor.net/) principles list some established general best practices for deploying applications.
-	**Pets vs cattle:** Treat servers [like cattle, not pets](https://blog.engineyard.com/2014/pets-vs-cattle). That is, design systems so infrastructure is disposable. It should be minimally worrisome if a server is unexpectedly destroyed.
-	The concept of [**immutable infrastructure**](http://radar.oreilly.com/2015/06/an-introduction-to-immutable-infrastructure.html) is an extension of this idea.
-	Minimize application state on EC2 instances. In general, instances should be able to be killed or die unexpectedly with minimal impact. State that is in your application should quickly move to RDS, S3, DynamoDB, EFS, or other data stores not on that instance. EBS is also an option, though it generally should not be the bootable volume, and EBS will require manual or automated re-mounting.

### Server Configuration Management

-	There is a [large set](https://en.wikipedia.org/wiki/Comparison_of_open-source_configuration_management_software) of open source tools for managing configuration of server instances.
-	These are generally not dependent on any particular cloud infrastructure, and work with any variety of Linux (or in many cases, a variety of operating systems).
-	Leading configuration management tools are [Puppet](https://github.com/puppetlabs/puppet), [Chef](https://github.com/chef/chef), [Ansible](https://github.com/ansible/ansible), and [Saltstack](https://github.com/saltstack/salt). These aren’t the focus of this guide, but we may mention them as they relate to AWS.

### Containers and AWS

-	[Docker](http://blog.scottlowe.org/2014/03/11/a-quick-introduction-to-docker/) and the containerization trend are changing the way many servers and services are deployed in general.
-	Containers are designed as a way to package up your application(s) and all of their dependencies in a known way. When you build a container, you are including every library or binary your application needs, outside of the kernel. A big advantage of this approach is that it’s easy to test and validate a container locally without worrying about some difference between your computer and the servers you deploy on.
-	A consequence of this is that you need fewer AMIs and boot scripts; for most deployments, the only boot script you need is a template that fetches an exported docker image and runs it.
-	Companies that are embracing [microservice architectures](http://martinfowler.com/articles/microservices.html) will often turn to container-based deployments.
-	AWS launched [ECS](https://aws.amazon.com/ecs/) as a service to manage clusters via Docker in late 2014, though many people still deploy Docker directly themselves. See the [ECS section](#ecs) for more details.

### Visibility

-	Store and track instance metadata (such as instance id, availability zone, etc.) and deployment info (application build id, Git revision, etc.) in your logs or reports. The [**instance metadata service**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) can help collect some of the AWS data you’ll need.
-	**Use log management services:** Be sure to set up a way to view and manage logs externally from servers.
	-	Cloud-based services such as [Sumo Logic](https://www.sumologic.com/), [Splunk Cloud](http://www.splunk.com/en_us/cloud.html), [Scalyr](https://www.scalyr.com/), and [Loggly](https://www.loggly.com/) are the easiest to set up and use (and also the most expensive, which may be a factor depending on how much log data you have).
	-	Major open source alternatives include [Elasticsearch](https://github.com/elastic/elasticsearch), [Logstash](https://github.com/elastic/logstash), and [Kibana](https://github.com/elastic/kibana) (the “[Elastic Stack](https://www.elastic.co/webinars/introduction-elk-stack)”) and [Graylog](https://www.graylog.org/).
	-	If you can afford it (you have little data or lots of money) and don’t have special needs, it makes sense to use hosted services whenever possible, since setting up your own scalable log processing systems is notoriously time consuming.
-	**Track and graph statistics:** The AWS Console can show you simple graphs from CloudWatch, you typically will want to track and graph many kinds of statistics, from CloudWatch and your applications. Collect and export helpful metrics everywhere you can (and as long as volume is manageable enough you can afford it).
	-	Services like [Librato](https://www.librato.com/), [KeenIO](https://keen.io/), and [Datadog](https://www.datadoghq.com/) have fancier features or better user interfaces that can save a lot of time. (A more detailed comparison is [here](http://blog.takipi.com/production-tools-guide/visualization-and-metrics/).)
	-	[Grafana](https://github.com/grafana/grafana) and [Graphite](https://github.com/graphite-project/graphite-web) are leading open source options.

### Tips

-	**NTP and accurate time:** If you are not using Amazon Linux (which comes preconfigured), you should confirm your servers [configure NTP correctly](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/set-time.html#configure_ntp), to avoid insidious time drift (which can then cause all sorts of issues, from breaking API calls to misleading logs). This should be part of your automatic configuration for every server. If time has already drifted substantially (generally >1000 seconds), remember NTP won’t shift it back, so you may need to remediate manually (for example, [like this](http://askubuntu.com/questions/254826/how-to-force-a-clock-update-using-ntp) on Ubuntu).
-   **Testing immutable infrastructure:** If you want to be proactive about testing your service’s ability to cope with instance termination or failure, it can be helpful to introduce random instance termination during business hours, which will expose any such issues at a time when engineers are available to identify and fix them. Netflix’s [Simian Army](https://github.com/Netflix/SimianArmy) (specifically, [Chaos Monkey](https://github.com/Netflix/SimianArmy/wiki/Chaos-Monkey)) is a popular tool for this. Alternatively, [chaos-lambda](https://github.com/bbc/chaos-lambda) by the BBC is a lightweight option which runs on AWS [Lambda](#lambda).

Security and IAM
----------------

We cover security basics first, since configuring user accounts is something you usually have to do early on when setting up your system.

### Security and IAM Basics

-	📒 IAM [Homepage](https://aws.amazon.com/iam/) ∙ [User guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html) ∙ [FAQ](https://aws.amazon.com/iam/faqs/)
-	The [AWS Security Blog](https://blogs.aws.amazon.com/security) is one of the best sources of news and information on AWS security.
-	**IAM** is the service you use to manage accounts and permissioning for AWS.
-	Managing security and access control with AWS is critical, so every AWS administrator needs to use and understand IAM, at least at a basic level.
-	IAM manages various kinds of authentication, for both users and for software services that may need to authenticate with AWS, including:
	-	[**Passwords**](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords.html) to log into the console. These are a username and password for real users.
	-	[**Access keys**](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html), which you may use with command-line tools. These are two strings, one the “id”, which is an upper-case alphabetic string of the form 'AXXXXXXXXXXXXXXXXXXX', and the other is the secret, which is a 40-character mixed-case base64-style string. These are often set up for services, not just users.
		-	📜 Access keys that start with AKIA are normal keys. Access keys that start with ASIA are session/temporary keys from STS, and will require an additional "SessionToken" parameter to be sent along with the id and secret.
	-	[**Multi-factor authentication (MFA)**](https://aws.amazon.com/iam/details/mfa/), which is the highly recommended practice of using a keychain fob or smartphone app as a second layer of protection for user authentication.
-	IAM allows complex and fine-grained control of permissions, dividing users into groups, assigning permissions to roles, and so on. There is a [policy language](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html) that can be used to customize security policies in a fine-grained way.
	-	🔸The policy language has a complex and error-prone JSON syntax that’s quite confusing, so unless you are an expert, it is wise to base yours off trusted examples or AWS’ own pre-defined [managed policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html).
-	At the beginning, IAM policy may be very simple, but for large systems, it will grow in complexity, and need to be managed with care.
	-	🔹Make sure one person (perhaps with a backup) in your organization is formally assigned ownership of managing IAM policies, make sure every administrator works with that person to have changes reviewed. This goes a long way to avoiding accidental and serious misconfigurations.
-	It is best to give each user or service the minimum privileges needed to perform their duties. This is the [principle of least privilege](https://en.wikipedia.org/wiki/Principle_of_least_privilege), one of the foundations of good security. Organize all IAM users and groups according to levels of access they need.

### Security and IAM Tips

-	🔹Use IAM to create individual user accounts and **use IAM accounts for all users from the beginning**. This is slightly more work, but not that much.
	-	That way, you define different users, and groups with different levels of privilege (if you want, choose from Amazon’s default suggestions, of administrator, power user, etc.).
	-	This allows credential revocation, which is critical in some situations. If an employee leaves, or a key is compromised, you can revoke credentials with little effort.
	-	You can set up [Active Directory federation](https://blogs.aws.amazon.com/security/post/Tx71TWXXJ3UI14/Enabling-Federation-to-AWS-using-Windows-Active-Directory-ADFS-and-SAML-2-0) to use organizational accounts in AWS.
-	❗**Enable [MFA](https://aws.amazon.com/iam/details/mfa/)** on your account.
	-	You should always use MFA, and the sooner the better — enabling it when you already have many users is extra work.
	-	Unfortunately it can’t be enforced in software, so an administrative policy has to be established.
	-	Most users can use the Google Authenticator app (on [iOS](https://itunes.apple.com/us/app/google-authenticator/id388497605) or [Android](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2)) to support two-factor authentication. For the root account, consider a hardware fob.
-	❗**Turn on CloudTrail:** One of the first things you should do is [enable CloudTrail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-create-a-trail-using-the-console-first-time.html). Even if you are not a security hawk, there is little reason not to do this from the beginning, so you have data on what has been happening in your AWS account should you need that information. You’ll likely also want to set up a [log management service](#visibility) to search and access these logs.
-	🔹**Use IAM roles for EC2:** Rather than assign IAM users to applications like services and then sharing the sensitive credentials, [define and assign roles to EC2 instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html) and have applications retrieve credentials from the [instance metadata](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html).
-	Assign IAM roles by realm — for example, to development, staging, and production. If you’re setting up a role, it should be tied to a specific realm so you have clean separation. This prevents, for example, a development instance from connecting to a production database.
-	**Best practices:** AWS’ [list of best practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html) is worth reading in full up front.
-	**Multiple accounts:** Decide on whether you want to use multiple AWS accounts and [research](https://dab35129f0361dca3159-2fe04d8054667ffada6c4002813eccf0.ssl.cf1.rackcdn.com/downloads/pdfs/Rackspace%20Best%20Practices%20for%20AWS%20-%20Identity%20Managment%20-%20Billing%20-%20Auditing.pdf) how to organize access across them. Factors to consider:
	-	Number of users
	-	Importance of isolation
		-	Resource Limits
		-	Permission granularity
		-	Security
		-	API Limits
	-	Regulatory issues
	-	Workload
	-	Size of infrastructure
	-	Cost of multi-account “overhead”: Internal AWS service management tools may need to be custom built or adapted.
	-	🔹It can help to use separate AWS accounts for independent parts of your infrastructure if you expect a high rate of AWS API calls, since AWS [throttles calls](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#api-request-rate) at the AWS account level.
-	[**Inspector**](https://aws.amazon.com/inspector/) is an automated security assessment service from AWS that helps identify common security risks. This allows validation that you adhere to certain security practices and may help with compliance.
-	[**Trusted Advisor**](https://aws.amazon.com/blogs/aws/trusted-advisor-console-basic/) addresses a variety of best practices, but also offers some basic security checks around IAM usage, security group configurations, and MFA.
-	**Use KMS for managing keys**: AWS offers [KMS](#kms) for securely managing encryption keys, which is usually a far better option than handling key security yourself. See [below](#kms).
-	[**AWS WAF**](https://aws.amazon.com/waf) is a web application firewall to help you protect your applications from common attack patterns.
-	**Security auditing:**
	-	[Security Monkey](https://github.com/Netflix/security_monkey) is an open source tool that is designed to assist with security audits.
	-	🔹**Export and audit security settings:** You can audit security policies simply by exporting settings using AWS APIs, e.g. using a Boto script like [SecConfig.py](https://gist.github.com/jlevy/cce1b44fc24f94599d0a4b3e613cc15d) (from [this 2013 talk](http://www.slideshare.net/AmazonWebServices/intrusion-detection-in-the-cloud-sec402-aws-reinvent-2013)) and then reviewing and monitoring changes manually or automatically.

### Security and IAM Gotchas and Limitations

-	❗**Don’t share user credentials:** It’s remarkably common for first-time AWS users to create one account and one set of credentials (access key or password), and then use them for a while, sharing among engineers and others within a company. This is easy. But *don’t do this*. This is an insecure practice for many reasons, but in particular, if you do, you will have reduced ability to revoke credentials on a per-user or per-service basis (for example, if an employee leaves or a key is compromised), which can lead to serious complications.
-	❗**Instance metadata throttling:** The [instance metadata service](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) has rate limiting on API calls. If you deploy IAM roles widely (as you should!) and have lots of services, you may hit global account limits easily.
	-	One solution is to have code or scripts cache and reuse the credentials locally for a short period (say 2 minutes). For example, they can be put into the ~/.aws/credentials file but must also be refreshed automatically.
	-	But be careful not to cache credentials for too long, as [they expire](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#instance-metadata-security-credentials). (Note the other [dynamic metadata](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html#dynamic-data-categories) also changes over time and should not be cached a long time, either.)
-	🔸Some IAM operations are slower than other API calls (many seconds), since AWS needs to propagate these globally across regions.
-	❗The uptime of IAM’s API has historically been lower than that of the instance metadata API. Be wary of incorporating a dependency on IAM’s API into critical paths or subsystems — for example, if you validate a user’s IAM group membership when they log into an instance and aren’t careful about precaching group membership or maintaining a back door, you might end up locking users out altogether when the API isn’t available.

S3
--

### S3 Basics

-	📒 [Homepage](https://aws.amazon.com/s3/) ∙ [Developer guide](https://docs.aws.amazon.com/AmazonS3/latest/dev/Welcome.html) ∙ [FAQ](https://aws.amazon.com/s3/faqs/) ∙ [Pricing](https://aws.amazon.com/s3/pricing/)
-	**S3** (Simple Storage Service) is AWS’ standard cloud storage service, offering file (opaque “blob”) storage of arbitrary numbers of files of almost any size, from 0 to 5 TB. (Prior to [2011](https://aws.amazon.com/releasenotes/Amazon-S3/1917932037969964) the maximum size was 5 GB; larger sizes are now well supported via [multipart support](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html).)
-	Items, or **objects**, are placed into named **buckets** stored with names which are usually called **keys**. The main content is the **value**.
-	Objects are created, deleted, or updated. Large objects can be streamed, but you cannot access or modify parts of a value; you need to update the whole object.
-	Every object also has [**metadata**](https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html), which includes arbitrary key-value pairs, and is used in a way similar to HTTP headers. Some metadata is system-defined, some are significant when serving HTTP content from buckets or CloudFront, and you can also define arbitrary metadata for your own use.
-	**S3 URIs:** Although often bucket and key names are provided in APIs individually, it’s also common practice to write an S3 location in the form 's3://bucket-name/path/to/key' (where the key here is 'path/to/key'). (You’ll also see 's3n://' and 's3a://' prefixes [in Hadoop systems](https://wiki.apache.org/hadoop/AmazonS3).)
-	**S3 vs Glacier, EBS, and EFS:** AWS offers many storage services, and several besides S3 offer file-type abstractions. [Glacier](#glacier) is for cheaper and infrequently accessed archival storage. [EBS](#ebs), unlike S3, allows random access to file contents via a traditional filesystem, but can only be attached to one EC2 instance at a time. [EFS](#efs) is a network filesystem many instances can connect to, but at higher cost. See the [comparison table](#storage-durability-availability-and-price).

### S3 Tips

-	For most practical purposes, you can consider S3 capacity unlimited, both in total size of files and number of objects.
-	**Bucket naming:** Buckets are chosen from a global namespace (across all regions, even though S3 itself stores data in [whichever S3 region](https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region) you select), so you’ll find many bucket names are already taken. Creating a bucket means taking ownership of the name until you delete it. Bucket names have [a few restrictions](https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html) on them.
	-	Bucket names can be used as part of the hostname when accessing the bucket or its contents, like `<bucket_name>.s3-us-east-1.amazonaws.com`, as long as the name is [DNS compliant](http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html).
	-	A common practice is to use the company name acronym or abbreviation to prefix (or suffix, if you prefer DNS-style hierarchy) all bucket names (but please, don’t use a check on this as a security measure — this is highly insecure and easily circumvented!).
	-	🔸Bucket names with '.' (periods) in them [can cause certificate mismatches](https://forums.aws.amazon.com/thread.jspa?threadID=169951) when used with SSL. Use '-' instead, since this then conforms with both SSL expectations and is DNS compliant.
-	The number of objects in a bucket is essentially unlimited. Customers routinely have millions of objects.
-	**Versioning:** S3 has [optional versioning support](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectVersioning.html), so that all versions of objects are preserved on a bucket. This is mostly useful if you want an archive of changes or the ability to back out mistakes (it has none of the features of full version control systems like Git).
-	**Durability:** Durability of S3 is extremely high, since internally it keeps several replicas. If you don’t delete it by accident, you can count on S3 not losing your data. (AWS offers the seemingly improbable durability rate of [99.999999999%](https://aws.amazon.com/s3/faqs/#How_durable_is_Amazon_S3), but this is a mathematical calculation based on independent failure rates and levels of replication — not a true probability estimate. Either way, S3 has had [a very good record](https://www.quora.com/Has-Amazon-S3-ever-lost-data-permanently) of durability.) Note this is *much* higher durability than EBS! If durability is less important for your application, you can use [S3 Reduced Redundancy Storage](https://aws.amazon.com/s3/reduced-redundancy/), which lowers the cost per GB, as well as the redundancy.
-	💸**S3 pricing** depends on [storage, requests, and transfer](https://aws.amazon.com/s3/pricing/).
	-	For transfer, putting data into AWS is free, but you’ll pay on the way out. Transfer from S3 to EC2 in the *same region* is free. Transfer to other regions or the Internet in general is not free.
	-	Deletes are free.
-	**S3 Reduced Redundancy and Infrequent Access:** Most people use the Standard storage class in S3, but there are other storage classes with lower cost:
	-	[Reduced Redundancy Storage (RRS)](https://aws.amazon.com/s3/reduced-redundancy/) has lower durability (99.99%, so just four nines). That is, there’s a small chance you’ll lose data. For some data sets where data has value in a statistical way (losing say half a percent of your objects isn’t a big deal) this is a reasonable trade-off.
	-	[Infrequent Access (IA)](https://aws.amazon.com/s3/storage-classes/#Infrequent_Access) lets you get cheaper storage in exchange for more expensive access. This is great for archives like logs you already processed, but might want to look at later. To get an idea of the cost savings when using Infrequent Access (IA), you can use this [S3 Infrequent Access Calculator](http://www.gulamshakir.com/apps/s3calc/index.html).
	-	[Glacier](#glacier) is a third alternative discussed as a separate product.
	-	See [the comparison table](#storage-durability-availability-and-price).
-	⏱**Performance:** Maximizing S3 performance means improving overall throughput in terms of bandwidth and number of operations per second.
	-	S3 is highly scalable, so in principle you can get arbitrarily high throughput. (A good example of this is [S3DistCp](https://docs.aws.amazon.com/ElasticMapReduce/latest/ReleaseGuide/UsingEMR_s3distcp.html).)
	-	But usually you are constrained by the pipe between the source and S3 and/or the level of concurrency of operations.
	-	Throughput is of course highest from within AWS to S3, and between EC2 instances and S3 buckets that are in the same region.
	-	Bandwidth from EC2 depends on instance type. See the “Network Performance” column at [ec2instances.info](http://www.ec2instances.info/).
	-	Throughput of many objects is extremely high when data is accessed in a distributed way, from many EC2 instances. It’s possible to read or write objects from S3 from hundreds or thousands of instances at once.
	-	However, throughput is very limited when objects accessed sequentially from a single instance. Individual operations take many milliseconds, and bandwidth to and from instances is limited.
	-	Therefore, to perform large numbers of operations, it’s necessary to use multiple worker threads and connections on individual instances, and for larger jobs, multiple EC2 instances as well.
	-	**Multi-part uploads:** For large objects you want to take advantage of the multi-part uploading capabilities (starting with minimum chunk sizes of 5 MB).
	-	**Large downloads:** Also you can download chunks of a single large object in parallel by exploiting the HTTP GET range-header capability.
	-	🔸**List pagination:** Listing contents happens at 1000 responses per request, so for buckets with many millions of objects listings will take time.
	-	❗**Key prefixes:** In addition, latency on operations is [highly dependent on prefix similarities among key names](http://docs.aws.amazon.com/AmazonS3/latest/dev/request-rate-perf-considerations.html). If you have need for high volumes of operations, it is essential to consider naming schemes with more randomness early in the key name (first 6 or 8 characters) in order to avoid “hot spots”.
		-	We list this as a major gotcha since it’s often painful to do large-scale renames.
		-	🔸Note that sadly, the advice about random key names goes against having a consistent layout with common prefixes to manage data lifecycles in an automated way.
	-	For data outside AWS, [**DirectConnect**](https://aws.amazon.com/directconnect/) and [**S3 Transfer Acceleration**](https://aws.amazon.com/blogs/aws/aws-storage-update-amazon-s3-transfer-acceleration-larger-snowballs-in-more-regions/) can help. For S3 Transfer Acceleration, you [pay](https://aws.amazon.com/s3/pricing/) about the equivalent of 1-2 months of storage for the transfer in either direction for using nearer endpoints.
-	**Command-line applications:** There are a few ways to use S3 from the command line:
	-	Originally, [**s3cmd**](https://github.com/s3tools/s3cmd) was the best tool for the job. It’s still used heavily by many.
	-	The regular [**aws**](https://aws.amazon.com/cli/) command-line interface now supports S3 well, and is useful for most situations.
	-	[**s4cmd**](https://github.com/bloomreach/s4cmd) is a replacement, with greater emphasis on performance via multi-threading, which is helpful for large files and large sets of files, and also offers Unix-like globbing support.
-	**GUI applications:** You may prefer a GUI, or wish to support GUI access for less technical users. Some options:
	-	The [AWS Console](https://aws.amazon.com/console/) does offer a graphical way to use S3. Use caution telling non-technical people to use it, however, since without tight permissions, it offers access to many other AWS features.
	-	[Transmit](https://panic.com/transmit/) is a good option on OS X for basic use cases. Uses legacy AWS2 signatures for authentication and is missing multipart upload support.
	-	[Cyberduck](https://cyberduck.io/) is a good option on OS X and Windows with support for multipart uploads, ACLs, versioning, lifecycle configuration, storage classes and server side encryption (SSE-S3 and SSE-KMS).
-	**S3 and CloudFront:** S3 is tightly integrated with the CloudFront CDN. See the CloudFront section for more information, as well as [S3 transfer acceleration](https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html).
-	**Static website hosting:**
	-	S3 has a [static website hosting option](http://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html) that is simply a setting that enables configurable HTTP index and error pages and [HTTP redirect support](http://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html) to [public content](http://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteAccessPermissionsReqd.html) in S3. It’s a simple way to host static assets or a fully static website.
	-	Consider using CloudFront in front of most or all assets:
		-	Like any CDN, CloudFront improves performance significantly.
		-	🔸SSL is only supported on the built-in amazonaws.com domain for S3. S3 supports serving these sites through a [custom domain](http://docs.aws.amazon.com/AmazonS3/latest/dev/website-hosting-custom-domain-walkthrough.html), but [not over SSL on a custom domain](http://stackoverflow.com/questions/11201316/how-to-configure-ssl-for-amazon-s3-bucket). However, [CloudFront allows you to serve a custom domain over https](http://docs.aws.amazon.com/acm/latest/userguide/gs-cf.html). Amazon provides free SNI SSL/TLS certificates via Amazon Certificate Manager. [SNI does not work on very outdated browsers/operating systems](https://en.wikipedia.org/wiki/Server_Name_Indication#Support). Alternatively, you can provide your own certificate to use on CloudFront to support all browsers/operating systems.
		-	🔸If you are including resources across domains, such as fonts inside CSS files, you may need to [configure CORS](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html) for the bucket serving those resources.
		-	Since pretty much everything is moving to SSL nowadays, and you likely want control over the domain, you probably want to set up CloudFront with your own certificate in front of S3 (and to ignore the [AWS example on this](http://docs.aws.amazon.com/AmazonS3/latest/dev/website-hosting-custom-domain-walkthrough.html) as it is non-SSL only).
		-	That said, if you do, you’ll need to think through invalidation or updates on CloudFront. You may wish to [include versions or hashes in filenames](https://abhishek-tiwari.com/post/CloudFront-design-patterns-and-best-practices) so invalidation is not necessary.
-	**Permissions:**
	-	🔸It’s important to manage permissions sensibly on S3 if you have data sensitivities, as fixing this later can be a difficult task if you have a lot of assets and internal users.
	-	🔹Do create new buckets if you have different data sensitivities, as this is much less error prone than complex permissions rules.
	-	🔹If data is for administrators only, like log data, put it in a bucket that only administrators can access.
	-	💸Limit individual user (or IAM role) access to S3 to the minimal required and catalog the “approved” locations. Otherwise, S3 tends to become the dumping ground where people put data to random locations that are not cleaned up for years, costing you big bucks.
-	**Data lifecycles:**
	-	When managing data, the understanding the lifecycle of the data is as important as understanding the data itself. When putting data into a bucket, think about its lifecycle — its end of life, not just its beginning.
	-	🔹In general, data with different expiration policies should be stored under separate prefixes at the top level. For example, some voluminous logs might need to be deleted automatically monthly, while other data is critical and should never be deleted. Having the former in a separate bucket or at least a separate folder is wise.
	-	🔸Thinking about this up front will save you pain. It’s very hard to clean up large collections of files created by many engineers with varying lifecycles and no coherent organization.
	-	Alternatively you can set a lifecycle policy to archive old data to Glacier. [Be careful](https://alestic.com/2012/12/s3-glacier-costs/) with archiving large numbers of small objects to Glacier, since it may actually cost more.
	-	There is also a storage class called [**Infrequent Access**](https://aws.amazon.com/s3/storage-classes/#Infrequent_Access) that has the same durability as Standard S3, but is discounted per GB. It is suitable for objects that are infrequently accessed.
-	**Data consistency:** Understanding [data consistency](https://docs.aws.amazon.com/AmazonS3/latest/dev/Introduction.html#ConsistencyModel) is critical for any use of S3 where there are multiple producers and consumers of data.
	-	Creation of individual objects in S3 is atomic. You’ll never upload a file and have another client see only half the file.
	-	Also, if you create a new object, you’ll be able to read it instantly, which is called **read-after-write consistency**.
		-	Well, with the additional caveat that if you do a read on an object before it exists, then create it, [you get eventual consistency](https://docs.aws.amazon.com/AmazonS3/latest/dev/Introduction.html#ConsistencyModel) (not read-after-write).
	-	If you overwrite or delete an object, you’re only guaranteed eventual consistency.
	-	🔹Note that [until 2015](https://aws.amazon.com/about-aws/whats-new/2015/08/amazon-s3-introduces-new-usability-enhancements/), 'us-standard' region had had a weaker eventual consistency model, and the other (newer) regions were read-after-write. This was finally corrected — but watch for many old blogs mentioning this!
	-	In practice, “eventual consistency” usually means within seconds, but expect rare cases of minutes or [hours](http://www.stackdriver.com/eventual-consistency-really-eventual/).
-	**S3 as a filesystem:**
	-	In general S3’s APIs have inherent limitations that make S3 hard to use directly as a POSIX-style filesystem while still preserving S3’s own object format. For example, appending to a file requires rewriting, which cripples performance, and atomic rename of directories, mutual exclusion on opening files, and hardlinks are impossible.
	-	[s3fs](https://github.com/s3fs-fuse/s3fs-fuse) is a FUSE filesystem that goes ahead and tries anyway, but it has performance limitations and surprises for these reasons.
	-	[Riofs](https://github.com/skoobe/riofs) (C) and [Goofys](https://github.com/kahing/goofys) (Go) are more recent efforts that attempt adopt a different data storage format to address those issues, and so are likely improvements on s3fs.
	-	[S3QL](https://github.com/s3ql/s3ql) ([discussion](https://news.ycombinator.com/item?id=10150684)) is a Python implementation that offers data de-duplication, snap-shotting, and encryption, but only one client at a time.
	-	[ObjectiveFS](https://objectivefs.com/) ([discussion](https://news.ycombinator.com/item?id=10117506)) is a commercial solution that supports filesystem features and concurrent clients.
-	If you are primarily using a VPC, consider setting up a [VPC Endpoint](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-endpoints.html) for S3 in order to allow your VPC-hosted resources to easily access it without the need for extra network configuration or hops.
-	**Cross-region replication:** S3 has [a feature](https://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html) for replicating a bucket between one region and a another. Note that S3 is already highly replicated within one region, so usually this isn’t necessary for durability, but it could be useful for compliance (geographically distributed data storage), lower latency, or as a strategy to reduce region-to-region bandwidth costs by mirroring heavily used data in a second region.
-	**IPv4 vs IPv6:** For a long time S3 only supported IPv4 at the default endpoint `https://BUCKET.s3.amazonaws.com`. However, [as of Aug 11, 2016](https://aws.amazon.com/blogs/aws/now-available-ipv6-support-for-amazon-s3/) it now supports both IPv4 & IPv6! To use both, you have to [enable dualstack](http://docs.aws.amazon.com/AmazonS3/latest/dev/dual-stack-endpoints.html) either in your preferred API client or by directly using this url scheme `https://BUCKET.s3.dualstack.REGION.amazonaws.com`.

### S3 Gotchas and Limitations

-	🔸For many years, there was a notorious [**100-bucket limit**](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_s3) per account, which could not be raised and caused many companies significant pain. As of 2015, you can [request increases](https://aws.amazon.com/about-aws/whats-new/2015/08/amazon-s3-introduces-new-usability-enhancements/). You can ask to increase the limit, but it will still be capped (generally below ~1000 per account).
-	🔸Be careful not to make implicit assumptions about transactionality or sequencing of updates to objects. Never assume that if you modify a sequence of objects, the clients will see the same modifications in the same sequence, or if you upload a whole bunch of files, that they will all appear at once to all clients.
-	🔸S3 has an [**SLA**](https://aws.amazon.com/s3/sla/) with 99.9% uptime. If you use S3 heavily, you’ll inevitably see occasional error accessing or storing data as disks or other infrastructure fail. Availability is usually restored in seconds or minutes. Although availability is not extremely high, as mentioned above, durability is excellent.
-	🔸After uploading, any change that you make to the object causes a full rewrite of the object, so avoid appending-like behavior with regular files.
-	🔸Eventual data consistency, as discussed above, can be surprising sometimes. If S3 suffers from internal replication issues, an object may be visible from a subset of the machines, depending on which S3 endpoint they hit. Those usually resolve within seconds; however, we’ve seen isolated cases when the issue lingered for 20-30 hours.
-	🔸**MD5s and multi-part uploads:** In S3, the [ETag header in S3](http://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonResponseHeaders.html) is a hash on the object. And in many cases, it is the MD5 hash. However, this [is not the case in general](http://stackoverflow.com/questions/12186993/what-is-the-algorithm-to-compute-the-amazon-s3-etag-for-a-file-larger-than-5gb) when you use multi-part uploads. One workaround is to compute MD5s yourself and put them in a custom header (such as is done by [s4cmd](https://github.com/bloomreach/s4cmd)).
-	🔸**US Standard region:** Previously, the us-east-1 region (also known as the US Standard region) was replicated across coasts, which led to greater variability of latency. Effective Jun 19, 2015 this is [no longer the case](https://forums.aws.amazon.com/ann.jspa?annID=3112). All Amazon S3 Regions now support read-after-write consistency. Amazon S3 also renamed the US Standard Region to the US East (N. Virginia) Region to be consistent with AWS regional naming conventions.

### Storage Durability, Availability, and Price

As an illustration of comparative features and price, the table below gives S3 Standard, RRS, IA, in comparison with [Glacier](#glacier), [EBS](#ebs), and [EFS](#efs), using **Virginia region** as of **August 2016**.

|                 | Durability (per year) | Availability “designed” | Availability SLA | Storage (per TB per month)                                                                                               | GET or retrieve (per million) | Write or archive (per million) |
|-----------------|-----------------------|-------------------------|------------------|--------------------------------------------------------------------------------------------------------------------------|-------------------------------|--------------------------------|
| **Glacier**     | Eleven 9s             | Sloooow                 | –                | $7                                                                                                                       | $50                           | $50                            |
| **S3 IA**       | Eleven 9s             | 99.9%                   | **99%**          | $12.50                                                                                                                   | $1                            | $10                            |
| **S3 RRS**      | **99.99%**            | 99.99%                  | 99.9%            | $24                                                                                                                      | $0.40                         | $5                             |
| **S3 Standard** | Eleven 9s             | 99.99%                  | 99.9%            | $30                                                                                                                      | $0.40                         | $5                             |
| **EBS**         | **99.8%**             | Unstated                | 99.95%           | $25/$45/**$100**/$125+ ([sc1/st1/**gp2**/io1](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html)\) |                               |                                |
| **EFS**         | “High”                | “High”                  | –                | $300                                                                                                                     |                               |                                |

Especially notable items are in **boldface**. Sources: [S3 pricing](https://aws.amazon.com/s3/pricing/), [S3 SLA](https://aws.amazon.com/s3/sla/), [S3 FAQ](https://aws.amazon.com/s3/faqs/), [RRS info](https://aws.amazon.com/s3/reduced-redundancy/), [Glacier pricing](https://aws.amazon.com/glacier/pricing/), [EBS availability and durability](https://aws.amazon.com/ebs/details/#Amazon_EBS_Availability_and_Durability), [EBS pricing](https://aws.amazon.com/ebs/pricing/), [EFS pricing](https://aws.amazon.com/efs/pricing/), [EC2 SLA](https://aws.amazon.com/ec2/sla/)

EC2
---

### EC2 Basics

-	📒 [Homepage](https://aws.amazon.com/ec2/) ∙ [Documentation](https://aws.amazon.com/documentation/ec2/) ∙ [FAQ](https://aws.amazon.com/ec2/faqs/) ∙ [Pricing](https://aws.amazon.com/ec2/pricing/) (see also [ec2instances.info](http://www.ec2instances.info/)\)
-	**EC2** (Elastic Compute Cloud) is AWS’ offering of the most fundamental piece of cloud computing: A [virtual private server](https://en.wikipedia.org/wiki/Virtual_private_server). These “instances” and can run [most Linux, BSD, and Windows operating systems](https://aws.amazon.com/ec2/faqs/#What_operating_system_environments_are_supported). Internally, they use [Xen](https://en.wikipedia.org/wiki/Xen) virtualization.
-	The term “EC2” is sometimes used to refer to the servers themselves, but technically refers more broadly to a whole collection of supporting services, too, like load balancing (CLBs/ALBs), IP addresses (EIPs), bootable images (AMIs), security groups, and network drives (EBS) (which we discuss individually in this guide).

### EC2 Alternatives and Lock-In

-	Running EC2 is akin to running a set of physical servers, as long as you don’t do automatic scaling or tooled cluster setup. If you just run a set of static instances, migrating to another VPS or dedicated server provider should not be too hard.
-	🚪**Alternatives to EC2:** The direct alternatives are Google Cloud, Microsoft Azure, Rackspace, DigitalOcean and other VPS providers, some of which offer similar API for setting up and removing instances. (See the comparisons [above](#when-to-use-aws).)
-	**Should you use Amazon Linux?** AWS encourages use of their own [Amazon Linux](https://aws.amazon.com/amazon-linux-ami/), which is evolved from from [Red Hat Enterprise Linux (RHEL)](https://en.wikipedia.org/wiki/Red_Hat_Enterprise_Linux) and [CentOS](https://en.wikipedia.org/wiki/CentOS). It’s used by many, but [others are skeptical](https://www.exratione.com/2014/08/do-not-use-amazon-linux/). Whatever you do, think this decision through carefully. It’s true Amazon Linux is heavily tested and better supported in the unlikely event you have deeper issues with OS and virtualization on EC2. But in general, many companies do just fine using a standard, non-Amazon Linux distribution, such as Ubuntu or CentOS. Using a standard Linux distribution means you have an exactly replicable environment should you use another hosting provider instead of (or in addition to) AWS. It’s also helpful if you wish to test deployments on local developer machines running the same standard Linux distribution (a practice that’s getting more common with Docker, too, and not currently possible with Amazon Linux).
-	**EC2 costs:** See the [section on this](#ec2-cost-management).

### EC2 Tips

-	🔹**Picking regions:** When you first set up, consider which [regions](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions) you want to use first. Many people in North America just automatically set up in the us-east-1 (N. Virginia) region, which is the default, but it’s worth considering if this is best up front. For example, you might find it preferable to start in us-west-1 (N. California) or us-west-2 (Oregon) if you’re in California and latency matters. Some services [are not available in all regions](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/). Baseline costs also [vary by region](https://aws.amazon.com/ec2/pricing/), up to 10-30% (generally lowest in us-east-1).
-	**Instance types:** EC2 instances come in many types, corresponding to the capabilities of the virtual machine in CPU architecture and speed, RAM, disk sizes and types (SSD or magnetic), and network bandwidth.
	-	Selecting instance types is complex since there are so many types. Additionally, there are different generations, released [over the years](https://aws.amazon.com/blogs/aws/ec2-instance-history/).
	-	🔹Use the list at [**ec2instances.info**](http://www.ec2instances.info/) to review costs and features. [Amazon’s own list](https://aws.amazon.com/ec2/instance-types/) of instance types is hard to use, and doesn’t list features and price together, which makes it doubly difficult.
	-	Prices vary a lot, so use [**ec2instances.info**](http://www.ec2instances.info/) to determine the set of machines that meet your needs and [**ec2price.com**](http://ec2price.com/) to find the cheapest type in the region you’re working in. Depending on the timing and region, it might be much cheaper to rent an instance with *more* memory or CPU than the bare minimum.
-	[**Dedicated instances**](https://aws.amazon.com/ec2/purchasing-options/dedicated-instances/) and [**dedicated hosts**](https://aws.amazon.com/ec2/dedicated-hosts/) are assigned hardware, instead of usual virtual instances. They are more expensive than virtual instances but [can be preferable](https://aws.amazon.com/ec2/dedicated-hosts/) for performance, compliance, or licensing reasons.
-	**32 bit vs 64 bit:** A few micro, small, and medium instances are still available to use as 32-bit architecture. You’ll be using 64-bit EC2 (“amd64”) instances nowadays, though smaller instances still support 32 bit (“i386”). Use 64 bit unless you have legacy constraints or other good reasons to use 32.
-	**HVM vs PV:** There are two kinds of virtualization technology used by EC2, [hardware virtual machine (HVM) and paravirtual (PV)](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/virtualization_types.html). Historically, PV was the usual type, but [now HVM is becoming the standard](https://www.opswat.com/blog/aws-2015-why-you-need-switch-pv-hvm). If you want to use the newest instance types, you must use HVM. See the [instance type matrix](https://aws.amazon.com/amazon-linux-ami/instance-type-matrix/) for details.
-	**Operating system:** To use EC2, you’ll need to pick a base operating system. It can be Windows or Linux, such as Ubuntu or [Amazon Linux](https://aws.amazon.com/amazon-linux-ami/). You do this with AMIs, which are covered in more detail in their own section below.
-	**Limits:** You can’t create arbitrary numbers of instances. Default limits on numbers of EC2 instances per account vary by instance type, as described in [this list](http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2).
-	❗**Use termination protection:** For any instances that are important and long-lived (in particular, aren't part of auto-scaling), [enable termination protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination). This is an important line of defense against user mistakes, such as accidentally terminating many instances instead of just one due to human error.
-	**SSH key management:**
	-	When you start an instance, you need to have at least one [ssh key pair](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) set up, to bootstrap, i.e., allow you to ssh in the first time.
	-	Aside from bootstrapping, you should manage keys yourself on the instances, assigning individual keys to individual users or services as appropriate.
	-	Avoid reusing the original boot keys except by administrators when creating new instances.
	-	How to avoid sharing keys; how to add individual ssh keys for individual users.
-	**GPU support:** You can rent GPU-enabled instances on EC2. There are [two instance types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html). Both sport an NVIDIA card (K520, 1536 CUDA cores and M2050, 448 CUDA cores).

### EC2 Gotchas and Limitations

-	❗Never use ssh passwords. Just don’t do it; they are too insecure, and consequences of compromise too severe. Use keys instead. [Read up on this](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2) and fully disable ssh password access to your ssh server by making sure 'PasswordAuthentication no' is in your /etc/ssh/sshd_config file. If you’re careful about managing ssh private keys everywhere they are stored, it is a major improvement on security over password-based authentication.
-	🔸For all [newer instance types](https://aws.amazon.com/amazon-linux-ami/instance-type-matrix/), when selecting the AMI to use, be sure you select the HVM AMI, or it just won’t work.
-	❗When creating an instance and using a new ssh key pair, [make sure the ssh key permissions are correct](http://stackoverflow.com/questions/1454629/aws-ssh-access-permission-denied-publickey-issue).
-	🔸Sometimes certain EC2 instances can get scheduled for retirement by AWS due to “detected degradation of the underlying hardware,” in which case you are given a couple of weeks to migrate to a new instance
 	-	If your instance root device is an EBS volume, you can typically stop and then start the instance which moves it to healthy host hardware, giving you control over timing of this event. Note however that you will lose any instance store volume data ([ephemeral drives](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html)) if your instance type has instance store volumes.
 	-   The instance public IP (if it has one) will likely change unless you're using Elastic IPs. This could be a problem if other systems depend on the IP address.
-	🔸Periodically you may find that your server or load balancer is receiving traffic for (presumably) a previous EC2 server that was running at the same IP address that you are handed out now (this may not matter, or it can be fixed by migrating to another new instance).
-	❗If the EC2 API itself is a critical dependency of your infrastructure (e.g. for automated server replacement, custom scaling algorithms, etc.) and you are running at a large scale or making many EC2 API calls, make sure that you understand when they might fail (calls to it are [rate limited](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#api-request-rate) and the limits are not published and subject to change) and code and test against that possibility.
-	❗Many newer EC2 instance types are EBS-only. Make sure to factor in EBS performance and costs when planning to use them.

AMIs
----

### AMI Basics

-	📒 [User guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html)
-	**AMIs** (Amazon Machine Images) are immutable images that are used to launch preconfigured EC2 instances. They come in both public and private flavors. Access to public AMIs is either freely available (shared/community AMIs) or bought and sold in the [**AWS Marketplace**](http://aws.amazon.com/marketplace).
-	Many operating system vendors publish ready-to-use base AMIs. For Ubuntu, see the [Ubuntu AMI Finder](https://cloud-images.ubuntu.com/locator/ec2/). Amazon of course has [AMIs for Amazon Linux](https://aws.amazon.com/amazon-linux-ami/).

### AMI Tips

-	AMIs are built independently based on how they will be deployed. You must select AMIs that match your deployment when using them or creating them:
	-	EBS or instance store
	-	PV or HVM [virtualization types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/virtualization_types.html)
	-	32 bit (“i386”) vs 64 bit (“amd64”) architecture
-	As discussed above, modern deployments will usually be with **64-bit EBS-backed HVM**.
-	You can create your own custom AMI by [snapshotting the state](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html) of an EC2 instance that you have modified.
-	[AMIs backed by EBS storage](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device) have the necessary image data loaded into the EBS volume itself and don’t require an extra pull from S3, which results in EBS-backed instances coming up much faster than instance storage-backed ones.
-	**AMIs are per region**, so you must look up AMIs in your region, or copy your AMIs between regions with the [AMI Copy](https://aws.amazon.com/about-aws/whats-new/2013/03/12/announcing-ami-copy-for-amazon-ec2/) feature.
-	As with other AWS resources, it’s wise to [use tags](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) to version AMIs and manage their lifecycle.
-	If you create your own AMIs, there is always some tension in choosing how much installation and configuration you want to “bake” into them.
	-	Baking less into your AMIs (for example, just a configuration management client that downloads, installs, and configures software on new EC2 instances when they are launched) allows you to minimize time spent automating AMI creation and managing the AMI lifecycle (you will likely be able to use fewer AMIs and will probably not need to update them as frequently), but results in longer waits before new instances are ready for use and results in a higher chance of launch-time installation or configuration failures.
	-	Baking more into your AMIs (for example, pre-installing but not fully configuring common software along with a configuration management client that loads configuration settings at launch time) results in a faster launch time and fewer opportunities for your software installation and configuration to break at instance launch time but increases the need for you to create and manage a robust AMI creation pipeline.
	-	Baking even more into your AMIs (for example, installing all required software as well and potentially also environment-specific configuration information) results in fast launch times and a much lower chance of instance launch-time failures but (without additional re-deployment and re-configuration considerations) can require time consuming AMI updates in order to update software or configuration as well as more complex AMI creation automation processes.
-	Which option you favor depends on how quickly you need to scale up capacity, and size and maturity of your team and product.
	-	When instances boot fast, auto-scaled services require less spare capacity built in and can more quickly scale up in response to sudden increases in load. When setting up a service with autoscaling, consider baking more into your AMIs and backing them with the EBS storage option.
	-	As systems become larger, it common to have more complex AMI management, such as a multi-stage AMI creation process in which few (ideally one) common base AMIs are infrequently regenerated when components that are common to all deployed services are updated and then a more frequently run “service-level” AMI generation process that includes installation and possibly configuration of application-specific software.
-	More thinking on AMI creation strategies [here](http://techblog.netflix.com/2013/03/ami-creation-with-aminator.html).
-	Use tools like [Packer](https://packer.io/) to simplify and automate AMI creation.

### AMI Gotchas and Limitations

-	By [default](https://aws.amazon.com/amazon-linux-ami/faqs/#lock), instances based on Amazon Linux AMIs are configured point to 'latest' versions of packages in Amazon’s package repository. This means that the package versions that get installed are not locked and it is possible for changes, including breaking ones, to appear when applying updates in the future. If you bake your AMIs with updates already applied, this is unlikely to cause problems in running services whose instances are based on those AMIs – breaks will appear at the earlier AMI-baking stage of your build process, and will need to be fixed or worked around before new AMIs can be generated. There is a “lock on launch” feature that allows you to configure Amazon Linux instances to target the repository of a particular major version of the Amazon Linux AMI, reducing the likelihood that breaks caused by Amazon-initiated package version changes will occur at package install time but at the cost of not having updated packages get automatically installed by future update runs. Pairing use of the “lock on launch” feature with a process to advance the Amazon Linux AMI at your discretion can give you tighter control over update behaviors and timings.

Auto Scaling
------------

### Auto Scaling Basics

-	📒 [Homepage](https://aws.amazon.com/autoscaling/) ∙ [User guide](http://docs.aws.amazon.com/autoscaling/latest/userguide/) ∙ [FAQ](https://aws.amazon.com/ec2/faqs/#Auto_Scaling) ∙ [Pricing](https://aws.amazon.com/autoscaling/pricing/) at no additional charge
-	[**Auto Scaling Groups (ASGs)**](https://aws.amazon.com/autoscaling/) are used to control the number of instances in a service, reducing manual effort to provision or deprovision EC2 instances.
-	They can be configured, through [Scaling Policies](http://docs.aws.amazon.com/autoscaling/latest/userguide/policy_creating.html),” to automatically increase or decrease instance counts based on metrics like CPU utilization, or based on a schedule.
-	There are three common ways of using ASGs - dynamic (automatically adjust instance count based on metrics for things like CPU utilization), static (maintain a specific instance count at all times), scheduled (maintain different instance counts at different times of day or on days of the week).
-	💸ASGs [have no additional charge](https://aws.amazon.com/autoscaling/pricing/) themselves; you pay for underlying EC2 and CloudWatch services.

### Auto Scaling Tips

-	💸 Better matching your cluster size to your current resource requirements through use of ASGs can result in significant cost savings for many types of workloads.
-	Pairing ASGs with CLBs is a common pattern used to deal with changes in the amount of traffic a service receives.
-	Dynamic Auto Scaling is easiest to use with stateless, horizontally scalable services.
-	Even if you are not using ASGs to dynamically increase or decrease instance counts, you should seriously consider maintaining all instances inside of ASGs – given a target instance count, the ASG will work to ensure that number of instances running is equal to that target, replacing instances for you if they die or are marked as being unhealthy. This results in consistent capacity and better stability for your service.
-	Autoscalers can be [configured to terminate](http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html) instances that a CLB or ALB has marked as being unhealthy.

### Auto Scaling Gotchas and Limitations

-	By default, ASGs will kill instances that the EC2 instance manager considers to be unresponsive. It is possible for instances whose CPU is completely saturated for minutes at a time to appear to be unresponsive, causing an ASG with the default '[ReplaceUnhealthy](http://docs.aws.amazon.com/autoscaling/latest/userguide/as-suspend-resume-processes.html#process-types)' setting turned on to replace them. When instances that are managed by ASGs are expected to consistently run with very high CPU, consider deactivating this setting. If you do so, however, detecting and killing unhealthy nodes will become your responsibility.

EBS
---

### EBS Basics

-	📒 [Homepage](https://aws.amazon.com/ebs/) ∙ [User guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html) ∙ [FAQ](https://aws.amazon.com/ebs/faqs/) ∙ [Pricing](https://aws.amazon.com/ebs/pricing/)
-	**EBS** (Elastic Block Store) provides block level storage. That is, it offers storage volumes that can be attached as filesystems, like traditional network drives.
-	EBS volumes can only be attached to one EC2 instance at a time. In contrast, EFS can be shared but has a much higher price point ([a comparison](http://stackoverflow.com/questions/29575877/aws-efs-vs-ebs-vs-s3-differences-when-to-use)).

### EBS Tips

-	⏱**RAID:** Use [RAID drives](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/raid-config.html) for [increased performance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSPerformance.html).
-	⏱A worthy read is AWS’ [post on EBS IO characteristics](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html) as well as their [performance tips](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSPerformance.html#d0e86148).
-	⏱One can [provision IOPS](http://aws.amazon.com/ebs/details/) (that is, pay for a specific level of I/O operations per second) to ensure a particular level of performance for a disk.
-	⏱A single EBS volume allows 10k IOPS max. To get the maximum performance out of an EBS volume, it has to be of a maximum size and attached to an EBS-optimized EC2 instance.
-	A standard block size for an EBS volume is 16kb.

### EBS Gotchas and Limitations

-	❗EBS durability is reasonably good for a regular hardware drive (annual failure rate of [between 0.1% - 0.2%](http://aws.amazon.com/ebs/details/#availabilityanddurability)). On the other hand, that is very poor if you don’t have backups! By contrast, S3 durability is extremely high. *If you care about your data, back it up to S3 with snapshots.*
-	🔸EBS has an [**SLA**](http://aws.amazon.com/ec2/sla/) with **99.95%** uptime. See notes on high availability below.
-	❗EBS volumes have a [**volume type**](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) indicating the physical storage type. The types called “standard” (**st1** or **sc1**) are actually old spinning-platter disks, which deliver only hundreds of IOPS — not what you want unless you’re really trying to cut costs. Modern SSD-based **gp2** or **io1** are typically the options you want.

EFS
---

-	📒 [Homepage](https://aws.amazon.com/efs/) ∙ [User guide](http://docs.aws.amazon.com/efs/latest/ug) ∙ [FAQ](https://aws.amazon.com/efs/faq/) ∙ [Pricing](https://aws.amazon.com/efs/pricing/)

### EFS Basics

-	🐥**EFS** is Amazon’s new (general release 2016) network filesystem.
-	It is similar to [EBS](#ebs) in that it is a network-attached drive, but it [differs in important ways](https://aws.amazon.com/efs/details/#When_to_Use_Amazon_EFS_vs._Amazon_EBS):
	-	EFS can be attached to many instances (up to thousands), while EBS can only be attached to one drive. It does this via [NFSv4](https://en.wikipedia.org/wiki/Network_File_System).
	-	EFS can offer higher throughput (multiple gigabytes per second) and better durability and availability than EBS (see [the comparison table](#storage-durability-availability-and-price)), but with higher latency.
	-	EFS cannot be used as a boot volume or in certain other ways EBS can.
	-	EFS costs much more than EBS (up to [three times as much](#storage-durability-availability-and-price)).

🚧 [*Please help expand this incomplete section.*](CONTRIBUTING.md)

Load Balancers
--------------

### Load Balancer Basics

-	AWS has 2 load balancing products - “Classic Load Balancers” (CLBs) and “Application Load Balancers” (ALBs).
-	Before the introduction of ALBs, “Classic Load Balancers” were known as “Elastic Load Balancers” (ELBs), so older documentation, tooling, and blog posts may still reference “ELBs”.
-	CLBs have been around since 2009 while ALBs are a recent (2016) addition to AWS.
-	CLBs support TCP and HTTP load balancing while ALBs support HTTP load balancing only.
-	Both can optionally handle termination for a single SSL certificate.
-	Both can optionally perform active health checks of instances and remove them from the destination pool if they become unhealthy.
-	CLBs don't support complex / rule-based routing, while ALBs support a (currently small) set of rule-based routing features.
-	CLBs can only forward traffic to a single globally configured port on destination instances, while ALBs can forward to ports that are configured on a per-instance basis, better supporting routing to services on shared clusters with dynamic port assignment (like ECS or Mesos).
-	CLBs are supported in EC2 Classic as well as in VPCs while ALBs are supported in VPCs only.

### Load Balancer Tips

-	If you don’t have opinions on your load balancing up front, and don’t have complex load balancing needs like application-specific routing of requests, it’s reasonable just to use an CLB or ALB for load balancing instead.
-	Even if you don’t want to think about load balancing at all, because your architecture is so simple (say, just one server), put a load balancer in front of it anyway. This gives you more flexibility when upgrading, since you won’t have to change any DNS settings that will be slow to propagate, and also it lets you do a few things like terminate SSL more easily.
-	**CLBs and ALBs have many IPs:** Internally, an AWS load balancer is simply a collection of individual software load balancers hosted within EC2, with DNS load balancing traffic among them. The pool can contain many IPs, at least one per availability zone, and depending on traffic levels. They also support SSL termination, which is very convenient.
-	**Scaling:** CLBs and ALBs can scale to very high throughput, but scaling up is not instantaneous. If you’re expecting to be hit with a lot of traffic suddenly, it can make sense to load test them so they scale up in advance. You can also [contact Amazon](http://aws.amazon.com/articles/1636185810492479) and have them “pre-warm” the load balancer.
-	**Client IPs:** In general, if servers want to know true client IP addresses, load balancers must forward this information somehow. CLBs add the standard [X-Forwarded-For](https://en.wikipedia.org/wiki/X-Forwarded-For) header. When using an CLB as an HTTP load balancer, it’s possible to get the client’s IP address from this.
-	**Using load balancers when deploying:** One common pattern is to swap instances in the load balancer after spinning up a new stack with your latest version, keep old stack running for one or two hours, and either flip back to old stack in case of problems or tear it down.

### Load Balancer Gotchas and Limitations

-	❗CLBs and ALBs have **no fixed external IP** that all clients see. For most consumer apps this doesn’t matter, but enterprise customers of yours may want this. IPs will be different for each user, and will vary unpredictably for a single client over time (within the standard [EC2 IP ranges](http://docs.aws.amazon.com/general/latest/gr/aws-ip-ranges.html)). And similarly, never resolve an CLB name to an IP and put it as the value of an A record — it will work for a while, then break!
-	❗Some web clients or reverse proxies cache DNS lookups for a long time, which is problematic for CLBs and ALBs, since they change their IPs. This means after a few minutes, hours, or days, your client will stop working, unless you disable DNS caching. Watch out for [Java’s settings](http://docs.oracle.com/javase/8/docs/api/java/net/InetAddress.html) and be sure to [adjust them properly](http://docs.aws.amazon.com/AWSSdkDocsJava/latest/DeveloperGuide/java-dg-jvm-ttl.html). Another example is nginx as a reverse proxy, which [resolves backends only at start-up](https://www.jethrocarr.com/2013/11/02/nginx-reverse-proxies-and-dns-resolution/).
-	❗It’s not unheard of for IPs to be recycled between customers without a long cool-off period. So as a client, if you cache an IP and are not using SSL (to verify the server), you might get not just errors, but responses from completely different services or companies!
-	🔸As an operator of a service behind an CLB or ALB, the latter phenomenon means you can also see puzzling or erroneous requests by clients of other companies. This is most common with clients using back-end APIs (since web browsers typically cache for a limited period).
-	❗CLBs and ALBs take time to scale up, it does not handle sudden spikes in traffic well. Therefore, if you anticipate a spike, you need to “pre-warm” the load balancer by gradually sending an increasing amount of traffic.
-	❗Tune your healthchecks carefully — if you are too aggressive about deciding when to remove an instance and conservative about adding it back into the pool, the service that your load balancer is fronting may become inaccessible for seconds or minutes at a time. Be extra careful about this when an autoscaler is configured to terminate instances that are marked as being unhealthy by a managed load balancer.

CLB
---

### CLB Basics

-	📒 [Homepage](https://aws.amazon.com/elasticloadbalancing/classicloadbalancer/) ∙ [User guide](https://aws.amazon.com/elasticloadbalancing/classicloadbalancer/developer-resources/) ∙ [FAQ](https://aws.amazon.com/elasticloadbalancing/classicloadbalancer/faqs/) ∙ [Pricing](https://aws.amazon.com/elasticloadbalancing/classicloadbalancer/pricing/)
- Classic Load Balancers, formerly known as Elastic Load Balancers, are HTTP and TCP load balancers that are managed and scaled for you by Amazon.

### CLB Tips

-	**Best practices:** [This article](http://aws.amazon.com/articles/1636185810492479) is a must-read if you use CLBs heavily, and has a lot more detail.

### CLB Gotchas and Limitations

-	In general, CLBs are not as “smart” as some load balancers, and don’t have fancy features or fine-grained control a traditional hardware load balancer would offer. For most common cases involving sessionless apps or cookie-based sessions over HTTP, or SSL termination, they work well.
-       🔸By default, CLBs will refuse to route traffic from a load balancer in one Availability Zone (AZ) to a backend instance in another. This [will cause 503s](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ts-elb-error-message.html#ts-elb-errorcodes-http503) if the last instance in an AZ becomes unavailable, even if there are healthy instances in other zones. If you’re running fewer than two backend instances per AZ, you almost certainly want to [enable cross-zone load balancing](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html#enable-cross-zone).
-	Complex rules for directing traffic are not supported. For example, you can’t direct traffic based on a regular expression in the URL, like [HAProxy](http://www.haproxy.org/) offers.
-	**Apex DNS names:** Once upon a time, you couldn’t assign an CLB to an apex DNS record (i.e. example.com instead of foo.example.com) because it needed to be an A record instead of a CNAME. This is now possible with a Route 53 alias record directly pointing to the load balancer.
-	🔸CLBs use [HTTP keep-alives](https://en.wikipedia.org/wiki/HTTP_persistent_connection) on the internal side. This can cause an unexpected side effect: Requests from different clients, each in their own TCP connection on the external side, can end up on the same TCP connection on the internal side. Never assume that multiple requests on the same TCP connection are from the same client!

ALB
---

### ALB Basics

-	📒 [Homepage](https://aws.amazon.com/elasticloadbalancing/applicationloadbalancer/) ∙ [User guide](https://aws.amazon.com/elasticloadbalancing/applicationloadbalancer/developer-resources/) ∙ [FAQ](https://aws.amazon.com/elasticloadbalancing/applicationloadbalancer/faqs/) ∙ [Pricing](https://aws.amazon.com/elasticloadbalancing/applicationloadbalancer/pricing/)
-	🐥**Websockets and HTTP/2** are [now supported](https://aws.amazon.com/blogs/aws/new-aws-application-load-balancer/).
-	Prior to the Application Load Balancer, you were advised to use TCP instead of HTTP as the protocol to make it work (as described [here](http://www.quora.com/When-will-Amazon-ELB-offer-SPDY-support)) and use [the obscure but useful Proxy Protocol](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/enable-proxy-protocol.html) ([more on this](https://chrislea.com/2014/03/20/using-proxy-protocol-nginx/)) to pass client IPs over a TCP load balancer.

### ALB Tips

-	Use ALBs to route to services that are hosted on shared clusters with dynamic port assignment (like ECS or Mesos).
-	ALBs support HTTP path-based routing (send HTTP requests for “/api/*” -> {target-group-1}, “/blog/*” -> {target group 2}).

### ALB Gotchas and Limitations

-	ALBs support HTTP routing but not port-based TCP routing.
-	ALBs do not (yet) support routing based on HTTP “Host” header or HTTP verb.
-	Instances in the ALB's target groups have to either have a single, fixed healthcheck port (“EC2 instance”-level healthcheck) or the healthcheck port for a target has to be the same as its application port (“Application instance”-level healthcheck) - you can't configure a per-target healthcheck port that is different than the application port.
-	ALBs are VPC-only (they are not available in EC2 Classic)
-	In a target group, if there is no healthy target, all requests are routed to all targets. For example, if you point a listener at a target group containing a single service that has a long initialization phase (during which the health checks would fail), requests will reach the service while it is still starting up.

Elastic IPs
-----------

### Elastic IP Basics

-	📒 [Documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) ∙ [FAQ](https://aws.amazon.com/ec2/faqs/#Elastic_IP) ∙ [Pricing](https://aws.amazon.com/ec2/pricing/#Elastic_IP_Addresses)
-	**Elastic IPs** are static IP addresses you can rent from AWS to assign to EC2 instances.

### Elastic IP Tips

-	🔹**Prefer load balancers to elastic IPs:** For single-instance deployments, you could just assign elastic IP to an instance, give that IP a DNS name, and consider that your deployment. Most of the time, you should provision a [load balancer](#load-balancers) instead:
	-	It’s easy to add and remove instances from load balancers. It's also quicker to add or remove instances from a load balancer than to reassign an elastic IP.
	-	It’s more convenient to point DNS records to load balancers, instead of pointing them to specific IPs you manage manually. They can also be Route 53 aliases, which are easier to change and manage.
	-	But in some situations, you do need to manage and fix IP addresses of EC2 instances, for example if a customer needs a fixed IP. These situations require elastic IPs.
-	Elastic IPs are limited to 5 per account. It’s possible to [request more](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-elastic-ips-ec2-classic).
-	If an Elastic IP is not attached to an active resource there is a small [hourly fee](https://aws.amazon.com/ec2/pricing/#Elastic_IP_Addresses).
-	Elastic IPs are [no extra charge](https://aws.amazon.com/ec2/pricing/#Elastic_IP_Addresses) as long as you’re using them. They have a (small) cost when not in use, which is a mechanism to prevent people from squatting on excessive numbers of IP addresses.

### Elastic IP Gotchas and Limitations

-	🔸There is [officially no way](https://forums.aws.amazon.com/thread.jspa?threadID=171550) to allocate a contiguous block of IP addresses, something you may desire when giving IPs to external users. Though when allocating at once, you may get lucky and have some be part of the same CIDR block.

Glacier
-------

### Glacier Basics

-	📒 [Homepage](https://aws.amazon.com/glacier/) ∙ [Developer guide](http://docs.aws.amazon.com/amazonglacier/latest/dev/) ∙ [FAQ](https://aws.amazon.com/glacier/faqs/) ∙ [Pricing](https://aws.amazon.com/glacier/pricing/)
-	**Glacier** is a lower-cost alternative to S3 when data is infrequently accessed, such as for archival purposes.
-	It’s only useful for data that is rarely accessed. It generally takes [3-5 hours](https://aws.amazon.com/glacier/faqs/#dataretrievals) to fulfill a retrieval request.
-	AWS [has not officially revealed](https://en.wikipedia.org/wiki/Amazon_Glacier#Storage) the storage media used by Glacier; it may be low-spin hard drives or even tapes.

### Glacier Tips

-	You can physically [ship](https://aws.amazon.com/blogs/aws/send-us-that-data/) your data to Amazon to put on Glacier on a USB or eSATA HDD.

### Glacier Gotchas and Limitations

-	🔸Getting files off Glacier is glacially slow (typically 3-5 hours or more).
-	🔸Due to a fixed overhead per file (you pay per PUT or GET operation), uploading and downloading many small files on/to Glacier might be very expensive. There is also a 32k storage overhead per file. Hence it’s a good idea is to archive files before upload.
-	🔸Glacier’s pricing policy is reportedly pretty complicated: “Glacier data retrievals are priced based on the peak hourly retrieval capacity used within a calendar month.” Some more info can be found [here](https://medium.com/@karppinen/how-i-ended-up-paying-150-for-a-single-60gb-download-from-amazon-glacier-6cb77b288c3e#.wjl4dbgza) and [here](https://news.ycombinator.com/item?id=10921365).

RDS
---

### RDS Basics

-	📒 [Homepage](https://aws.amazon.com/rds/) ∙ [User guide](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/) ∙ [FAQ](https://aws.amazon.com/rds/faqs/) ∙ [Pricing](https://aws.amazon.com/rds/pricing/)(see also [ec2instances.info/rds/](http://www.ec2instances.info/rds/)\)
-	**RDS** is a managed relational database service, allowing you to deploy and scale databases more easily. It supports Amazon Aurora, Oracle, Microsoft SQL Server, PostgreSQL, MySQL and MariaDB.

### RDS Tips

-	If you’re looking for the managed convenience of RDS for MongoDB, this isn’t offered by AWS directly, but you may wish to consider a provider such as [**mLab**](https://mlab.com/).
-	MySQL RDS allows access to [binary logs](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.Concepts.MySQL.html#USER_LogAccess.MySQL.BinaryFormat).
-	🔸**MySQL vs MariaDB vs Aurora:** If you prefer a MySQL-style database but are starting something new, you probably should consider Aurora and MariaDB as well. **Aurora** has increased availability and is the next-generation solution. That said, Aurora [may not be](http://blog.takipi.com/benchmarking-aurora-vs-mysql-is-amazons-new-db-really-5x-faster/) as fast relative to MySQL as is sometimes reported, and is more complex to administer. **MariaDB**, the modern [community fork](https://en.wikipedia.org/wiki/MariaDB) of MySQL, [likely now has the edge over MySQL](http://cloudacademy.com/blog/mariadb-vs-mysql-aws-rds/) for many purposes and is supported by RDS.
-	🔸**Aurora:** Aurora is based on MySQL 5.6. If you are planning to migrate to Aurora from an existing MySQL database, avoiding any MySQL features from 5.7 or later will ease the transition. The easiest migration path to Aurora is restoring a database snapshot from MySQL 5.6. The next easiest method is restoring a dump from a MySQL-compatible database such as MariaDB. If neither of those methods are options, Amazon offers a [fee-based data migration service](http://docs.aws.amazon.com/dms/latest/userguide/Welcome.html).

### RDS Gotchas and Limitations

-	⏱RDS instances run on EBS volumes, and hence are constrained by the EBS performance.
-	🔸Verify what database features you need, as not everything you might want is available on RDS. For example, if you are using Postgres, check the list of [supported features and extensions](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#SQLServer.Concepts.General.FeatureSupport). If the features you need aren’t supported by RDS, you’ll have to deploy your database yourself.
-	🔸**DB migration to RDS:** While importing your database into RDS ensure you take into consideration the maintenance window settings. If a backup is running at the same time, your import can take a considerable longer time than you would have expected. 


DynamoDB
--------

### DynamoDB Basics

-	📒 [Homepage](https://aws.amazon.com/dynamodb/) ∙ [Developer guide](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/) ∙ [FAQ](https://aws.amazon.com/dynamodb/faqs/) ∙ [Pricing](https://aws.amazon.com/dynamodb/pricing/)
-	**DynamoDB** is a [NoSQL](https://en.wikipedia.org/wiki/NoSQL) database with focuses on speed, flexibility, and scalability.
-	DynamoDB is priced on a combination of throughput and storage.

### DynamoDB Alternatives and Lock-in

-	⛓ Unlike the technologies behind many other Amazon products, DynamoDB is a proprietary AWS product with no interface-compatible alternative available as an open source project. If you tightly couple your application to its API and featureset, it will take significant effort to replace.
-	The most commonly used alternative to DynamoDB is [Cassandra](http://cassandra.apache.org/).

### DynamoDB Tips

-	There is a [local version](https://aws.amazon.com/blogs/aws/dynamodb-local-for-desktop-development/) of DynamoDB provided for developer use.
-	[DynamoDB Streams](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html) provides an ordered stream of changes to a table. Use it to replicate, back up, or drive events off of data
-	DynamoDB can be used [as a simple locking service](https://gist.github.com/ryandotsmith/c95fd21fab91b0823328).

### DynamoDB Gotchas and Limitations

-	🔸 DynamoDB doesn’t provide an easy way to bulk-load data (it is possible through [Data Pipeline](http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-importexport-ddb-part1.html), and this has some [unfortunate consequences](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GuidelinesForTables.html#GuidelinesForTables.AvoidExcessivePTIncreases). Since you need to use the regular service APIs to update existing or create new rows, it is common to temporarily turn up a destination table’s write throughput to speed import. But when the table’s write capacity is increased, DynamoDB may do an irreversible split of the partitions underlying the table, spreading the total table capacity evenly across the new generation of tables. Later, if the capacity is reduced, the capacity for each partition is also reduced but the total number of partitions is not, leaving less capacity for each partition. This leaves the table in a state where it much easier for hotspots to overwhelm individual partitions.
-	It is important to make sure that DynamoDB [resource limits](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html#limits-data-types) are compatible with your dataset and workload. For example, the maximum size value that can be added to a DynamoDB table is 400 KB (larger items can be stored in S3 and a URL stored in DynamoDB).
-	DynamoDB does [not allow](https://forums.aws.amazon.com/thread.jspa?threadID=90137) an empty string as a valid attribute value. The most common work-around is to use a substitute value instead of leaving the field empty.

ECS
---

### ECS Basics

-	📒 [Homepage](https://aws.amazon.com/ecs/) ∙ [Developer guide](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/) ∙ [FAQ](https://aws.amazon.com/ecs/faqs/) ∙ [Pricing](https://aws.amazon.com/ecs/pricing/)
-	**ECS** (EC2 Container Service) is a relatively new service (launched end of 2014) that manages clusters of services deployed via Docker.
-	See the [Containers and AWS](#containers-and-aws) section for more context on containers.
-	ECS is growing in adoption, especially for companies that embrace microservices.
-	Deploying Docker directly in EC2 yourself is another common approach to using Docker on AWS. Using ECS is not required, and ECS does not (yet) seem to be the predominant way many companies are using Docker on AWS.
-	It’s also possible to use [Elastic Beanstalk with Docker](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_docker.html), which is reasonable if you’re already using Elastic Beanstalk.
-	Using Docker may change the way your services are deployed within EC2 or Elastic Beanstalk, but it does not radically change how most other services are used.
-	[ECR](https://aws.amazon.com/ecr/) (EC2 Container Registry) is Amazon’s managed Docker registry service. While simpler than running your own registry, it is missing some features that might be desired by some users:
	-	Doesn’t support cross-region replication of images.
		-	If you want fast fleet-wide pulls of large images, you’ll need to push your image into a region-local registry.
	-	Doesn’t support custom domains / certificates.
-	A container's health is monitored via [CLB](#clb) or [ALB](#alb). Those can also be used to address a containerized service. When using an ALB you do not need to handle port contention (i.e. services exposing the same port on the same host) since an ALB’s target groups can be associated with ECS-based services directly.

### ECS Tips

-	[This blog from Convox](https://convox.com/blog/ecs-challenges/) (and [commentary](https://news.ycombinator.com/item?id=11598058)) lists a number of common challenges with ECS as of early 2016.

### ECS Alternatives and Lock-in

-	[Kubernetes](https://kubernetes.io): Extensive container platform. Available as a hosted solution on Google Cloud (https://cloud.google.com/container-engine/) and AWS (https://tectonic.com/).
-	[Nomad](https://www.nomadproject.io/): Orchestrator/Scheduler, tightly integrated in the Hashicorp stack (Consul, Vault, etc).

🚧 [*Please help expand this incomplete section.*](CONTRIBUTING.md)

Lambda
------

### Lambda Basics

-	📒 [Homepage](https://aws.amazon.com/lambda/) ∙ [Developer guide](http://docs.aws.amazon.com/lambda/latest/dg/) ∙ [FAQ](https://aws.amazon.com/lambda/faqs/) ∙ [Pricing](https://aws.amazon.com/lambda/pricing/)
-	**Lambda** is a relatively new service (launched at end of 2014) that offers a different type of compute abstraction: A user-defined function that can perform a small operation, where AWS manages provisioning and scheduling how it is run.

### Lambda Tips

-	**What does “serverless” mean?** This idea of using Lambda for application logic has grown to be called **serverless** since you don't explicitly manage any server instances, as you would with EC2. This term is a bit confusing since the functions themselves do of course run on servers managed by AWS. [Serverless, Inc.](http://serverless.com/) also uses this word for the name of their company and [their own open source framework](https://github.com/serverless/serverless), but the term is usually meant more generally.
-	The release of Lambda and [API Gateway](#api-gateway) in 2015 triggered a startlingly rapid adoption in 2016, with many people writing about [serverless architectures](http://martinfowler.com/articles/serverless.html) in which many applications traditionally solved by managing EC2 servers can be built without explicitly managing servers at all.
-	**Frameworks:** [Several frameworks](https://github.com/anaibol/awesome-serverless#frameworks) for building and managing serverless deployment are emerging.
-	The [Awesome Serverless](https://github.com/anaibol/awesome-serverless) list gives a good set of examples of the relatively new set of tools and frameworks around Lambda.
-	The [**Serverless framework**](https://github.com/serverless/serverless) is a leading new approach designed to help group and manage Lambda functions. It’s approaching version 1 as of August 2016) and is popular among a small number of users.

### Lambda Alternatives and Lock-in

-	🚪Other clouds offer similar services with different names, including [Google Cloud Functions](https://cloud.google.com/functions/), [Azure Functions](https://azure.microsoft.com/en-us/services/functions/), and [IBM OpenWhisk](http://www.ibm.com/cloud-computing/bluemix/openwhisk/).

### Lambda Gotchas and Limitations

-	🔸Lambda is a new technology. As of mid 2016, only a few companies are using it for large-scale production applications.
-	🔸Managing lots of Lambda functions is a workflow challenge, and tooling to manage Lambda deployments is still immature.
-	🔸AWS’ official workflow around managing function [versioning and aliases](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html) is painful.

🚧 [*Please help expand this incomplete section.*](CONTRIBUTING.md)

API Gateway
-----------

### API Gateway Basics

-	📒 [Homepage](https://aws.amazon.com/api-gateway/) ∙ [Developer guide](http://docs.aws.amazon.com/apigateway/latest/developerguide/) ∙ [FAQ](https://aws.amazon.com/api-gateway/faqs/) ∙ [Pricing](https://aws.amazon.com/api-gateway/pricing/)
-	**API Gateway** provides a scalable, secured front-end for service APIs, and can work with Lambda, Elastic Beanstalk, or regular EC2 services.
-	It allows “serverless” deployment of applications built with Lambda.
-	🔸Switching over deployments after upgrades can be tricky. There are no built-in mechanisms to have a single domain name migrate from one API gateway to another one. So it may be necessary to build an additional layer in front (even another API Gateway) to allow smooth migration from one deployment to another.

### API Gateway Gotchas and Limitations

-	🔸API Gateway only supports encrypted (https) endpoints, and does not support unencrypted HTTP. (This is probably a good thing.)
-	🔸API Gateway endpoints are public — there is no mechanism to build private endpoints, e.g. for internal use.

🚧 [*Please help expand this incomplete section.*](CONTRIBUTING.md)

Route 53
--------

### Route 53 Basics

-	📒 [Homepage](https://aws.amazon.com/route53/) ∙ [Developer guide](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/) ∙ [FAQ](https://aws.amazon.com/route53/faqs/) ∙ [Pricing](https://aws.amazon.com/route53/pricing/)
-	**Route 53** is AWS’ DNS service.

### Route 53 Alternatives and Lock-In

-	Historically, AWS was slow to penetrate the DNS market (as it is often driven by perceived reliability and long-term vendor relationships) but Route 53 has matured and [is becoming the standard option](https://www.datanyze.com/market-share/dns/) for many companies. Route 53 is cheap by historic DNS standards, as it has a fairly large global network with geographic DNS and other formerly “premium” features. It’s convenient if you are already using AWS.
-	⛓Generally you don’t get locked into a DNS provider for simple use cases, but increasingly become tied in once you use specific features like geographic routing or Route 53’s alias records.
-	🚪Many alternative DNS providers exist, ranging from long-standing premium brands like [UltraDNS](https://www.neustar.biz/services/dns-services) and [Dyn](http://dyn.com/managed-dns/) to less well known, more modestly priced brands like [DNSMadeEasy](http://www.dnsmadeeasy.com/). Most DNS experts will tell you that the market is opaque enough that reliability and performance don’t really correlate well with price.
-	⏱Route 53 is usually somewhere in the middle of the pack on performance tests, e.g. the [SolveDNS reports](http://www.solvedns.com/dns-comparison/).

### Route 53 Tips

-	🔹Know about Route 53’s “alias” records:
	-	Route 53 supports all the standard DNS record types, but note that [**alias resource record sets**](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-choosing-alias-non-alias.html) are not standard part of DNS, but a specific Route 53 feature. (It’s available from other DNS providers too, but each provider has a different name for it.)
	-	Aliases are like an internal name (a bit like a CNAME) that is resolved internally on the server side. For example, traditionally you could have a CNAME to the DNS name of a CLB or ALB, but it’s often better to make an alias to the same load balancer. The effect is the same, but in the latter case, externally, all a client sees is the target the record points to.
	-	It’s often wise to use alias record as an alternative to CNAMEs, since they can be updated instantly with an API call, without worrying about DNS propagation.
	-	You can use them for CLBs/ALBs or any other resource where AWS supports it.
	-	Somewhat confusingly, you can have CNAME and A aliases, depending on the type of the target.
	-	Because aliases are extensions to regular DNS records, if exported, the output [zone file](https://en.wikipedia.org/wiki/Zone_file) will have additional non-standard “ALIAS” lines in it.
-	Take advantage of AWS Route 53 latency based routing. This means that your users around the globe are automatically directed to the nearest AWS region where you are running in terms of having the shortest latency.

CloudFormation
--------------

### CloudFormation Basics

-	📒 [Homepage](https://aws.amazon.com/cloudformation/) ∙ [Developer guide](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/) ∙ [FAQ](https://aws.amazon.com/cloudformation/faqs/) ∙ [Pricing](https://aws.amazon.com/cloudformation/pricing/) at no additional charge
-	**CloudFormation** offers mechanisms to create and manage entire configurations of many types of AWS resources, using a JSON-based templating language.
-	💸CloudFormation itself has [no additional charge](https://aws.amazon.com/cloudformation/pricing/) itself; you pay for the underlying resources.

### CloudFormation Alternatives and Lock-In

-	Hashicorp’s [Terraform](https://www.terraform.io/intro/vs/cloudformation.html) is a third-party alternative.

### CloudFormation Tips

-	[Troposphere](https://github.com/cloudtools/troposphere) is a Python library that makes it much easier to create CloudFormation templates.
-	🔹Until [2016](https://aws.amazon.com/about-aws/whats-new/2016/09/aws-cloudformation-introduces-yaml-template-support-and-cross-stack-references/), CloudFormation used only an awkward JSON format that makes both reading and debugging difficult. To use it effectively typically involved building additional tooling, including converting it to YAML, but now [this is supported directly](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-formats.html).

### CloudFormation Gotchas and Limitations

-	🔸CloudFormation is useful but complex and with a variety of pain points. Many companies find alternate solutions, and many companies use it, but only with significant additional tooling.
-	🔸CloudFormation can be very slow, especially for items like CloudFront distributions.
-	🔸It’s hard to assemble good CloudFormation configurations from existing state. AWS does [offer a trick to do this](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-using-cloudformer.html), but it’s very clumsy.
-	🔸Many users don’t use CloudFormation at all because of its limitations, or because they find other solutions preferable. Often there are other ways to accomplish the same goals, such as local scripts (Boto, Bash, Ansible, etc.) you manage yourself that build infrastructure, or Docker-based solutions ([Convox](https://convox.com/), etc.).

VPCs, Network Security, and Security Groups
-------------------------------------------

### VPC Basics

-	📒 [Homepage](https://aws.amazon.com/vpc/) ∙ [User guide](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide) ∙ [FAQ](https://aws.amazon.com/vpc/faqs/) ∙ [Security groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html) ∙ [Pricing](https://aws.amazon.com/vpc/pricing/)
-	**VPC** (Virtual Private Cloud) is the virtualized networking layer of your AWS systems.
-	Most AWS users should have a basic understanding of VPC concepts, but few need to get into all the details. VPC configurations can be trivial or extremely complex, depending on the extent of your network and security needs.
-	All modern AWS accounts (those created [after 2013-12-04](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html)) are “EC2-VPC” accounts that support VPCs, and all instances will be in a default VPC. Older accounts may still be using “EC2-Classic” mode. Some features don’t work without VPCs, so you probably will want to [migrate](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html).

### VPC and Network Security Tips

-	❗**Security groups** are your first line of defense for your servers. Be extremely restrictive of what ports are open to all incoming connections. In general, if you use CLBs, ALBs or other load balancing, the only ports that need to be open to incoming traffic would be port 22 and whatever port your application uses.
-	**Port hygiene:** A good habit is to pick unique ports within an unusual range for each different kind of production service. For example, your web fronted might use 3010, your backend services 3020 and 3021, and your Postgres instances the usual 5432. Then make sure you have fine-grained security groups for each set of servers. This makes you disciplined about listing out your services, but also is more error-proof. For example, should you accidentally have an extra Apache server running on the default port 80 on a backend server, it will not be exposed.
-	**Migrating from Classic**: For migrating from older EC2-Classic deployments to modern EC2-VPC setup, [this article](http://blog.kiip.me/engineering/ec2-to-vpc-executing-a-zero-downtime-migration/) may be of help.
-	For basic AWS use, one default VPC may be sufficient. But as you scale up, you should consider mapping out network topology more thoroughly. A good overview of best practices is [here](http://blog.flux7.com/blogs/aws/vpc-best-configuration-practices).
-	Consider controlling access to your private AWS resources through a [VPN](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpn-connections.html).
	-	You get better visibility into and control of connection and connection attempts.
	-	You expose a smaller surface area for attack compared to exposing separate (potentially authenticated) services over the public internet.
		-	e.g. A bug in the YAML parser used by the Ruby on Rails admin site is much less serious when the admin site is only visible to the private network and accessed through VPN.
	-	Another common pattern (especially as deployments get larger, security or regulatory requirements get more stringent, or team sizes increase) is to provide a [bastion host](https://www.pandastrike.com/posts/20141113-bastion-hosts) behind a VPN through which all SSH connections need to transit.

### VPC and Network Security Gotchas and Limitations

-	🔸Security groups are not shared across data centers, so if you have infrastructure in multiple data centers, you should make sure your configuration/deployment tools take that into account.
-	❗Be careful when choosing your VPC IP CIDR block: If you are going to need to make use of [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html), make sure that your private IP range [doesn’t overlap](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html#classiclink-limitations) with that of EC2 Classic.
-	❗If you are going to peer VPCs, carefully consider the cost of [data transfer between VPCs](https://aws.amazon.com/vpc/faqs/#Peering_Connections), since for some workloads and integrations, this can be prohibitively expensive.

KMS
---

### KMS Basics

-	📒 [Homepage](https://aws.amazon.com/kms/) ∙ [Developer guide](http://docs.aws.amazon.com/kms/latest/developerguide/) ∙ [FAQ](https://aws.amazon.com/kms/faqs/) ∙ [Pricing](https://aws.amazon.com/kms/pricing/)
-	**KMS** (Key Management Service) is secure service for storing keys, such encryption keys for [EBS](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) and [S3](http://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html).

### KMS Tips

-	🔹It’s very common for companies to manage keys completely via home-grown mechanisms, but it’s far preferable to use a service such as KMS from the beginning, as it encourages more secure design and improves policies and processes around managing keys.
-	A good motivation and overview is in [this AWS presentation](http://www.slideshare.net/AmazonWebServices/encryption-and-key-management-in-aws).
-	The cryptographic details are in [this AWS whitepaper](https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf).

🚧 [*Please help expand this incomplete section.*](CONTRIBUTING.md)

CloudFront
----------

### CloudFront Basics

-	📒 [Homepage](https://aws.amazon.com/cloudfront/) ∙ [Developer guide](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/) ∙ [FAQ](https://aws.amazon.com/cloudfront/faqs/) ∙ [Pricing](https://aws.amazon.com/cloudfront/pricing/)
-	**CloudFront** is AWS’ [content delivery network (CDN)](https://en.wikipedia.org/wiki/Content_delivery_network).
-	Its primary use is improving latency for end users through accessing cacheable content by hosting it at [over 60 global edge locations](http://aws.amazon.com/cloudfront/details/).

### CloudFront Alternatives and Lock-in

-	🚪CDNs are [a highly fragmented market](https://www.datanyze.com/market-share/cdn/). CloudFront has grown to be a leader, but there are many alternatives that might better suit specific needs.

### CloudFront Tips
-	🐥**IPv6** is [now supported](https://aws.amazon.com/about-aws/whats-new/2016/10/ipv6-support-for-cloudfront-waf-and-s3-transfer-acceleration/)!
-	🐥**HTTP/2** is [now supported](https://aws.amazon.com/about-aws/whats-new/2016/09/amazon-cloudfront-now-supports-http2/)! Clients [must support TLS 1.2 and SNI](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesSupportedHTTPVersions).
-	While the most common use is for users to browse and download content (GET or HEAD methods) requests, CloudFront also supports ([since 2013](https://aws.amazon.com/blogs/aws/amazon-cloudfront-content-uploads-post-put-other-methods/)) uploaded data (POST, PUT, DELETE, OPTIONS, and PATCH).
	-	You must enable this by specifying the [allowed HTTP methods](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesAllowedHTTPMethods) when you create the distribution.
	-	Interestingly, the cost of accepting (uploaded) data [is usually less](https://aws.amazon.com/cloudfront/pricing/) than for sending (downloaded) data.
-	In its basic version, CloudFront [supports SSL](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html) via the [SNI extension to TLS](https://en.wikipedia.org/wiki/Server_Name_Indication), which is supported by all modern web browsers. If you need to support older browsers, you need to pay a few hundred dollars a month for dedicated IPs.
	-	💸⏱Consider invalidation needs carefully. CloudFront [does support invalidation](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html) of objects from edge locations, but this typically takes many minutes to propagate to edge locations, and costs $0.005 per request after the first 1000 requests. (Some other CDNs support this better.)
-	Everyone should use TLS nowadays if possible. [Ilya Grigorik’s table](https://istlsfastyet.com/#cdn-paas) offers a good summary of features regarding TLS performance features of CloudFront.
-	An alternative to invalidation that is often easier to manage, and instant, is to configure the distribution to [cache with query strings](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html) and then append unique query strings with versions onto assets that are updated frequently.
-	⏱For good web performance, it’s important turn on the option to [enable compression](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html) on CloudFront distributions if the origin is S3 or another source that does not already compress.

### CloudFront Gotchas and Limitations

-	If using S3 as a backing store, remember that the endpoints for website hosting and for general S3 are different. Example: “bucketname.s3.amazonaws.com” is a standard S3 serving endpoint, but to have redirect and error page support, you need to use the website hosting endpoint listed for that bucket, e.g. “bucketname.s3-website-us-east-1.amazonaws.com” (or the appropriate region).
-   🔸By default, CloudFront will not forward HTTP Host: headers through to your origin servers. This can be problematic for your origin if you run multiple sites switched with host headers. You can [enable host header forwarding](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorCustomOrigin.html#request-custom-headers-behavior) in the default cache behavior settings.

DirectConnect
-------------

### DirectConnect Basics

-	📒 [Homepage](https://aws.amazon.com/directconnect/) ∙ [User guide](http://docs.aws.amazon.com/directconnect/latest/UserGuide/) ∙ [FAQ](https://aws.amazon.com/directconnect/faqs/) ∙ [Pricing](https://aws.amazon.com/directconnect/pricing/)
-	**Direct Connect** is a private, dedicated connection from your network(s) to AWS.

### DirectConnect Tips

-	If your data center has [a partnering relationship](https://aws.amazon.com/directconnect/partners/) with AWS, setup is streamlined.
-	Use for more consistent predictable network performance guarantees.
	-	1 Gbps or 10 Gbps per link
-	Use to peer your colocation, corporate, or physical datacenter network with your VPC(s).
	-	Example: Extend corporate LDAP and/or Kerberos to EC2 instances running in a VPC.
	-	Example: Make services that are hosted outside of AWS for financial, regulatory, or legacy reasons callable from within a VPC.

Redshift
--------

### Redshift Basics

-	📒 [Homepage](https://aws.amazon.com/redshift/) ∙ [Developer guide](http://docs.aws.amazon.com/redshift/latest/dg/) ∙ [FAQ](https://aws.amazon.com/redshift/faqs/) ∙ [Pricing](https://aws.amazon.com/redshift/pricing/)
-	**Redshift** is AWS’ managed [data warehouse](https://en.wikipedia.org/wiki/Data_warehouse) solution, which is massively parallel, scalable, and columnar. It is very widely used. It [was built](https://en.wikipedia.org/wiki/Amazon_Redshift) using [ParAccel](https://en.wikipedia.org/wiki/ParAccel) technology and exposes [Postgres](https://en.wikipedia.org/wiki/PostgreSQL)-compatible interfaces.

### Redshift Alternatives and Lock-in

-	⛓🚪Whatever data warehouse you select, your business will likely be locked in for a long time. Also (and not coincidentally) the data warehouse market is highly fragmented. Selecting a data warehouse is a choice to be made carefully, with research and awareness of [the market landscape](https://www.datanami.com/2016/03/14/data-warehouse-market-ripe-disruption-gartner-says/) and what [business intelligence](https://en.wikipedia.org/wiki/Business_intelligence) tools you’ll be using.

### Redshift Tips

-	Although Redshift is mostly Postgres-compatible, its SQL dialect and performance profile are different.
-	Redshift supports only [12 primitive data types](https://docs.aws.amazon.com/redshift/latest/dg/c_Supported_data_types.html). ([List of unsupported Postgres types](https://docs.aws.amazon.com/redshift/latest/dg/c_unsupported-postgresql-datatypes.html)\)
-	It has a leader node and computation nodes (the leader node distributes queries to the computation ones). Note that some functions [can be executed only on the lead node.](https://docs.aws.amazon.com/redshift/latest/dg/c_SQL_functions_leader_node_only.html)
-	Major third-party BI tools support Redshift integration (see [Quora](https://www.quora.com/Which-BI-visualisation-solution-goes-best-with-Redshift)).
-	[Top 10 Performance Tuning Techniques for Amazon Redshift](https://blogs.aws.amazon.com/bigdata/post/Tx31034QG0G3ED1/Top-10-Performance-Tuning-Techniques-for-Amazon-Redshift) provides an excellent list of performance tuning techniques.
-	[Amazon Redshift Utils](https://github.com/awslabs/amazon-redshift-utils) contains useful utilities, scripts and views to simplify Redshift ops.
-	[VACUUM](http://docs.aws.amazon.com/redshift/latest/dg/t_Reclaiming_storage_space202.html) regularly following a significant number of deletes or updates to reclaim space and improve query performance.
-	Redshift provides various [column compression](http://docs.aws.amazon.com/redshift/latest/dg/t_Compressing_data_on_disk.html) options to optimize the stored data size. AWS strongly encourages users to use [automatic compression](http://docs.aws.amazon.com/redshift/latest/dg/c_Loading_tables_auto_compress.html) at the COPY stage, when Redshift uses a sample of the data being ingested to analyze the column compression options. However, automatic compression can only be applied to an empty table with no data. Therefore, make sure the initial load batch is big enough to provide Redshift with a representative sample of the data (the default sample size is 100000 rows).

### Redshift Gotchas and Limitations

-	❗⏱While Redshift can handle heavy queries well, it does not scale horizontally, i.e. does not handle multiple queries in parallel. Therefore, if you expect a high parallel load, consider replicating or (if possible) sharding your data across multiple clusters.
-	🔸Leader node, which manages communications with client programs and all communication with compute nodes, is the single point of failure.
-	⏱Although most Redshift queries parallelize well at the compute node level, certain stages are executed on the leader node, which can become the bottleneck.
-	🔹Redshift data commit transactions are very expensive and serialized at the cluster level. Therefore, consider grouping multiple mutation commands (COPY/INSERT/UPDATE) commands into a single transaction whenever possible.
-	🔹Redshift does not support multi-AZ deployments. Building multi-AZ clusters is not trivial. [Here](https://blogs.aws.amazon.com/bigdata/post/Tx13ZDHZANSX9UX/Building-Multi-AZ-or-Multi-Region-Amazon-Redshift-Clusters) is an example using Kinesis.
-	🔸Beware of storing multiple small tables in Redshift. The way Redshift tables are laid out on disk makes it impractical. The minimum space required to store a table (in MB) is nodes * slices/node * columns. For example, on a 16 node cluster an empty table with 20 columns will occupy 640MB on disk.
-	⏱ Query performance degrades significantly during data ingestion. [WLM (Workload Management)](http://docs.aws.amazon.com/redshift/latest/dg/c_workload_mngmt_classification.html) tweaks help to some extent. However, if you need consistent read performance, consider having replica clusters (at the extra cost) and swap them during update.
-	❗ Never resize a live cluster. The resize operation takes hours depending on the dataset size. In rare cases, the operation may also get stuck and you'll end up having a non-functional cluster. The safer approach is to create a new cluster from a snapshot, resize the new cluster and shut down the old one.
-	Redshift has reserved keywords which are not present in Postgres (see full list [here](https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html)). Watch out for DELTA ([Delta Encodings](https://docs.aws.amazon.com/redshift/latest/dg/c_Delta_encoding.html)).
-	Redshift does not support many Postgres functions, most notably several date/time-related and aggregation functions. See the [full list here](https://docs.aws.amazon.com/redshift/latest/dg/c_unsupported-postgresql-functions.html).

EMR
---

### EMR Basics

-	📒 [Homepage](https://aws.amazon.com/emr/) ∙ [Release guide](http://docs.aws.amazon.com/ElasticMapReduce/latest/ReleaseGuide/) ∙ [FAQ](https://aws.amazon.com/emr/faqs/) ∙ [Pricing](https://aws.amazon.com/emr/pricing/)
-	**EMR** (which used to stand for Elastic Map Reduce, but not anymore, since it now extends beyond map-reduce) is a service that offers managed deployment of [Hadoop](https://en.wikipedia.org/wiki/Apache_Hadoop), [HBase](https://en.wikipedia.org/wiki/Apache_HBase) and [Spark](https://en.wikipedia.org/wiki/Apache_Spark). It reduces the management burden of setting up and maintaining these services yourself.

### EMR Alternatives and Lock-in

-	⛓Most of EMR is based on open source technology that you can in principle deploy yourself. However, the job workflows and much other tooling is AWS-specific. Migrating from EMR to your own clusters is possible but not always trivial.

### EMR Tips

-	EMR relies on many versions of Hadoop and other supporting software. Be sure to check [which versions are in use](https://docs.aws.amazon.com/ElasticMapReduce/latest/ReleaseGuide/emr-release-components.html).
-	⏱Off-the-shelf EMR and Hadoop can have significant overhead when compared with efficient processing on a single machine. If your data is small and performance matters, you may wish to consider alternatives, as [this post](http://aadrake.com/command-line-tools-can-be-235x-faster-than-your-hadoop-cluster.html) illustrates.
-	Python programmers may want to take a look at Yelp’s [mrjob](https://github.com/Yelp/mrjob).
-	It takes time to tune performance of EMR jobs, which is why third-party services such as [Qubole’s data service](https://www.qubole.com/mapreduce-as-a-service/) are gaining popularity as ways to improve performance or reduce costs.

### EMR Gotchas and Limitations
-	💸❗**EMR costs** can pile up quickly since it involves lots of instances, efficiency can be poor depending on cluster configuration and choice of workload, and accidents like hung jobs are costly. See the [section on EC2 cost management](#ec2-cost-management), especially the tips there about Spot instances and avoiding hourly billing. [This blog post](http://engineering.bloomreach.com/strategies-for-reducing-your-amazon-emr-costs/) has additional tips.
-	💸 Beware of “double-dipping”. With EMR, you pay for the EC2 capacity and the service fees. In addition, EMR syncs task logs to S3, which means you pay for the storage and **PUT requests** at [S3 standard rates](https://aws.amazon.com/s3/pricing/#Request_Pricing). While the log files tend to be relatively small, every Hadoop job, depending on the size, generates thousands of log files that can quickly add up to thousands of dollars on the AWS bill. YARN's [log aggregation](http://hortonworks.com/blog/simplifying-user-logs-management-and-access-in-yarn/) is not available on EMR.



High Availability
-----------------

This section covers tips and information on achieving [high availability](https://en.wikipedia.org/wiki/High_availability).

### High Availability Tips

-	AWS offers two levels of redundancy, [regions and availability zones (AZs)](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-regions-availability-zones).
-	When used correctly, regions and zones do allow for high availability. You may want to use non-AWS providers for larger business risk mitigation (i.e. not tying your company to one vendor), but reliability of AWS across regions is very high.
-	**Multiple regions:** Using multiple regions is complex, since it’s essentially like completely separate infrastructure. It is necessary for business-critical services with the highest levels of redundancy. However, for many applications (like your average consumer startup), deploying extensive redundancy across regions may be overkill.
-	The [High Scalability Blog](http://highscalability.com/blog/2016/1/11/a-beginners-guide-to-scaling-to-11-million-users-on-amazons.html) has a good guide to help you understand when you need to scale an application to multiple regions.
-	🔹**Multiple AZs:** Using AZs wisely is the primary tool for high availability!
	-	A typical single-region high availability architecture would be to deploy in two or more availability zones, with load balancing in front, as in [this AWS diagram](http://media.amazonwebservices.com/architecturecenter/AWS_ac_ra_ftha_04.pdf).
	-	The bulk of outages in AWS services affect one zone only. There have been rare outages affecting multiple zones simultaneously (for example, the [great EBS failure of 2011](http://aws.amazon.com/message/65648/)) but in general most customers’ outages are due to using only a single AZ for some infrastructure.
	-	Consequently, design your architecture to minimize the impact of AZ outages, especially single-zone outages.
	-	Deploy key infrastructure across at least two or three AZs. Replicating a single resource across more than three zones often won’t make sense if you have other backup mechanisms in place, like S3 snapshots.
	-	A second or third AZ should significantly improve availability, but additional reliability of 4 or more AZs may not justify the costs or complexity (unless you have other reasons like capacity or Spot market prices).
	-	💸Watch out for **cross-AZ traffic costs**. This can be an unpleasant surprise in architectures with large volume of traffic crossing AZ boundaries.
	-	Deploy instances evenly across all available AZs, so that only a minimal fraction of your capacity is lost in case of an AZ outage.
	-	If your architecture has single points of failure, put all of them into a single AZ. This may seem counter-intuitive, but it minimizes the likelihood of any one SPOF to go down on an outage of a single AZ.
-	**EBS vs instance storage:** For a number of years, EBSs had a poorer track record for availability than instance storage. For systems where individual instances can be killed and restarted easily, instance storage with sufficient redundancy could give higher availability overall. EBS has improved, and modern instance types (since 2015) are now EBS-only, so this approach, while helpful at one time, may be increasingly archaic.
-	Be sure to [use and understand CLBs/ALBs](#load-balancers) appropriately. Many outages are due to not using load balancers, or misunderstanding or misconfiguring them.

### High Availability Gotchas and Limitations

-	**AZ naming** differs from one customer account to the next. Your “us-west-1a” is not the same as another customer’s “us-west-1a” — the letters are assigned to physical AZs randomly per account. This can also be a gotcha if you have multiple AWS accounts.
-	**Cross-AZ traffic** is not free. At large scale, the costs add up to a significant amount of money. If possible, optimize your traffic to stay within the same AZ as much as possible.  

Billing and Cost Management
---------------------------

### Billing and Cost Visibility

-	AWS offers a [**free tier**](https://aws.amazon.com/free/) of service, that allows very limited usage of resources at no cost. For example, a micro instance and small amount of storage is available for no charge. (If you have an old account but starting fresh, sign up for a new one to qualify for the free tier.) [AWS Activate](https://aws.amazon.com/activate/) extends this to tens of thousands of dollars of free credits to startups in [certain funds or accelerators](https://aws.amazon.com/activate/portfolio-detail/).
-	You can set [**billing alerts**](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/free-tier-alarms.html) to be notified of unexpected costs, such as costs exceeding the free tier. You can set these in a [granular way](https://wblinks.com/notes/aws-tips-i-wish-id-known-before-i-started/#billing).
-	AWS offers [Cost Explorer](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-explorer-what-is.html), a tool to get better visibility into costs.
-	Unfortunately, the AWS console and billing tools are rarely enough to give good visibility into costs. For large accounts, the AWS billing console can time out or be too slow to use.
-	**Tools:**
	-	🔹Enable [billing reports](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/detailed-billing-reports.html) and install an open source tool to help manage or monitor AWS resource utilization. [**Netflix Ice**](https://github.com/Netflix/ice) is probably the first one you should try. Check out [docker-ice](https://github.com/jonbrouse/docker-ice) for a Dockerized version that eases installation.
	-	🔸One challenge with Ice is that it doesn’t cover amortized cost of reserved instances.
	-	Other tools include [Security Monkey](https://github.com/Netflix/security_monkey) and [Cloud Custodian](https://github.com/capitalone/cloud-custodian).
-	**Third-party services:** Several companies offer services designed to help you gain insights into expenses or lower your AWS bill, such as [OpsClarity](http://www.opsclarity.com/), [Cloudability](https://www.cloudability.com/), [CloudHealth Technologies](https://www.cloudhealthtech.com/), and [ParkMyCloud](http://www.parkmycloud.com/). Some of these charge a percentage of your bill, which may be expensive. See the [market landscape](#tools-and-services-market-landscape).
-	AWS’s [Trusted Advisor](https://aws.amazon.com/premiumsupport/trustedadvisor/) is another service that can help with cost concerns.
-	Don’t be shy about asking your account manager for guidance in reducing your bill. It’s their job to keep you happily using AWS.
-	**Tagging for cost visibility:** As the infrastructure grows, a key part of managing costs is understanding where they lie. It’s strongly advisable to [tag resources](https://aws.amazon.com/blogs/aws/resource-groups-and-tagging/), and as complexity grows, group them effectively. If you [set up billing allocation appropriately](http://aws.amazon.com/blogs/aws/aws-cost-allocation/), you can then get visibility into expenses according to organization, product, individual engineer, or any other way that is helpful.
-	If you need to do custom analysis of raw billing data or want to feed it to a third party cost analysis service, [enable](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/detailed-billing-reports.html#turnonreports) the [detailed billing report](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/detailed-billing-reports.html#detailed-billing-report) feature.
-	Multiple Amazon accounts can be linked for billing purposes using the [Consolidated Billing](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/consolidated-billing.html) feature. Large enterprises may need complex billing structures depending on ownership and approval processes.

### AWS Data Transfer Costs

-	For deployments that involve significant network traffic, a large fraction of AWS expenses are around data transfer. Furthermore, costs of data transfer, within AZs, within regions, between regions, and into and out of AWS and the internet vary significantly depending on deployment choices.
-	Some of the most common gotchas:
	-	🔸*AZ-to-AZ traffic:* Note EC2 traffic between AZs is effectively the same as between regions. For example, deploying a Cassandra cluster across AZs is helpful for [high availability](#high-availability), but can hurt on network costs.
	-	🔸*Using public IPs when not necessary:* If you use an Elastic IP or public IP address of an EC2 instance, you will incur network costs, even if it is accessed locally within the AZ.
-	This figure gives an overview:

![AWS Data Transfer Costs](figures/aws-data-transfer-costs.png)

### EC2 Cost Management

-	With EC2, there is a trade-off between engineering effort (more analysis, more tools, more complex architectures) and spend rate on AWS. If your EC2 costs are small, many of the efforts here are not worth the engineering time required to make them work. But once you know your costs will be growing in excess of an engineer’s salary, serious investment is often worthwhile.
-	🔹**Spot instances:**
	-	EC2 [Spot instances](https://aws.amazon.com/ec2/spot/) are a way to get EC2 resources at significant discount — often many times cheaper than standard on-demand prices — if you’re willing to accept the possibility that they be terminated with little to no warning.
	-	Use Spot instances for potentially very significant discounts whenever you can use resources that may be restarted and don’t maintain long-term state.
	-	The huge savings that you can get with Spot come at the cost of a significant increase in complexity when provisioning and reasoning about the availability of compute capacity.
	-	Amazon maintains Spot prices at a market-driven fluctuating level, based on their inventory of unused capacity. Prices are typically low but can [spike](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-limits.html#spot-bid-limit) very high. See the [price history](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html) to get a sense for this.
	-	You set a bid price high to indicate how high you’re willing to pay, but you only pay the going rate, not the bid rate. If the market rate exceeds the bid, your instance may be terminated.
	-	Prices are per instance type and per availability zone. The same instance type may have wildly different price in different zones at the same time. Different instance types can have very different prices, even for similarly powered instance types in the same zone.
	-	Compare prices across instance types for better deals.
	-	Use Spot instances whenever possible. Setting a high bid price will assure your machines stay up the vast majority of the time, at a fraction of the price of normal instances.
	-	Get notified up to two minutes before price-triggered shutdown by polling [your Spot instances’ metadata](https://aws.amazon.com/blogs/aws/new-ec2-spot-instance-termination-notices/).
	-	Make sure your usage profile works well for Spot before investing heavily in tools to manage a particular configuration.
-	**Spot fleet:**
	-	You can realize even bigger cost reductions at the same time as improvements to fleet stability relative to regular Spot usage by using [Spot fleet](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet.html) to bid on instances across instance types, availability zones, and (through multiple Spot Fleet Requests) regions.
	-	Spot fleet targets maintaining a specified (and weighted-by-instance-type) total capacity across a cluster of servers. If the Spot price of one instance type and availability zone combination rises above the weighted bid, it will rotate running instances out and bring up new ones of another type and location up in order to maintain the target capacity without going over target cluster cost.
-	**Spot usage best practices:**
	-	**Application profiling:**
		-	Profile your application to figure out its runtime characteristics. That would help give an understanding of the minimum cpu, memory, disk required. Having this information is critical before you try to optimize spot costs.
		-	Once you know the minimum application requirements, instead of resorting to fixed instance types, you can bid across a variety of instance types (that gives you higher chances of getting a spot instance to run your application).E.g., If you know that 4 cpu cores are enough for your job, you can choose any instance type that is equal or above 4 cores and that has the least Spot price based on history. This helps you bid for instances with greater discount (less demand at that point).
	-	**Spot price monitoring and intelligence:**
		-	Spot Instance prices fluctuate depending on instance types, time of day, region and availability zone. The AWS CLI tools and API allow you to describe Spot price metadata given time, instance type, and region/AZ.  
		-	Based on history of Spot instance prices, you could potentially build a myriad of algorithms that would help you to pick an instance type that either
			-	optimizes cost
			-	maximizes availability
			-	offers predictable performance
		-	You can also track the number of times an instance of certain type got taken away (out bid) and plot that in graphite to improve your algorithm based on time of day.
	-	**Spot machine resource utilization:**
		-	For running spiky workloads (spark, map reduce jobs) that are schedule based and where failure is non critical, Spot instances become the perfect candidates.
		-	The time it takes to satisfy a Spot instance could vary between 2-10 mins depending on the type of instance and availability of machines in that AZ.
		-	If you are running an infrastructure with hundreds of jobs of spiky nature, it is advisable to start pooling instances to optimize for cost, performance and most importantly time to acquire an instance.
		-	Pooling implies creating and maintaining Spot instances so that they do not get terminated after use. This promotes re-use of Spot instances across jobs. This of course comes with the overhead of lifecycle management.
		-	Pooling has its own set of metrics that can be tracked to optimize resource utilization, efficiency and cost.
		-	Typical pooling implementations give anywhere between 45-60% cost optimizations and 40% reduction in spot instance creation time.
		-	An excellent example of Pooling implementation described by Netflix ([part1](http://techblog.netflix.com/2015/09/creating-your-own-ec2-spot-market.html), [part2](http://techblog.netflix.com/2015/11/creating-your-own-ec2-spot-market-part-2.html)\)
-	**Spot management gotchas**
	-	🔸**Lifetime:** There is [no guarantee](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-interruptions.html) for the lifetime of a Spot instance. It is purely based on bidding. If anyone outbids your price, the instance is taken away. Spot is not suitable for time sensitive jobs that have strong SLA. Instances will fail based on demand for Spot at that time. AWS provides a [two-minute warning](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-interruptions.html#spot-instance-termination-notices) before Amazon EC2 must terminate your Spot instance.
	-	🔹**API return data:** - The Spot price API returns Spot prices of varying granularity depending on the time range specified in the api call.E.g If the last 10 min worth of history is requested, the data is more fine grained. If the last 2 day worth of history is requested, the data is more coarser. Do not assume you will get all the data points. There **will** be skipped intervals.
	-	❗**Lifecycle management:** Do not attempt any fancy Spot management unless absolutely necessary. If your entire usage is only a few machines and your cost is acceptable and your failure rate is lower, do not attempt to optimize. The pain for building/maintaining it is not worth just a few hundred dollar savings.
-	**Reserved Instances:** allow you to get significant discounts on EC2 compute hours in return for a commitment to pay for instance hours of a specific instance type in a specific AWS region and availability zone for a pre-established time frame (1 or 3 years). Further discounts can be realized through “partial” or “all upfront” payment options.
	-	Consider using Reserved Instances when you can predict your longer-term compute needs and need a stronger guarantee of compute availability and continuity than the (typically cheaper) Spot market can provide. However be aware that if your architecture changes your computing needs may change as well so long term contracts can seem attractive but may turn out to be cumbersome.
	-	Instance reservations are not tied to specific EC2 instances - they are applied at the billing level to eligible compute hours as they are consumed across all of the instances in an account.
-	**Hourly billing waste:** EC2 instances are [billed in instance-hours](https://aws.amazon.com/ec2/faqs/#How_will_I_be_charged_and_billed_for_my_use_of_Amazon_EC2) — rounded up to the nearest full hour! For long-lived instances, this is not a big worry, but for large transient deployments, like EMR jobs or test deployments, this can be a significant expense. Never deploy many instances and terminate them after only a few minutes. In fact, if transient instances are part of your regular processing workflow, you should put in protections or alerts to check for this kind of waste.
-	If you have multiple AWS accounts and have configured them to roll charges up to one account using the “Consolidated Billing” feature, you can expect *unused* Reserved Instance hours from one account to be applied to matching (region, availability zone, instance type) compute hours from another account.
-	If you have multiple AWS accounts that are linked with Consolidated Billing, plan on using reservations, and want unused reservation capacity to be able to apply to compute hours from other accounts, you’ll need to create your instances in the availability zone with the same *name* across accounts. Keep in mind that when you have done this, your instances may not end up in the same *physical* data center across accounts - Amazon shuffles availability zones names across accounts in order to equalize resource utilization.
-	Make use of dynamic [Auto Scaling](#auto-scaling), where possible, in order to better match your cluster size (and cost) to the current resource requirements of your service.

Further Reading
---------------

This section covers a few unusually useful or “must know about” resources or lists.

-	AWS
	-	[AWS In Plain English](https://www.expeditedssl.com/aws-in-plain-english): A readable overview of all the AWS services
	-	[Awesome AWS](https://github.com/donnemartin/awesome-aws): A curated list of AWS tools and software
	-	[AWS Tips I Wish I'd Known Before I Started](https://wblinks.com/notes/aws-tips-i-wish-id-known-before-i-started/): A list of tips from [Rich Adams](https://richadams.me/)
-	General references
	-	[Awesome Microservices](https://github.com/mfornos/awesome-microservices): A curated list of tools and technologies for microservice architectures. Worth browsing to learn about popular open source projects.
	-	[Is it fast yet?](https://istlsfastyet.com/): Ilya Grigorik’s TLS performance overview
	-	[High Performance Browser Networking](https://hpbn.co/): A full, modern book on web network performance; a presentation on the HTTP/2 portion is [here](https://docs.google.com/presentation/d/1r7QXGYOLCh4fcUq0jDdDwKJWNqWK1o4xMtYpKZCJYjM/edit?usp=sharing).

Disclaimer
----------

The authors and contributors to this content cannot guarantee the validity of the information found here. Please make sure that you understand that the information provided here is being provided freely, and that no kind of agreement or contract is created between you and any persons associated with this content or project. The authors and contributors do not assume and hereby disclaim any liability to any party for any loss, damage, or disruption caused by errors or omissions in the information contained in, associated with, or linked from this content, whether such errors or omissions result from negligence, accident, or any other cause.

License
-------

[![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).
