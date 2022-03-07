# Design Pattern

### __Timestammping__

#### _Winter 2022_

<br> <br> <br> 

## Problem statement

<p>Imagine yourselves on a sunny day, coffee in hand, creative juices are in full flow and you get hit with this million-dollar idea, the idea you were waiting for and working towards, that has the potential to change your life, your life’s purpose. It could be a musical composition that will put Beethoven to shame, a mathematical proof that Ramanujan envies, a fantasy world that gives the creeps to JK Rowling, you get the idea. It is so vital for you to link that idea’s conception to yourself, so some non-creative, snoopy, greedy joe doesn’t just steal your idea and present it as his own. 
To prove that you came up with an idea first, you need to prove two things, (a) when you came up with the idea and (b) that idea didn’t exist up to that point in the timeline. Currently, you can do that by going to a notarizing agency like a patent office and presenting your idea to them. They will then check their database and make sure that nobody came up with that idea up to that point and assign an origin timestamp to your idea and ownership of it to you. This is the current norm and this norm has a big but. ;) That aforementioned big but is that, apart from you completely relying on the intent and capability of TTP to maintain the timestamp database you also have to reveal your idea to them at the time of timestamping. Wouldn’t it be great if you could do so without exposing your idea and without TTP? 
The problem we are trying to tackle in this project is how to notarize any content(IP) by generating publicly verifiable proof of its authenticity, origin and ownership without TTP of course. We all have TTP over here in this camp.</p>

<br> 
<br> 

![Problem Statement](/images/problem_statement.jpg)
<br> 

## Goals

**Consensus on origination and thus ownership of content by an address.**

<br> 
<p>You can implement all these with blockchain timestamping where you can generate proof of the existence of any data without actually revealing the data at the time of proof generation and can choose to reveal it, only in case you need to. In other words, you only reveal the idea at the time of showcasing the proof of existence, not at the time of generation of proof of existence.<br>
How to prove that YOU came up with THIS idea at THIS time without revealing the idea and in a permissionless and trustless way.</p>
<br> 
<br> 
<p>he platform we are trying to explain is where people can bring their idea or patents there. We would protect the content from others, share or release the content with the owner’s permission. Create some information that helps people can prove that when with what content they got the idea.</p>
<br> 
<br> 
**These are some of the main goals we are seeking for:**
<br> 
<br> 
<p>
1. A reliable validation mechanism for all valued information such as texts, images, photos, videos and audio that is provided for the idea. It’s like the system would mint your idea with all information along with. It would be unique and protectable.

1. A trackable platform that allows everyone to find out a piece of info when and who on what platform has been released on the space.

1. An NFT mechanism that can generate a hash which is a fingerprint for digital assets to keep the originality of the whole idea if it’s only a picture or an image of your patent.

1. Defining mechanism for the people’s access level. We can classify all information if it needs to. The owner or the authority can define the distractions and give the permissions. It works better if an idea has more than one owner or there are parties.

1. A mechanism can figure out that your idea is a completely new, somehow new or existing idea without revealing your idea or others.

1. If a new idea with similarity with your idea comes to the platform, you would be notified without detail.
</p>
<br> 

## Stakeholders

<p>
1. Content Creator - As a user/group creates content and wants to record its creation, the timestamp system can be used to store the hash of the media along with the wallet address
</p>
<br> 

## _The initial idea for inputs to the system_
<br> 

![Initial idea for inputs to the system.](/images/initial_idea_for_-inputs_to_the_system.jpg)

## Restrictions/Rules:

### Restrictions:

<p>
1. On-chain ownership ≠ off-chain ownership
While blockchain can be used for verifying common truths on the chain, it cannot communicate or create accountability in the real world natively. This introduces security risks of the NFT and wallet holder because unauthorized access to the wallet cannot change the ownership on-chain, however can affect the user claiming to own the data submitted on-chain.

1. Ownership of an idea doesn’t necessarily mean its unique(because they are private).
While the proof of idea will be stored as a hash, the creator and idea can remain anonymous until ready to reveal the idea and/or identity. However since a hash as an output can be dramatically different, with even a slight change of input, multiple similar ideas can be time-stamped with little to no differences in their origins, effects, and uses over a period of time. The idea originators may believe they all have their unique ideas separately owned, while in reality, several similar ideas can already exist behind unique hashes of other timestamps. 
To foster accountability through transparency, and support the problem above, users will have an option to display their idea publicly. This can allow the user of the idea to blatantly claim an idea and the world can transparently see it is owned by the user/wallet.

1. AI model to automatically scan and flag media if it thinks its duplicate(future prospect)
</p>

## Data

<p>First, we need to define what is needed to do in order to know who was the first person to create a song or music. We would take three variables - artist name or nickname, media hash and media link. Then we take a hash of these three variables and store it on the blockchain with a timestamp on a smart contract. The rest of the files are stored off-chain.
</p>
![Data.](/images/data.jpg "This is a sample image.")

<br>

## Exceptions:

<p>
The system can only verify the origin of a media piece based on when it was first registered on the contract. This means that if the media originator was beaten by someone else to hash and store the media in the smart contract, they would be designated as the media’s originator. In short, blockchain is a common truth machine, not an absolute truth machine. It can only store and come to consensus on the input passed to it, but has no ability to find if the information entered was true or not.
</p>

### *For example:*

<p>
Alice can claim that media was first created by her but committed first to chain by Bob. Our system can’t resolve such conflicts and the burden of proof is on Alice to present some other proof of existence before the time Bob generated proof of origin.
</p>
<p>
Exact data privacy can be resolved automatically but if minor changes are made to the data while copying, manual intervention is required to determine if the copied data is derived from original work. In the future, this could be automated using AI to check file/media similarity and notify the originators of the content.
</p> 

## User Stories:

### Establish proof of origin

<p>
**User Story 1:** Alice clicks an original photo on 22 may 2010 and wants to establish proof of origin for her work.<br> 
Action: She will take her photo along with her address and generate a hash of it. This hash will be committed on the blockchain at block number X from her address via transaction Tx. She doesn’t **need** to reveal the photo at this time.<br> 
**Step** 1<br> 
YOU(creator address) came up with THIS(media) idea => hash<br> 
address + media => hash<br> 
**Step 2**<br> 
at THIS( hash committed on blockchain on block number X by transaction Tx) time.<br> 
</p>

### Enforcing proof of the existence

<p>
**User Story 2:** Alice sees Bob is claiming her photo as his own on 4 May 2020, she wants to challenge him.<br> 
Action: She will take her photo along with her address and generate a hash(hashA) of it and fetch transaction Tx on block number X proving she committed a hash(hashB) to the chain. If this hash matches the new hash she generated(hashA == hashB), it is definite proof that Alice had access to the photo as of Block X. If Bob fails to do the same with any block prior to X, he can’t prove that the photo he is claiming as he was in existence before 4 May 2010, when Alice clicked it.<br> 
**Step 1**<br> 
address + media => hash (generate hashA)<br> 
**Step 2**<br> 
fetch hash existing on blockchain at block number X (get hashB)<br> 
**Step 3**<br> 
If both hash match => the media has been existing since block X. (hashA == hashB?)<br> 
</p>
<p>
**User Story 3:** Alice wants to check all the media linked to her address<br> 
</p>

# Architecture

## Project Description

<p>This project will allow users to timestamp their ideas, inventions, and any media to permanently records its origin date, without actually having to reveal any information about the specific content deposited. An user can input any media, or its SHA256 hash, and permanently store its record on the Ethereum blockchain.<
</p>
<p>
Depending on the privacy importance of the media, it can be hashed using different methods(native computer vs web service), and can even be passed to the smart contract if it wanted to be shown as public(not recommended as processing power to hash content can be expensive on the blockchain).
</p>
<p>
Once its stored, anyone can check the wallet and its hash(es) publicly on the blockchain, without learning anything about the content itself.
<p>

## Top Level Description

<p>
As a user/group creates content and wants to record its creation, the timestamp system can be used to record the hash of the media content, wallet address, and block timestamp to publicly date the data.<br> 
Depending on the privacy importance of the media, it can be passed to the contract in several  way: <br>
1. Non private content: web service or can pass to smart contract(not recommended b/c processing power on the chain is expensive) 
1. Privately - Natively on computer(OS native service)
</p>

## Data

```
Data on-chain storage
hash(content + artist)

Events
	address, hash, tx id, block time, block number
	parsed at the time of firing and stored on the central db.

type Creator @entity {
  id: ID!
  address: Bytes!
  content: [Hash!]
  hashCount: BigInt!
}

type Hash @entity {
  id: ID!
  creator: Creator!
  hash: String!
  createdAt: BigInt!
  transactionHash: String!
  blockTime: BigInt!
}
```

<br>

## Functions
<p>
timestampContentPublic - Accepts the hashs of and public media link to the content. Stores the hash with the wallet address in a mapping<br>
<br>
timestampContentPublic - Accepts the hash of the content. Stores the hash with the wallet address in a mapping
<br>
getHashesUnderAddress = Returns the hash(es) allocated with the author address searched
</p>

## Diagram
![Diagram01.](/images/diagram_01.jpg)
<br> <br> 
![Diagram02.](/images/diagram_02.jpg)
<br> <br> 
![Diagram03.](/images/diagram_03.jpg)
<br> <br> 

## Tech Stack
![Tech Stack.](/images/tech.jpg)
<br> <br> 

## Project Plan
<p>
Please click here for  [Project plan link](https://app.ganttpro.com/shared/token/4c15ae0a07f517607d58afe7c8529f5aef0c9212992ef751ca9c63feef281cef/791561).
</p>