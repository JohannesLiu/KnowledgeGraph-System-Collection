# KowledgeGraph-System-Collection
## Introduction. 
This repository contains 3 Knowledge Graph Systems:
1. Academic Family Knowledge Graph
2. Mathematics Genealogy Knowledge Graph
3. Music Knowledge Graph

## Installation Procedure.
1. Download the neo4j and configure the environment. Modify the /neo_db/config.py to configure the account and password of the systems.
   1. Rocommend to use neo4j with docker:
    ```bash
      docker run --publish=7474:7474 --publish=7687:7687 --volume=$HOME/neo4j/data:/data neo4j
   ```
3. Switch to neo_ In the db directory, execute python create_graph.py to build the knowledge graph.
3. Download the ltp model.
4. In the KGQA directory, modify ltp.py to locate the directory where ltp model files are placed.
5. Run python app.py and open localhost: 5000 in the browser to view