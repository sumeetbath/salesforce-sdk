/**
 * This class provide the mockresponses for unit tests.<br>
 * mock responses are copied from IBM Watson Api Explorer.
 */
public class IBMWatsonMockResponses {
  public static String environment() {
    return '{"environment_id": "f822208e-e4c2-45f8-a0d6-c2be950fbcc8","name": "test_environment",'+
                        '"description": "Test environment", "created": "2016-06-16T10:56:54.957Z",'+
                          '"updated": "2017-05-16T13:56:54.957Z", "status": "active", "read_only": false,'+
                          '"index_capacity": {"documents": {"indexed": 0, "maximum_allowed": 1000000},'+
                          '"disk_usage": {"used_bytes": 0, "maximum_allowed_bytes": 99345920}}}';
  }
  public static String configuration() {
    return  '{'+
            '  "configuration_id": "448e3545-51ca-4530-a03b-6ff282ceac2e",'+
            '  "name": "IBM News",'+
            '  "created": "2015-08-24T18:42:25.324Z",'+
            '  "updated": "2015-08-24T18:42:25.324Z",'+
            '  "description": "A configuration useful for ingesting IBM press releases.",'+
            '  "conversions": {'+
            '    "html": {'+
            '      "exclude_tags_keep_content": ['+
            '        "span"'+
            '      ],'+
            '      "exclude_content": {'+
            '        "xpaths": ['+
            '          "/home"'+
            '        ]'+
            '      }'+
            '    },'+
            '    "json_normalizations": ['+
            '      {'+
            '        "operation": "move",'+
            '        "source_field": "extracted_metadata.title",'+
            '        "destination_field": "metadata.title"'+
            '      },'+
            '      {'+
            '        "operation": "move",'+
            '        "source_field": "extracted_metadata.author",'+
            '        "destination_field": "metadata.author"'+
            '      },'+
            '      {'+
            '        "operation": "remove",'+
            '        "source_field": "extracted_metadata"'+
            '      }'+
            '    ]'+
            '  },'+
            '  "enrichments": ['+
            '    {'+
            '      "source_field": "text",'+
            '      "destination_field": "alchemy_enriched_text",'+
            '      "enrichment": "alchemy_language",'+
            '      "options": {'+
            '        "extract": ["wert"],'+
            '        "showSourceText": true'+
            '      }'+
            '    },'+
            '    {'+
            '      "source_field": "alchemy_enriched_text.text",'+
            '      "destination_field": "sire_enriched_text",'+
            '      "enrichment": "alchemy_language",'+
            '      "options": {'+
            '        "extract": ["typed-rels"],'+
            '        "model": "ie-en-news"'+
            '      }'+
            '    }'+
            '  ],'+
            '  "normalizations": ['+
            '    {'+
            '      "operation": "move",'+
            '      "source_field": "metadata.title",'+
            '      "destination_field": "title"'+
            '    },'+
            '    {'+
            '      "operation": "move",'+
            '      "source_field": "metadata.author",'+
            '      "destination_field": "author"'+
            '    },'+
            '    {'+
            '      "operation": "move",'+
            '      "source_field": "alchemy_enriched_text.language",'+
            '      "destination_field": "language"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "html"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "alchemy_enriched_text.status"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "alchemy_enriched_text.text"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "sire_enriched_text.language"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "sire_enriched_text.model"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "sire_enriched_text.status"'+
            '    },'+
            '    {'+
            '      "operation": "remove_nulls"'+
            '    }'+
            '  ]'+
            '}';
  }

  public static String listConfigurationsResponse() {
    return '{'+
           ' "configurations": ['+
           '{'+
            '  "configuration_id": "448e3545-51ca-4530-a03b-6ff282ceac2e",'+
            '  "name": "IBM News",'+
            '  "created": "2015-08-24T18:42:25.324Z",'+
            '  "updated": "2015-08-24T18:42:25.324Z",'+
            '  "description": "A configuration useful for ingesting IBM press releases.",'+
            '  "conversions": {'+
            '    "html": {'+
            '      "exclude_tags_keep_content": ['+
            '        "span"'+
            '      ],'+
            '      "exclude_content": {'+
            '        "xpaths": ['+
            '          "/home"'+
            '        ]'+
            '      }'+
            '    },'+
            '    "json_normalizations": ['+
            '      {'+
            '        "operation": "move",'+
            '        "source_field": "extracted_metadata.title",'+
            '        "destination_field": "metadata.title"'+
            '      },'+
            '      {'+
            '        "operation": "move",'+
            '        "source_field": "extracted_metadata.author",'+
            '        "destination_field": "metadata.author"'+
            '      },'+
            '      {'+
            '        "operation": "remove",'+
            '        "source_field": "extracted_metadata"'+
            '      }'+
            '    ]'+
            '  },'+
            '  "enrichments": ['+
            '    {'+
            '      "source_field": "text",'+
            '      "destination_field": "alchemy_enriched_text",'+
            '      "enrichment": "alchemy_language",'+
            '      "options": {'+
            '        "extract": ["wert"],'+
            '        "showSourceText": true'+
            '      }'+
            '    },'+
            '    {'+
            '      "source_field": "alchemy_enriched_text.text",'+
            '      "destination_field": "sire_enriched_text",'+
            '      "enrichment": "alchemy_language",'+
            '      "options": {'+
            '        "extract": ["typed-rels"],'+
            '        "model": "ie-en-news"'+
            '      }'+
            '    }'+
            '  ],'+
            '  "normalizations": ['+
            '    {'+
            '      "operation": "move",'+
            '      "source_field": "metadata.title",'+
            '      "destination_field": "title"'+
            '    },'+
            '    {'+
            '      "operation": "move",'+
            '      "source_field": "metadata.author",'+
            '      "destination_field": "author"'+
            '    },'+
            '    {'+
            '      "operation": "move",'+
            '      "source_field": "alchemy_enriched_text.language",'+
            '      "destination_field": "language"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "html"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "alchemy_enriched_text.status"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "alchemy_enriched_text.text"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "sire_enriched_text.language"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "sire_enriched_text.model"'+
            '    },'+
            '    {'+
            '      "operation": "remove",'+
            '      "source_field": "sire_enriched_text.status"'+
            '    },'+
            '    {'+
            '      "operation": "remove_nulls"'+
            '    }'+
            '  ]'+
            '}'+
           ' ]'+
           '}';
  }

   public static String listCollectionFieldsResponse() {
    return '{'+
              '  "fields": ['+
              '    {'+
              '      "field": "warnings",'+
              '      "type": "nested"'+
              '    },'+
              '    {'+
              '      "field": "warnings.properties.description",'+
              '      "type": "string"'+
              '    },'+
              '    {'+
              '      "field": "warnings.properties.phase",'+
              '      "type": "string"'+
              '    },'+
              '    {'+
              '      "field": "warnings.properties.warning_id",'+
              '      "type": "string"'+
              '    }'+
              '  ]'+
              '}';
  }

  public static String listEnvironmentsResponse() {
    return '{'+
              '  "environments": ['+
              '    {'+
              '      "environment_id": "ecbda78e-fb06-40b1-a43f-a039fac0adc6",'+
              '      "name": "byod_environment",'+
              '      "description": "Private Data Environment",'+
              '      "created": "2017-07-14T12:54:40.985Z",'+
              '      "updated": "2017-07-14T12:54:40.985Z",'+
              '      "read_only": false'+
              '    },'+
              '    {'+
              '      "environment_id": "system",'+
              '      "name": "Watson System Environment",'+
              '      "description": "Watson System environment",'+
              '      "created": "2017-07-13T01:14:20.761Z",'+
              '      "updated": "2017-07-13T01:14:20.761Z",'+
              '      "read_only": true'+
              '    }'+
              '  ]'+
              '}';
  }

   public static String collection() {
    return  '{'+
            '   "collection_id": "800e58e4-198d-45eb-be87-74e1d6df4e96",'+
            '  "name": "test-collection",'+
            '  "configuration_id": "3c4fff84-1500-455c-b125-eaa2d319f6d3",'+
            '  "language": "de",'+
            '  "status": "active",'+
            '  "description": "A test collection to show as an example",'+
            '  "created": "2017-07-14T12:55:40.652Z",'+
            '  "updated": "2017-07-14T12:55:40.652Z",'+
            '  "document_counts": {'+
            '    "available": 0,'+
            '    "processing": 0,'+
            '    "failed": 0'+
            '  },'+
            '  "disk_usage": {'+
            '    "used_bytes": 260'+
            '  },'+
            '  "training_status": {'+
            '    "data_updated": null,'+
            '    "total_examples": 0,'+
            '    "sufficient_label_diversity": false,'+
            '    "processing": false,'+
            '    "minimum_examples_added": false,'+
            '    "successfully_trained": null,'+
            '    "available": false,'+
            '    "notices": 0,'+
            '    "minimum_queries_added": false'+
            '  }'+
            '}';
  }

  public static String listCollectionsResponse() {
    return '{ "collections": ['+
           '   {'+
           '     "collection_id": "f1360220-ea2d-4271-9d62-89a910b13c37",'+
           '     "name": "example",'+
           '     "description": "this is a demo collection",'+
           '     "created": "2015-08-24T18:42:25.324Z",'+
           '     "updated": "2015-08-24T18:42:25.324Z",'+
           '     "status": "active",'+
           '     "configuration_id": "6963be41-2dea-4f79-8f52-127c63c479b0",'+
           '     "language": "en"'+
           '   }'+
           ' ]'+
           '}';
  }

  public static String documentStatus() {
    return '{'+
            '  "document_id": "f1360220-ea2d-4271-9d62-89a910b13c37",'+
            '  "configuration_id": "e8b9d793-b163-452a-9373-bce07efb510b",'+
            '  "created": "2015-08-24T18:42:25.324Z",'+
            '  "updated": "2015-08-24T18:42:25.324Z",'+
            '  "status": "available with notices",'+
            '  "status_description": "Document is successfully ingested but was indexed with warnings",'+
            '  "filename": "instructions.html",'+
            '  "file_type": "html",'+
            '  "sha1": "de9f2c7fd25e1b3afad3e85a0bd17d9b100db4b3",'+
            '  "notices": ['+
            '    {'+
            '      "notice_id": "index_342",'+
            '      "created": "2015-08-24T18:42:25.324Z",'+
            '      "severity": "warning",'+
            '      "step": "indexing",'+
            '      "description": "something bad happened",'+
            '      "query_id": "f1360220-ea2d-4271-9d62-89a910b13c37",'+
            '      "document_id": "f1360220-ea2d-4271-9d62-89a910b13c37"'+
            '    }'+
            '  ]'+
            '}';
  }

  public static String queryResponse() {
    return '{'+
            '  "matching_results": 24,'+
            '  "results": ['+
            '    {'+
            '      "id": "watson-generated ID",'+
            '      "score": 1'+
            '    }'+
            '  ],'+
            '  "aggregations":[ {'+
            '    "term": {'+
            '      "results": ['+
            '        {'+
            '          "key": "active",'+
            '          "matching_results": 34'+
            '        }'+
            '      ]'+
            '    }'+
            '  }]'+
            '}';
  }

  public static String queryNoticesResponse() {
    return '{'+
            '  "matching_results": 24,'+
            '  "results": ['+
            '    {'+
            '      "id": "030ba125-29db-43f2-8552-f941ae30a7a8",'+
            '      "collection_id": "f1360220-ea2d-4271-9d62-89a910b13c37",'+
            '      "code": 200,'+
            '      "score": 1,'+
            '      "filename": "instructions.html",'+
            '      "file_type": "html",'+
            '      "sha1": "de9f2c7fd25e1b3afad3e85a0bd17d9b100db4b3",'+
            '      "notices": ['+
            '        {'+
            '          "notice_id": "xpath_not_found",'+
            '          "created": "2016-09-20T17:26:17.000Z",'+
            '          "document_id": "030ba125-29db-43f2-8552-f941ae30a7a8",'+
            '          "severity": "warning",'+
            '          "step": "html-to-html",'+
            '          "description": "The xpath expression boom was not found."'+
            '        }'+
            '      ]'+
            '    }'+
            '  ],'+
            '  "aggregations": [{'+
            '    "term": {'+
            '      "results": ['+
            '        {'+
            '          "key": "warning",'+
            '          "matching_results": 34'+
            '        }'+
            '      ]'+
            '    }'+
            '  }]'+
            '}';
  }

   public static String trainingQuery() {
    return  '{'+
            '  "query_id": "string",'+
            '  "natural_language_query": "string",'+
            '  "filter": "string",'+
            '  "examples": ['+
            '    {'+
            '      "document_id": "string",'+
            '      "cross_reference": "string",'+
            '      "relevance": 0'+
            '    }'+
            '  ]'+
            '}';
  }

  public static String trainingDataSet() {
    return  '{ "queries": [{'+
            '  "query_id": "string",'+
            '  "natural_language_query": "string",'+
            '  "filter": "string",'+
            '  "examples": ['+
            '    {'+
            '      "document_id": "string",'+
            '      "cross_reference": "string",'+
            '      "relevance": 0'+
            '    }'+
            '  ]'+
            '}]}';
  }

  public static String trainingExample() {
    return  '{'+
            '  "document_id": "string",'+
            '  "cross_reference": "string",'+
            '  "relevance": 2'+
            '}';
  }

  public static String workspace() {
    return '{' +
        '"name": "test_workspace",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"language": "en",' +
        '"metadata": {' +
        '"code": "test_code"' +
        '},' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"description": "Description of test_workspace",' +
        '"status": "Available",' +
        '"workspace_id": "123456789",' +
        '"learning_opt_out": false' +
        '}';
  }

  public static String workspaceExport() {
    return '{' +
        '"name": "test_workspace",' +
        '"description": "Description of test_workspace",' +
        '"language": "en",' +
        '"metadata": {' +
        '"code": "test_code"' +
        '},' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"workspace_id": "123456789",' +
        '"status": "Available",' +
        '"learning_opt_out": false,' +
        '"intents": [' +
        '{' +
        '"intent": "test_intent",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"description": "Description of test_intent",' +
        '"examples": [' +
        '{' +
        '"text": "Example of test_intent",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        ']' +
        '}' +
        '],' +
        '"entities": [' +
        '{' +
        '"entity": "test_entity",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"description": "Description of test_entity",' +
        '"values": [' +
        '{' +
        '"value": "Value of test_entity",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"synonyms": [' +
        '"Synonym for value of test_entity"' +
        ']' +
        '}' +
        ']' +
        '}' +
        '],' +
        '"counterexamples": [' +
        '{' +
        '"text": "Counterexample for test_workspace",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        '],' +
        '"dialog_nodes": []' +
        '}';
  }

  public static String workspaceCollection() {
    return '{' +
        '"workspaces": [' +
        '{' +
        '"name": "test_workspace",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"language": "en",' +
        '"metadata": {' +
        '"code": "test_code"' +
        '},' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"description": "Description of test_workspace",' +
        '"workspace_id": "123456789",' +
        '"learning_opt_out": false' +
        '}' +
        '],' +
        '"pagination": {' +
        '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1",' +
        '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1",' +
        '"total": 1,' +
        '"matched": 1' +
        '}' +
        '}';
  }

  public static String value() {
    return '{' +
        '"value": "Value of test_entity",' +
        '"metadata": {' +
        '"code": "test_code"' +
        '},' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"patterns": [' +
        '"test_pattern"' +
        '],' +
        '"synonyms": [' +
        '"Synonym for value of test_entity"' +
        ']' +
        '}';
  }

  public static String valueCollection() {
    return '{' +
        '"values": [' +
        '{' +
        '"value": "Value of test_entity",' +
        '"metadata": {' +
        '"code": "test_code"' +
        '},' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"patterns": [' +
        '"test_pattern"' +
        '],' +
        '"synonyms": [' +
        '"Synonym for value of test_entity"' +
        ']' +
        '}' +
        '],' +
        '"pagination": {' +
        '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1",' +
        '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1",' +
        '"total": 1,' +
        '"matched": 1' +
        '}' +
        '}';
  }

  public static String messageResponse() {
    return '{' +
        '"intents": [' +
        '{' +
          '"intent": "test_intent",' +
          '"confidence": 0.314159' +
        '}' +
        '],' +
        '"entities": [' +
        '{' +
          '"entity": "test_entity",' +
          '"location": [' +
            '10' +
          '],' +
          '"value": "Value of test_entity",' +
          '"confidence": 0.314159' +
        '}' +
        '],' +
        '"input": {' +
          '"text": "This is a message"' +
        '},' +
        '"alternate_intents": false,' +
        '"context": {' +
          '"conversation_id": "0000000",' +
          '"system": {' +
            '"dialog_turn_counter": "5"' +
          '}' +
        '},' +
        '"output": {' +
          '"text": [' +
            '"This is a response"' +
          '],' +
          '"nodes_visited": [' +
            '"node_1"' +
          '],' +
          '"log_messages": [' +
          '{' +
            '"level": "warn",' +
            '"msg": "test_warning"' +
          '}' +
          ']' +
        '}' +
        '}';
  }

  public static String intent() {
    return '{' +
        '"intent": "test_intent",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"description": "Description of test_intent"' +
        '}';
  }

  public static String intentExport() {
    return '{' +
        '"intent": "test_intent",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"description": "Description of test_intent",' +
        '"examples": [' +
        '{' +
          '"text": "Example of test_intent",' +
          '"created": "2015-12-06T23:53:59.153Z",' +
          '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        ']' +
        '}';
  }

  public static String intentCollection() {
    return '{' +
        '"intents": [' +
        '{' +
          '"intent": "test_intent",' +
          '"created": "2015-12-06T23:53:59.153Z",' +
          '"updated": "2017-10-18T15:44:56.800",' +
          '"description": "Description of test_intent",' +
          '"examples": [' +
          '{' +
            '"text": "Example of test_intent",' +
            '"created": "2015-12-06T23:53:59.153Z",' +
            '"updated": "2017-10-18T15:44:56.800"' +
          '}' +
          ']' +
        '}' +
        '],' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1",' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1",' +
          '"total": 1,' +
          '"matched": 1' +
        '}' +
        '}';
  }

  public static String example() {
    return '{' +
        '"text": "Example of test_intent",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}';
  }

  public static String exampleCollection() {
    return '{' +
        '"examples": [' +
        '{' +
          '"text": "Example of test_intent",' +
          '"created": "2015-12-06T23:53:59.153Z",' +
          '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        '],' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1",' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1",' +
          '"total": 1,' +
          '"matched": 1' +
        '}' +
        '}';
  }

  public static String entity() {
    return '{' +
        '"entity": "test_entity",' +
        '"description": "Description of test_entity",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"metadata": {' +
          '"code": "test_code"' +
        '},' +
        '"fuzzy_match": false' +
        '}';
  }

  public static String entityExport() {
    return '{' +
        '"entity": "test_entity",' +
        '"description": "Description of test_entity",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"metadata": {' +
        '"code": "test_code"' +
        '},' +
        '"fuzzy_match": false,' +
        '"values": [' +
        '{' +
          '"value": "Value of test_entity",' +
          '"metadata": {' +
            '"code": "test_code"' +
          '},' +
          '"created": "2015-12-06T23:53:59.153Z",' +
          '"updated": "2017-10-18T15:44:56.800",' +
          '"patterns": [' +
            '"test_pattern"' +
          '],' +
          '"synonyms": [' +
            '"Synonym for value of test_entity"' +
          ']' +
        '}' +
        ']' +
        '}';
  }

  public static String entityCollection() {
    return '{' +
        '"entities": [' +
        '{' +
          '"entity": "test_entity",' +
          '"description": "Description of test_entity",' +
          '"created": "2015-12-06T23:53:59.153Z",' +
          '"updated": "2017-10-18T15:44:56.800",' +
          '"metadata": {' +
            '"code": "test_code"' +
          '},' +
          '"fuzzy_match": false,' +
          '"values": [' +
          '{' +
            '"value": "Value of test_entity",' +
            '"metadata": {' +
            '"code": "test_code"' +
            '},' +
            '"created": "2015-12-06T23:53:59.153Z",' +
            '"updated": "2017-10-18T15:44:56.800",' +
            '"patterns": [' +
            '"test_pattern"' +
            '],' +
            '"synonyms": [' +
            '"Synonym for value of test_entity"' +
            ']' +
          '}' +
          ']' +
        '}' +
        '],' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1",' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1",' +
          '"total": 1,' +
          '"matched": 1' +
        '}' +
        '}';
  }

  public static String synonym() {
    return '{' +
        '"synonym": "Synonym for value of test_entity",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}';
  }

  public static String synonymCollection() {
    return '{' +
        '"synonyms": [' +
        '{' +
          '"synonym": "Synonym for value of test_entity",' +
          '"created": "2015-12-06T23:53:59.153Z",' +
          '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        '],' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1",' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1",' +
          '"total": 1,' +
          '"matched": 1' +
        '}' +
        '}';
  }

  public static String dialogNode() {
    return '{' +
        '"dialog_node": "dialog_node",' +
        '"description": "Description of dialog_node",' +
        '"title": "dialog_node_title",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"conditions": "#test",' +
        '"parent": "parent",' +
        '"previous_sibling": "sibling",' +
        '"next_step": {' +
          '"dialog_node": "next_dialog_node",' +
          '"behavior": "behavior",' +
          '"selector": "body"' +
        '},' +
        '"output": {' +
          '"text": "output text"' +
        '},' +
        '"metadata": {' +
          '"code": "test_code"' +
        '},' +
        '"context": {' +
          '"context": "context_val"' +
        '},' +
        '"actions": [' +
        '{' +
          '"name": "action",' +
          '"type": "server",' +
          '"parameters": {' +
            '"param_1": "param_1_val"' +
          '},' +
          '"result_variable": "action_var",' +
          '"credentials": "creds"' +
        '}' +
        '],' +
        '"type": "standard",' +
        '"event_name": "dialog_node_event",' +
        '"variable": "dialog_node_var"' +
        '}';
  }

  public static String dialogNodeCollection() {
    return '{' +
        '"dialog_nodes": [' +
        '{' +
        '"dialog_node": "dialog_node",' +
        '"description": "Description of dialog_node",' +
        '"title": "dialog_node_title",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800",' +
        '"conditions": "#test",' +
        '"parent": "parent",' +
        '"previous_sibling": "sibling",' +
        '"next_step": {' +
        '"dialog_node": "next_dialog_node",' +
        '"behavior": "behavior",' +
        '"selector": "body"' +
        '},' +
        '"output": {' +
        '"text": "output text"' +
        '},' +
        '"metadata": {' +
        '"code": "test_code"' +
        '},' +
        '"context": {' +
        '"context": "context_val"' +
        '},' +
        '"actions": [' +
        '{' +
        '"name": "action",' +
        '"type": "server",' +
        '"parameters": {' +
        '"param_1": "param_1_val"' +
        '},' +
        '"result_variable": "action_var",' +
        '"credentials": "creds"' +
        '}' +
        '],' +
        '"type": "standard",' +
        '"event_name": "dialog_node_event",' +
        '"variable": "dialog_node_var"' +
        '}' +
        '],' +
        '"pagination": {' +
        '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1",' +
        '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1",' +
        '"total": 1,' +
        '"matched": 1' +
        '}' +
        '}';
  }

  public static String logCollection() {
    return '{' +
        '"logs": [' +
        '{' +
          '"request": {' +
            '"input": {' +
            '"text": "This is a message"' +
            '},' +
            '"context": {}' +
          '},' +
          '"response": {' +
            '"intents": [' +
            '{' +
            '"intent": "test_intent",' +
            '"confidence": 0.314159' +
            '}' +
            '],' +
            '"entities": [' +
            '{' +
            '"entity": "test_entity",' +
            '"location": [' +
              '10' +
            '],' +
            '"value": "Value of test_entity",' +
            '"confidence": 0.314159' +
            '}' +
            '],' +
            '"input": {' +
            '"text": "This is a message"' +
            '},' +
            '"alternate_intents": false,' +
            '"context": {' +
            '"conversation_id": "0000000",' +
            '"system": {' +
              '"dialog_turn_counter": "5"' +
            '}' +
            '},' +
            '"output": {' +
            '"text": [' +
              '"This is a response"' +
            '],' +
            '"nodes_visited": [' +
              '"node_1"' +
            '],' +
            '"log_messages": [' +
            '{' +
              '"level": "warn",' +
              '"msg": "test_warning"' +
            '}' +
            ']' +
            '}' +
          '},' +
          '"language": "en",' +
          '"workspace_id": "123456789",' +
          '"request_timestamp": "2017-12-06T23:53:59.153Z",' +
          '"response_timestamp": "2017-12-06T23:54:59.153Z",' +
          '"log_id": "987654321"' +
        '}' +
        '],' +
        '"pagination": {' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1",' +
          '"matched": 1' +
        '}' +
      '}';
  }

  public static String counterexample() {
    return '{' +
        '"text": "Counterexample for test_workspace",' +
        '"created": "2015-12-06T23:53:59.153Z",' +
        '"updated": "2017-10-18T15:44:56.800"' +
        '}';
  }

  public static String counterexampleCollection() {
    return '{' +
        '"counterexamples": [' +
        '{' +
          '"text": "Counterexample for test_workspace",' +
          '"created": "2015-12-06T23:53:59.153Z",' +
          '"updated": "2017-10-18T15:44:56.800"' +
        '}' +
        '],' +
        '"pagination": {' +
          '"refresh_url": "/v1/workspaces?version=2016-01-24&page_limit=1",' +
          '"next_url": "/v1/workspaces?cursor=base64=&version=2016-01-24&page_limit=1",' +
          '"total": 1,' +
          '"matched": 1' +
        '}' +
        '}';
  }
  public static String documentAccepted() {
    return '{' +
            '"document_id": "f1360220-ea2d-4271-9d62-89a910b13c37",' +
            '"status": "processing"' +
           '}';
  }
  
  public static String testDocument() {
    return  '{' +
            '  "configuration_id": "e8b9d793-b163-452a-9373-bce07efb510b",' +
            '  "status": "completed",' +
            ' "enriched_field_units": 5,' +
            '  "original_media_type": "text/html",' +
            '  "snapshots": [' +
            '    {' +
            '      "step": "html_input",' +
            '      "snapshot": {' +
            '        "html": "<html><body>test</body></html>"' +
            '      }' +
            '    },' +
            '    {' +
            '      "step": "html_output",' +
            '      "snapshot": {' +
            '        "html": "<html><body>test</body></html>"' +
            '      }' +
            '    },' +
            '    {' +
            '      "step": "json_output",' +
            '      "snapshot": {' +
            '        "text": "test",' +
            '        "html": "<html><body>test</body></html>",' +
            '        "metadata": {' +
            '          "title": "Press Release 2014-01-09",' +
            '          "category": "news"' +
            '        },' +
            '        "extracted_metadata": {' +
            '          "title": "IBM Forms New Watson Group to Meet Growing Demand for Cognitive Innovations",' +
            '          "author": "Jake Bake"' +
            '        }' +
            '      }' +
            '    },' +
            '    {' +
            '      "step": "json_normalizations_output",' +
            '      "snapshot": {' +
            '        "text": "test",' +
            '        "html": "<html><body>test</body></html>",' +
            '        "metadata": {' +
            '          "title": "test",' +
            '          "author": "Jake Bake",' +
            '          "category": "news"' +
            '        }' +
            '      }' +
            '    },' +
            '    {' +
            '      "step": "enrichments_output",' +
            '      "snapshot": {' +
            '        "html": "<html><body>test</body></html>",' +
            '        "text": "test",' +
            '        "metadata": {' +
            '          "title": "IBM Forms New Watson Group to Meet Growing Demand for Cognitive Innovations",' +
            '          "author": "Jake Bake",' +
            '          "category": "news"' +
            '        },' +
            '        "alchemy_enriched_text": {' +
            '          "status": "OK",' +
            '          "language": "english",' +
            '          "text": "test",' +
            '          "keywords": [' +
            '            {' +
            '            "relevance": 0.978167,' +
            '            "text": "IBM Watson Group"' +
            '            },' +
            '            {' +
            '            "relevance": 0.432563,' +
            '            "text": "products"' +
            '            }' +
            '          ]' +
            '        },' +
            '        "sire_enriched_text": {' +
            '          "status": "OK",' +
            '          "language": "english",' +
            '          "model": "ie-en-news",' +
            '          "typedRelations": [' +
            '            {' +
            '            "arguments": [' +
            '              {' +
            '                "entities": [' +
            '                  {' +
            '                    "id": "-E3",' +
            '                    "text": "Silicon Alley",' +
            '                    "type": "GeopoliticalEntity"' +
            '                  }' +
            '                ],' +
            '                "part": "first",' +
            '                "text": "Silicon Alley"' +
            '              }' +
            '            ],' +
            '            "score": "0.898437",' +
            '            "sentence": "test",' +
            '            "type": "locatedAt"' +
            '            }' +
            '          ]' +
            '        }' +
            '      }' +
            '    },' +
            '    {' +
            '     "step": "normalizations_output",' +
            '      "snapshot": {' +
            '        "title": "IBM Forms New Watson Group to Meet Growing Demand for Cognitive Innovations",' +
            '        "author": "Jake Bake",' +
            '        "language": "english",' +
            '        "text": "test",' +
            '        "alchemy_enriched_text": {' +
            '          "keywords": [' +
            '            {' +
            '            "relevance": 0.978167,' +
            '            "text": "IBM Watson Group"' +
            '            },' +
            '            {' +
            '            "relevance": 0.432563,' +
            '            "text": "products"' +
            '            }' +
            '          ]' +
            '        },' +
            '        "sire_enriched_text": {' +
            '          "typedRelations": [' +
            '            {' +
            '            "arguments": [' +
            '              {' +
            '                "entities": [' +
            '                  {' +
            '                    "id": "-E3",' +
            '                    "text": "Silicon Alley",' +
            '                    "type": "GeopoliticalEntity"' +
            '                  }' +
            '                ],' +
            '                "part": "first",' +
            '                "text": "Silicon Alley"' +
            '              }' +
            '            ],' +
            '            "score": "0.898437",' +
            '            "sentence": "test",' +
            '            "type": "locatedAt"' +
            '            }' +
            '          ]' +
            '        }' +
            '      }' +
            '    }' +
            '  ],' +
            '  "notices": [' +
            '    {' +
            '      "notice_id": "xpath_not_found",' +
            '      "severity": "warning",' +
            '      "step": "html-to-html",' +
            '      "description": "xpath not found"' +
            '    }' +
            '  ]' +
            '}';
  }
}