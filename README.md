# Markdown blog resources
This is my default Markdown Blog repository.
## Why? 
```mermaid
---
title: Infrastructure of my blog website.
---
flowchart LR
    subgraph "Template engine"
    Browser[Browser] --"Please give me **html** pages!"--> 
    Web_server[Web server]
    Web_server --"I give you html files"--> Browser
    end
        direction TB
        database[This Repository] --"Give md files to render on Web server"--> Web_server 
```
Modern blogging platforms like *Gatsby* or *Jekyll* offer visually appealing and simple designs for Markdown blogs. However, these platforms come with certain limitations. Firstly, they require a significant number of dependencies, which can slow down the blog and complicate maintenance. Secondly, the tools and frameworks in this domain are constantly evolving, making it challenging to keep up with the latest changes.

To illustrate this point, let's examine the evolution of John Gruber's blog, who is renowned for creating the Markdown format. Comparing the design of his blog from 2002 to its 2023 version, we observe minimal changes. This consistency underscores a critical insight: the value of a blog lies more in its content than in its aesthetic presentation.
In light of this, when considering the development of a personal blog, the focus should be on substance rather than style. With this in mind, the following requirements emerge for the creation of an effective blog:
1. **Minimalism:** The blog should be as minimalistic as possible in terms of design and functionality. This approach ensures faster load times and ease of maintenance.
2. **Customization:** There should be a provision for a personalized template that aligns with the individual's unique preferences and requirements.
3. **Independence:** The tools and programs used for the blog should be self-selected and not dictated by external platforms or trends.
In conclusion, while modern blogging platforms offer convenience and aesthetic appeal, a more tailored approach that prioritizes content and simplicity can yield a more effective and personal blogging experience.
## How?
There are three options, that I can apply for my Blog. 
- [Hugo](https://gohugo.io/) : Go
- [Zola](https://www.getzola.org/) : Rust
- [jinja](https://jinja.palletsprojects.com/en/3.1.x/) : python
I like Zola with its nice explained Documentations and Conciseness.
I think the easiest way to build markdown website is so.
```mermaid
---
title: easiest way to build markdown website
---
flowchart LR
    markdown --parser--> html --"nginx"--> deploy
```
Zola is used for this achitecture.
```mermaid
---
title: easiest way to build markdown website
---
flowchart LR
    markdown --zola--> html --"zola"--> deploy
    markdown --zola-->deploy
```

Someday I will write my own minimal Template engine for my blog. 

```
My Folder Hierarchy referring to Dewey Decimal classes
.
└── Notes/
    ├── 000 Computer science, knowledge, and systems/
    │   ├── 001 Knowledge
    │   ├── 002 The book (writing, libraries, and book-related topics)
    │   ├── 003 Systems
    │   ├── 004 Data processing and computer science
    │   ├── 005 Computer programming, programs, and data
    │   ├── 006 Special computer methods 
    │   └── 007 UNI Leipzig CS bachelor
    ├── 030 Encyclopedias and books of facts/
    │   ├── 031 Korean
    │   ├── 032 German
    │   └── 033 English
    ├── 330 Economics/
    │   └── 332 Financial economics
    ├── 500 Science/
    │   ├── 510 Mathematics
    │   ├── 512 Algebra
    │   ├── 515 Analysis
    │   └── 519 Probabilities and applied mathematics
    └── 530 Physics/
        └── 537 Electricity and electronics
```