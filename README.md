# Elasticsearch Client for Atom

Elasticsearch Client allows you to build an Rest API request in Atom editor and view the response.

![overview](https://raw.githubusercontent.com/KunihikoKido/atom-elasticsearch-client/master/overview.gif)

## Using
You can send a body.

```json
{
  "query": {
    "match_all": {}
  }
}
```

Once you have a request ready, use shortcut ``Ctrl + Alt + S`` or open the Command Palette (Shift + Command + P) and enter ``Elasticsearch Search Request Body``.

## Settings
Settings (Atom/Open Your Config). edit ``config.cson``

*Example*
```yaml
"elasticsearch-client":
  baseUrl: "http://localhost:9200"
  index: "blog"
  docType: "posts"
  servers: [
    {
      baseUrl: "http://localhost:9200"
      index: "blog"
      docType: "posts"
    }
    {
      baseUrl: "http://localhost:9200"
      index: "twitter"
      docType: "tweets"
    }
  ]
```

You can switch the server, use ``Elasticsearch : Switch Server`` command.

## Snippets
Currently this should work in ``.json`` file

## Commands

### Command for Basic APIs

* Elasticsearch: Bulk
* Elasticsearch: Clear Scroll
* Elasticsearch: Count
* Elasticsearch: Count Percolate
* Elasticsearch: Create Document
* Elasticsearch: Delete By Query With Query Dsl
* Elasticsearch: Delete By Query With Simple Query
* Elasticsearch: Delete Document
* Elasticsearch: Delete Script
* Elasticsearch: Delete Search Template
* Elasticsearch: Exists Document
* Elasticsearch: Explain Document
* Elasticsearch: Field Stats
* Elasticsearch: Get Document
* Elasticsearch: Get Document Source
* Elasticsearch: Get Multiple Documents
* Elasticsearch: Get Script
* Elasticsearch: Get Search Template
* Elasticsearch: Index Document
* Elasticsearch: Info
* Elasticsearch: Multiple Percolate
* Elasticsearch: Multiple Search
* Elasticsearch: Multiple Termvectors
* Elasticsearch: Percolate
* Elasticsearch: Ping
* Elasticsearch: Put Script
* Elasticsearch: Put Search Template
* Elasticsearch: Scroll
* Elasticsearch: Search Exists
* Elasticsearch: Search Request Body
* Elasticsearch: Search Request Body Count
* Elasticsearch: Search Request Body Scan
* Elasticsearch: Search Shards
* Elasticsearch: Search Template
* Elasticsearch: Search Template Count
* Elasticsearch: Search Template Scan
* Elasticsearch: Search Simple Query
* Elasticsearch: Suggest
* Elasticsearch: Termvector
* Elasticsearch: Update Document

### Command for Cat APIs

* Elasticsearch: Cat Aliases
* Elasticsearch: Cat Allocation
* Elasticsearch: Cat Count
* Elasticsearch: Cat Fielddata
* Elasticsearch: Cat Health
* Elasticsearch: Cat Indices
* Elasticsearch: Cat Master
* Elasticsearch: Cat Nodes
* Elasticsearch: Cat Pending Tasks
* Elasticsearch: Cat Plugins
* Elasticsearch: Cat Recovery
* Elasticsearch: Cat Segments
* Elasticsearch: Cat Shards
* Elasticsearch: Cat Thread Pool

### Command for Cluster APIs

* Elasticsearch: Cluster Get Settings
* Elasticsearch: Cluster Health
* Elasticsearch: Cluster Pending Tasks
* Elasticsearch: Cluster Put Settings
* Elasticsearch: Cluster Reroute
* Elasticsearch: Cluster State
* Elasticsearch: Cluster Stats

### Command for Indices APIs

* Elasticsearch: Indices Analyze
* Elasticsearch: Indices Clear Cache
* Elasticsearch: Indices Close
* Elasticsearch: Indices Create
* Elasticsearch: Indices Delete
* Elasticsearch: Indices Delete Alias
* Elasticsearch: Indices Delete Mapping
* Elasticsearch: Indices Delete Template
* Elasticsearch: Indices Delete Warmer
* Elasticsearch: Indices Exists
* Elasticsearch: Indices Exists Alias
* Elasticsearch: Indices Exists Document Type
* Elasticsearch: Indices Exists Template
* Elasticsearch: Indices Flush
* Elasticsearch: Indices Flush Synced
* Elasticsearch: Indices Get
* Elasticsearch: Indices Get Alias
* Elasticsearch: Indices Get Field Mapping
* Elasticsearch: Indices Get Mapping
* Elasticsearch: Indices Get Settings
* Elasticsearch: Indices Get Template
* Elasticsearch: Indices Get Upgrade
* Elasticsearch: Indices Get Warmer
* Elasticsearch: Indices Open
* Elasticsearch: Indices Optimize
* Elasticsearch: Indices Put Alias
* Elasticsearch: Indices Put Mapping
* Elasticsearch: Indices Put Settings
* Elasticsearch: Indices Put Template
* Elasticsearch: Indices Put Warmer
* Elasticsearch: Indices Recovery
* Elasticsearch: Indices Refresh
* Elasticsearch: Indices Segments
* Elasticsearch: Indices Stats
* Elasticsearch: Indices Status
* Elasticsearch: Indices Update Aliases
* Elasticsearch: Indices Upgrade
* Elasticsearch: Indices Validate Query

### Command for Nodes APIs

* Elasticsearch: Nodes Hot Threads
* Elasticsearch: Nodes Info
* Elasticsearch: Nodes Shutdown All
* Elasticsearch: Nodes Shutdown Local
* Elasticsearch: Nodes Shutdown Master

### Command for Snapshot APIs

* Elasticsearch: Snapshot Create
* Elasticsearch: Snapshot Create Repository
* Elasticsearch: Snapshot Delete
* Elasticsearch: Snapshot Delete Repository
* Elasticsearch: Snapshot Get
* Elasticsearch: Snapshot Get Repository
* Elasticsearch: Snapshot Restore
* Elasticsearch: Snapshot Status
* Elasticsearch: Snapshot Verify Repository

### Helper Commands

* Elasticsearch: Helper Close Open Index
* Elasticsearch: Helper Convert Csv To Bulk Index Format
* Elasticsearch: Helper Reindex

### Command for User Settings

* Elasticsearch: Settings Show Active Server
* Elasticsearch: Settings Switch Server
