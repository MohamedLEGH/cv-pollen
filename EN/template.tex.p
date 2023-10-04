\documentclass[10pt]{article}

\usepackage[document]{ragged2e}

% for pdflatex
\usepackage[utf8]{inputenc}
% for hyperlink
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,
    urlcolor=cyan,
}
% for table spanning multiples pages
\usepackage{longtable}
% for custom enum
\usepackage{enumitem}
% for removing alinea begin of paragraph
\usepackage{parskip}
\usepackage{array, xcolor, graphicx}
\usepackage[a4paper, margin=1cm]{geometry}
◊(combined_title ◊(bf_text (main_title ◊|title|)) ◊(second_title ◊|subtitle|))
% no author
\author{\bfseries\Huge \vspace{-4ex}}
% no date
\date{}
% custom for column style
\definecolor{lightgray}{gray}{0.8}
% custom for column type
\newcolumntype{L}{p{0.2\textwidth}}
% custom for column type
\newcolumntype{R}{p{0.75\textwidth}}
% custom for column type
\newcommand\VRule{\color{lightgray}\vrule width 2pt}
% for bullet point outside of list
\newcommand{\tabitem}{~~\llap{$\rightarrow$}~~}
\pagestyle{empty}
\begin{document}

\begin{minipage}[t]{0.80\textwidth}
◊(bf_text (main_name ◊|first_name| " " ◊|last_name|))\\
\vspace{4ex}◊|age| years\\
◊|full_address|\\
◊link[◊(tel_link ◊|number|)]{◊|spaced_number|}\\
◊link[◊(mail_link ◊|email|)]{◊|email|}\\
◊link[◊|github_link|]{github.com/MohamedLEGH}\\
\vspace{5ex}{\bf French}: native \\
{\bf English}: fluent (TOIEC: 935) \\
\end{minipage}
\begin{minipage}[t]{0.20\textwidth}
\vspace{-3ex}
◊image["figures/Legheraba-Mohamed.jpg"]{width=4cm}
\end{minipage}
% to make maketitle work without begin of page
{\let\newpage\relax\maketitle}
% to remove page number
\thispagestyle{empty}

\vspace{-10ex}

\section*{Formation}

\vspace{2ex}

\begin{tabular}{L!{\VRule}R}
\textbf{\textit{Since February 2023}} \hspace{1.5ex} & \textbf{PhD, Sorbonne University, LIP6}, PhD subject \textit{Cybersecure Federated Learning}\\[0.75cm]
\textbf{\textit{2015--2018}} \hspace{1.5ex} \includegraphics[width=1.4cm]{figures/Logo_Reseau_Polytech.png} & \textbf{Engineering degree, Polytech Sorbonne}, speciality \textit{Applied mathematics and computer science}: Statistics, Differential equations, Programmation, Data structures, Parallelism.\\[0.75cm]
\textbf{\textit{2017 (Winter)}} \hspace{.5ex} \includegraphics[width=.85cm]{figures/TU.png} & \textbf{Erasmus semester at TU Delft}, Netherlands: Graph theory, Cryptography, Blockchain, Cloud Computing, Data Visualization.\\[0.75cm]
\textbf{\textit{2013--2015}} \hspace{3ex} \includegraphics[width=.85cm]{figures/PEIP_logo.png} & \textbf{Polytech Sorbonne}, \textit{PeiP} (Parcours des écoles d'ingénieurs Polytech): Maths, Computer Science, Physics, Chemistry, Mechanics.\\[0.75cm]
\end{tabular}

\vspace{2ex}

\section*{Work Experience}

\vspace{2ex}

\begin{longtable}{L!{\VRule}R}
\textbf{\textit{Since February 2023}}& \includegraphics[width=1cm]{figures/LogoLIP6.png} \hspace{0.2cm} {\bf ◊|title|} \\[0.25cm]
& \tabitem \small{\textbf{Teaching at Polytech Sorbonne} (Networking course for EI2I3 and EISE4 students,
Numerical Methods course for AGRAL3 students, Database course for EI2I4 students, Industrial project with MAIN4 students)}

\\[0.20cm]
& \tabitem \small{\textbf{Scientific research} (State of the art on federated learning, article in progress)}

\\[0.20cm]

\textbf{\textit{June 2021 - January 2023}}& \includegraphics[width=1.5cm]{figures/Deloitte.png} \hspace{0.2cm} {\bf Blockchain \& DevOps Senior Engineer, Deloitte.} \\[0.25cm]

& \tabitem \small{\textbf{Support to financial audit teams} (Audit of blockchain transactions, review of internal control and custody procedures)}

\\[0.20cm]
& \tabitem \small{\textbf{Technical audit and consulting} (Audit of smart contracts and blockchain applications, architecture review, coordination with international teams)}

\\[0.20cm]
& \tabitem \small{\textbf{Formations} (Training of clients - banking and industry - on blockchain, crypto-assets blockchain, crypto-assets, NFTs and metavers)}

\\[0.20cm]
& \tabitem \small{\textbf{Writing articles} (\href{https://www2.deloitte.com/fr/fr/pages/audit/articles/univers-metavers.html}{Article on NFTs and metaverse}, \href{https://www2.deloitte.com/content/dam/Deloitte/fr/Documents/financial-services/Publications/future-of-money-banking.pdf}{study on DeFi and CBDCs}, barometer on the carbon impact of blockchain)}

\\[0.20cm]
& \tabitem \small{\textbf{Deloitte Fondation} (Implementation of a \href{https://blog.deloitte.fr/acculturation-tech-blockchain-une-priorite-pour-les-nouvelles-generations/}{workshop} to discover the topic of blockchain and NFT for a class of middle school students from Sarcelles, in partnership with the Deloitte Foundation and with NomadicLabs)}

\\[0.20cm]
\textbf{\textit{April 2019- June 2021}}& \includegraphics[width=2cm]{figures/SIA_logo.png} \hspace{0.2cm} {\bf Blockchain \& Data Science Engineer, Sia Partners.} \\[0.25cm]

& \tabitem \small{\textbf{CBDC experimentations at Banque de France} (member of the blockchain unit as a blockchain technical expert, technical lead for 1 experimentation, technical support for 2 other experimentations, training for other team members about Blockchain and DevOps, implementation of the CI/CD pipelines)}

\\[0.20cm]
& \tabitem \small{\textbf{Monitoring of trading limits using a blockchain network for an investment fund} \it{Mission found and won by myself thanks to my network}}

\\[0.20cm]
& \tabitem \small{\textbf{Creation of a payment mobile application in cryptocurrencies for a French retailer}}

\\[0.20cm]
& \tabitem \small{\textbf{Heka Project: \href{https://heka.sia-partners.com/en}{Software factory} for Data Science applications} (development of microservices in Python and React, continuous deployment on the Kubernetes infrastructure, ...)}

\\[0.20cm]
& \tabitem \small{\textbf{R\&D watch on blockchain, cryptocurrencies and distributed systems} (study of Liquid, Libra and TON blockchain networks, Lightning Network, HTLC Atomic Swap, Zero-knowledge proofs, Raft protocol, Taproot and Multi-Party Computation technologies, ...)}

\\[0.20cm]
& \tabitem \small{\textbf{Writing articles} (\href{https://www.sia-partners.com/fr/actualites-et-publications/de-nos-experts/la-blockchain-catalyseur-de-la-decentralisation-et-de-la}{\textit{Blockchain \& 5G}}, \href{https://www.sia-partners.com/fr/actualites-et-publications/de-nos-experts/entretien-avec-pierre-noizat-bitcoin-et-cryptomonnaies-0}{\textit{Interview with Pierre Noizat}}, ...)}

\\[0.20cm]
& \tabitem \small{\textbf{Course \textit{Programming a blockchain}} (\href{https://github.com/MohamedLEGH/tutoriel-blockchain-creation-bootstrap}{Polytech Sorbonne}, \href{https://github.com/MohamedLEGH/tutoriel-blockchain-MinesBootstrap}{Mines St Etienne}, ...)}
\end{longtable}

\vspace{2ex}

\section*{Technical Skills}

\vspace{2ex}

\begin{tabular}{ l l }
\textbf{Blockchain}: Ethereum, Corda, Hyperledger, Bitcoin, Tezos & \textbf{DevOps}: Kubernetes, Gitlab CI/CD, GCP, Terraform \\[0.1cm]
\textbf{Smart contracts}: Solidity, Ligo, SmartPy, Chaincodes & \textbf{Tools}: Shell, Git, Docker, VS Code, PowerPoint \\[0.1cm]
\textbf{Mathematics}: Cryptography, Statistics, Graphs & \textbf{Programming}: Python, JavaScript, Ocaml, C/C++, Kotlin \\[0.1cm]
\textbf{Databases}: PostgreSQL, MySQL, SQLAlchemy & \textbf{Frameworks}: ReactJS, Node.js, Ethers.js, Flask, Web3.py \\[0.1cm]
\textbf{Protocols}: Lightning Network, IPFS, TCP/IP & \textbf{Méthodology}: Agile Method, APIs REST, Microservices \\[0.1cm]
\end{tabular}

\vspace{2ex}

\section*{Functional and Business Skills}

\vspace{2ex}

\begin{tabular}{ l }
\textbf{Business}: Writing commercial proposals, customer relations, knowledge of the market and the ecosystem.\\[0.1cm]
\textbf{Decentralized finance} : Stablecoins, Defi protocols, securing private keys, connexion with traditional finance.\\[0.1cm]
\textbf{CBDC \& Financial Market Infrastructures}: Implications of a crypto euro, Target2 \& Target2 Securities, PvP \& DvP.\\[0.1cm]
\textbf{Audit}: Audits of smart contracts, audits of blockchain technologies, audits of Blockchain startups \& fintechs, financial audit.\\[0.1cm]
\end{tabular}

\vspace{1ex}

\section*{Volunteer Experience}

\vspace{2ex}

\begin{tabular}{L!{\VRule}R}
\textbf{\textit{Since 2018}} & Association \textbf{Le Trait D’Union}, Homework help for high school and college students. Writing grant applications, treasurer. \\
\end{tabular}

\section*{Interests}

\vspace{2ex}

\hspace*{1ex} \textbf{Electronics} (retrogaming console with a Raspberry Pi, fan control using a transistor, ...) \\
\hspace*{1ex} \textbf{Study of socio-economic doctrines} (liberalism, Austrian school of economics, anarchism, technoethics, ...) \\
\end{document}
