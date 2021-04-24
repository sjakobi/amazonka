{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Comprehend
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Comprehend where

import Data.Proxy
import Network.AWS.Comprehend
import Test.AWS.Comprehend.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestStopSentimentDetectionJob $
--             stopSentimentDetectionJob
--
--         , requestStartEventsDetectionJob $
--             startEventsDetectionJob
--
--         , requestCreateEndpoint $
--             createEndpoint
--
--         , requestStartSentimentDetectionJob $
--             startSentimentDetectionJob
--
--         , requestStopEventsDetectionJob $
--             stopEventsDetectionJob
--
--         , requestListEntityRecognizers $
--             listEntityRecognizers
--
--         , requestBatchDetectSentiment $
--             batchDetectSentiment
--
--         , requestDeleteEntityRecognizer $
--             deleteEntityRecognizer
--
--         , requestDescribeKeyPhrasesDetectionJob $
--             describeKeyPhrasesDetectionJob
--
--         , requestListDominantLanguageDetectionJobs $
--             listDominantLanguageDetectionJobs
--
--         , requestStopKeyPhrasesDetectionJob $
--             stopKeyPhrasesDetectionJob
--
--         , requestListDocumentClassifiers $
--             listDocumentClassifiers
--
--         , requestCreateEntityRecognizer $
--             createEntityRecognizer
--
--         , requestStartKeyPhrasesDetectionJob $
--             startKeyPhrasesDetectionJob
--
--         , requestListEventsDetectionJobs $
--             listEventsDetectionJobs
--
--         , requestListSentimentDetectionJobs $
--             listSentimentDetectionJobs
--
--         , requestDetectSyntax $
--             detectSyntax
--
--         , requestStartDocumentClassificationJob $
--             startDocumentClassificationJob
--
--         , requestDetectKeyPhrases $
--             detectKeyPhrases
--
--         , requestDescribeEndpoint $
--             describeEndpoint
--
--         , requestBatchDetectEntities $
--             batchDetectEntities
--
--         , requestListTopicsDetectionJobs $
--             listTopicsDetectionJobs
--
--         , requestUntagResource $
--             untagResource
--
--         , requestBatchDetectDominantLanguage $
--             batchDetectDominantLanguage
--
--         , requestStopTrainingDocumentClassifier $
--             stopTrainingDocumentClassifier
--
--         , requestDescribeEntityRecognizer $
--             describeEntityRecognizer
--
--         , requestDescribePiiEntitiesDetectionJob $
--             describePiiEntitiesDetectionJob
--
--         , requestTagResource $
--             tagResource
--
--         , requestListKeyPhrasesDetectionJobs $
--             listKeyPhrasesDetectionJobs
--
--         , requestDescribeDominantLanguageDetectionJob $
--             describeDominantLanguageDetectionJob
--
--         , requestStopEntitiesDetectionJob $
--             stopEntitiesDetectionJob
--
--         , requestStopPiiEntitiesDetectionJob $
--             stopPiiEntitiesDetectionJob
--
--         , requestDescribeDocumentClassifier $
--             describeDocumentClassifier
--
--         , requestStopTrainingEntityRecognizer $
--             stopTrainingEntityRecognizer
--
--         , requestStartEntitiesDetectionJob $
--             startEntitiesDetectionJob
--
--         , requestStartPiiEntitiesDetectionJob $
--             startPiiEntitiesDetectionJob
--
--         , requestListEndpoints $
--             listEndpoints
--
--         , requestDeleteEndpoint $
--             deleteEndpoint
--
--         , requestUpdateEndpoint $
--             updateEndpoint
--
--         , requestDescribeEventsDetectionJob $
--             describeEventsDetectionJob
--
--         , requestDetectPiiEntities $
--             detectPiiEntities
--
--         , requestClassifyDocument $
--             classifyDocument
--
--         , requestDetectDominantLanguage $
--             detectDominantLanguage
--
--         , requestListDocumentClassificationJobs $
--             listDocumentClassificationJobs
--
--         , requestDescribeTopicsDetectionJob $
--             describeTopicsDetectionJob
--
--         , requestListEntitiesDetectionJobs $
--             listEntitiesDetectionJobs
--
--         , requestCreateDocumentClassifier $
--             createDocumentClassifier
--
--         , requestListPiiEntitiesDetectionJobs $
--             listPiiEntitiesDetectionJobs
--
--         , requestDeleteDocumentClassifier $
--             deleteDocumentClassifier
--
--         , requestDescribeDocumentClassificationJob $
--             describeDocumentClassificationJob
--
--         , requestStopDominantLanguageDetectionJob $
--             stopDominantLanguageDetectionJob
--
--         , requestDescribeEntitiesDetectionJob $
--             describeEntitiesDetectionJob
--
--         , requestStartDominantLanguageDetectionJob $
--             startDominantLanguageDetectionJob
--
--         , requestDetectSentiment $
--             detectSentiment
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestDetectEntities $
--             detectEntities
--
--         , requestDescribeSentimentDetectionJob $
--             describeSentimentDetectionJob
--
--         , requestBatchDetectSyntax $
--             batchDetectSyntax
--
--         , requestBatchDetectKeyPhrases $
--             batchDetectKeyPhrases
--
--         , requestStartTopicsDetectionJob $
--             startTopicsDetectionJob
--
--           ]

--     , testGroup "response"
--         [ responseStopSentimentDetectionJob $
--             stopSentimentDetectionJobResponse
--
--         , responseStartEventsDetectionJob $
--             startEventsDetectionJobResponse
--
--         , responseCreateEndpoint $
--             createEndpointResponse
--
--         , responseStartSentimentDetectionJob $
--             startSentimentDetectionJobResponse
--
--         , responseStopEventsDetectionJob $
--             stopEventsDetectionJobResponse
--
--         , responseListEntityRecognizers $
--             listEntityRecognizersResponse
--
--         , responseBatchDetectSentiment $
--             batchDetectSentimentResponse
--
--         , responseDeleteEntityRecognizer $
--             deleteEntityRecognizerResponse
--
--         , responseDescribeKeyPhrasesDetectionJob $
--             describeKeyPhrasesDetectionJobResponse
--
--         , responseListDominantLanguageDetectionJobs $
--             listDominantLanguageDetectionJobsResponse
--
--         , responseStopKeyPhrasesDetectionJob $
--             stopKeyPhrasesDetectionJobResponse
--
--         , responseListDocumentClassifiers $
--             listDocumentClassifiersResponse
--
--         , responseCreateEntityRecognizer $
--             createEntityRecognizerResponse
--
--         , responseStartKeyPhrasesDetectionJob $
--             startKeyPhrasesDetectionJobResponse
--
--         , responseListEventsDetectionJobs $
--             listEventsDetectionJobsResponse
--
--         , responseListSentimentDetectionJobs $
--             listSentimentDetectionJobsResponse
--
--         , responseDetectSyntax $
--             detectSyntaxResponse
--
--         , responseStartDocumentClassificationJob $
--             startDocumentClassificationJobResponse
--
--         , responseDetectKeyPhrases $
--             detectKeyPhrasesResponse
--
--         , responseDescribeEndpoint $
--             describeEndpointResponse
--
--         , responseBatchDetectEntities $
--             batchDetectEntitiesResponse
--
--         , responseListTopicsDetectionJobs $
--             listTopicsDetectionJobsResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseBatchDetectDominantLanguage $
--             batchDetectDominantLanguageResponse
--
--         , responseStopTrainingDocumentClassifier $
--             stopTrainingDocumentClassifierResponse
--
--         , responseDescribeEntityRecognizer $
--             describeEntityRecognizerResponse
--
--         , responseDescribePiiEntitiesDetectionJob $
--             describePiiEntitiesDetectionJobResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListKeyPhrasesDetectionJobs $
--             listKeyPhrasesDetectionJobsResponse
--
--         , responseDescribeDominantLanguageDetectionJob $
--             describeDominantLanguageDetectionJobResponse
--
--         , responseStopEntitiesDetectionJob $
--             stopEntitiesDetectionJobResponse
--
--         , responseStopPiiEntitiesDetectionJob $
--             stopPiiEntitiesDetectionJobResponse
--
--         , responseDescribeDocumentClassifier $
--             describeDocumentClassifierResponse
--
--         , responseStopTrainingEntityRecognizer $
--             stopTrainingEntityRecognizerResponse
--
--         , responseStartEntitiesDetectionJob $
--             startEntitiesDetectionJobResponse
--
--         , responseStartPiiEntitiesDetectionJob $
--             startPiiEntitiesDetectionJobResponse
--
--         , responseListEndpoints $
--             listEndpointsResponse
--
--         , responseDeleteEndpoint $
--             deleteEndpointResponse
--
--         , responseUpdateEndpoint $
--             updateEndpointResponse
--
--         , responseDescribeEventsDetectionJob $
--             describeEventsDetectionJobResponse
--
--         , responseDetectPiiEntities $
--             detectPiiEntitiesResponse
--
--         , responseClassifyDocument $
--             classifyDocumentResponse
--
--         , responseDetectDominantLanguage $
--             detectDominantLanguageResponse
--
--         , responseListDocumentClassificationJobs $
--             listDocumentClassificationJobsResponse
--
--         , responseDescribeTopicsDetectionJob $
--             describeTopicsDetectionJobResponse
--
--         , responseListEntitiesDetectionJobs $
--             listEntitiesDetectionJobsResponse
--
--         , responseCreateDocumentClassifier $
--             createDocumentClassifierResponse
--
--         , responseListPiiEntitiesDetectionJobs $
--             listPiiEntitiesDetectionJobsResponse
--
--         , responseDeleteDocumentClassifier $
--             deleteDocumentClassifierResponse
--
--         , responseDescribeDocumentClassificationJob $
--             describeDocumentClassificationJobResponse
--
--         , responseStopDominantLanguageDetectionJob $
--             stopDominantLanguageDetectionJobResponse
--
--         , responseDescribeEntitiesDetectionJob $
--             describeEntitiesDetectionJobResponse
--
--         , responseStartDominantLanguageDetectionJob $
--             startDominantLanguageDetectionJobResponse
--
--         , responseDetectSentiment $
--             detectSentimentResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseDetectEntities $
--             detectEntitiesResponse
--
--         , responseDescribeSentimentDetectionJob $
--             describeSentimentDetectionJobResponse
--
--         , responseBatchDetectSyntax $
--             batchDetectSyntaxResponse
--
--         , responseBatchDetectKeyPhrases $
--             batchDetectKeyPhrasesResponse
--
--         , responseStartTopicsDetectionJob $
--             startTopicsDetectionJobResponse
--
--           ]
--     ]

-- Requests

requestStopSentimentDetectionJob :: StopSentimentDetectionJob -> TestTree
requestStopSentimentDetectionJob =
  req
    "StopSentimentDetectionJob"
    "fixture/StopSentimentDetectionJob.yaml"

requestStartEventsDetectionJob :: StartEventsDetectionJob -> TestTree
requestStartEventsDetectionJob =
  req
    "StartEventsDetectionJob"
    "fixture/StartEventsDetectionJob.yaml"

requestCreateEndpoint :: CreateEndpoint -> TestTree
requestCreateEndpoint =
  req
    "CreateEndpoint"
    "fixture/CreateEndpoint.yaml"

requestStartSentimentDetectionJob :: StartSentimentDetectionJob -> TestTree
requestStartSentimentDetectionJob =
  req
    "StartSentimentDetectionJob"
    "fixture/StartSentimentDetectionJob.yaml"

requestStopEventsDetectionJob :: StopEventsDetectionJob -> TestTree
requestStopEventsDetectionJob =
  req
    "StopEventsDetectionJob"
    "fixture/StopEventsDetectionJob.yaml"

requestListEntityRecognizers :: ListEntityRecognizers -> TestTree
requestListEntityRecognizers =
  req
    "ListEntityRecognizers"
    "fixture/ListEntityRecognizers.yaml"

requestBatchDetectSentiment :: BatchDetectSentiment -> TestTree
requestBatchDetectSentiment =
  req
    "BatchDetectSentiment"
    "fixture/BatchDetectSentiment.yaml"

requestDeleteEntityRecognizer :: DeleteEntityRecognizer -> TestTree
requestDeleteEntityRecognizer =
  req
    "DeleteEntityRecognizer"
    "fixture/DeleteEntityRecognizer.yaml"

requestDescribeKeyPhrasesDetectionJob :: DescribeKeyPhrasesDetectionJob -> TestTree
requestDescribeKeyPhrasesDetectionJob =
  req
    "DescribeKeyPhrasesDetectionJob"
    "fixture/DescribeKeyPhrasesDetectionJob.yaml"

requestListDominantLanguageDetectionJobs :: ListDominantLanguageDetectionJobs -> TestTree
requestListDominantLanguageDetectionJobs =
  req
    "ListDominantLanguageDetectionJobs"
    "fixture/ListDominantLanguageDetectionJobs.yaml"

requestStopKeyPhrasesDetectionJob :: StopKeyPhrasesDetectionJob -> TestTree
requestStopKeyPhrasesDetectionJob =
  req
    "StopKeyPhrasesDetectionJob"
    "fixture/StopKeyPhrasesDetectionJob.yaml"

requestListDocumentClassifiers :: ListDocumentClassifiers -> TestTree
requestListDocumentClassifiers =
  req
    "ListDocumentClassifiers"
    "fixture/ListDocumentClassifiers.yaml"

requestCreateEntityRecognizer :: CreateEntityRecognizer -> TestTree
requestCreateEntityRecognizer =
  req
    "CreateEntityRecognizer"
    "fixture/CreateEntityRecognizer.yaml"

requestStartKeyPhrasesDetectionJob :: StartKeyPhrasesDetectionJob -> TestTree
requestStartKeyPhrasesDetectionJob =
  req
    "StartKeyPhrasesDetectionJob"
    "fixture/StartKeyPhrasesDetectionJob.yaml"

requestListEventsDetectionJobs :: ListEventsDetectionJobs -> TestTree
requestListEventsDetectionJobs =
  req
    "ListEventsDetectionJobs"
    "fixture/ListEventsDetectionJobs.yaml"

requestListSentimentDetectionJobs :: ListSentimentDetectionJobs -> TestTree
requestListSentimentDetectionJobs =
  req
    "ListSentimentDetectionJobs"
    "fixture/ListSentimentDetectionJobs.yaml"

requestDetectSyntax :: DetectSyntax -> TestTree
requestDetectSyntax =
  req
    "DetectSyntax"
    "fixture/DetectSyntax.yaml"

requestStartDocumentClassificationJob :: StartDocumentClassificationJob -> TestTree
requestStartDocumentClassificationJob =
  req
    "StartDocumentClassificationJob"
    "fixture/StartDocumentClassificationJob.yaml"

requestDetectKeyPhrases :: DetectKeyPhrases -> TestTree
requestDetectKeyPhrases =
  req
    "DetectKeyPhrases"
    "fixture/DetectKeyPhrases.yaml"

requestDescribeEndpoint :: DescribeEndpoint -> TestTree
requestDescribeEndpoint =
  req
    "DescribeEndpoint"
    "fixture/DescribeEndpoint.yaml"

requestBatchDetectEntities :: BatchDetectEntities -> TestTree
requestBatchDetectEntities =
  req
    "BatchDetectEntities"
    "fixture/BatchDetectEntities.yaml"

requestListTopicsDetectionJobs :: ListTopicsDetectionJobs -> TestTree
requestListTopicsDetectionJobs =
  req
    "ListTopicsDetectionJobs"
    "fixture/ListTopicsDetectionJobs.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestBatchDetectDominantLanguage :: BatchDetectDominantLanguage -> TestTree
requestBatchDetectDominantLanguage =
  req
    "BatchDetectDominantLanguage"
    "fixture/BatchDetectDominantLanguage.yaml"

requestStopTrainingDocumentClassifier :: StopTrainingDocumentClassifier -> TestTree
requestStopTrainingDocumentClassifier =
  req
    "StopTrainingDocumentClassifier"
    "fixture/StopTrainingDocumentClassifier.yaml"

requestDescribeEntityRecognizer :: DescribeEntityRecognizer -> TestTree
requestDescribeEntityRecognizer =
  req
    "DescribeEntityRecognizer"
    "fixture/DescribeEntityRecognizer.yaml"

requestDescribePiiEntitiesDetectionJob :: DescribePiiEntitiesDetectionJob -> TestTree
requestDescribePiiEntitiesDetectionJob =
  req
    "DescribePiiEntitiesDetectionJob"
    "fixture/DescribePiiEntitiesDetectionJob.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestListKeyPhrasesDetectionJobs :: ListKeyPhrasesDetectionJobs -> TestTree
requestListKeyPhrasesDetectionJobs =
  req
    "ListKeyPhrasesDetectionJobs"
    "fixture/ListKeyPhrasesDetectionJobs.yaml"

requestDescribeDominantLanguageDetectionJob :: DescribeDominantLanguageDetectionJob -> TestTree
requestDescribeDominantLanguageDetectionJob =
  req
    "DescribeDominantLanguageDetectionJob"
    "fixture/DescribeDominantLanguageDetectionJob.yaml"

requestStopEntitiesDetectionJob :: StopEntitiesDetectionJob -> TestTree
requestStopEntitiesDetectionJob =
  req
    "StopEntitiesDetectionJob"
    "fixture/StopEntitiesDetectionJob.yaml"

requestStopPiiEntitiesDetectionJob :: StopPiiEntitiesDetectionJob -> TestTree
requestStopPiiEntitiesDetectionJob =
  req
    "StopPiiEntitiesDetectionJob"
    "fixture/StopPiiEntitiesDetectionJob.yaml"

requestDescribeDocumentClassifier :: DescribeDocumentClassifier -> TestTree
requestDescribeDocumentClassifier =
  req
    "DescribeDocumentClassifier"
    "fixture/DescribeDocumentClassifier.yaml"

requestStopTrainingEntityRecognizer :: StopTrainingEntityRecognizer -> TestTree
requestStopTrainingEntityRecognizer =
  req
    "StopTrainingEntityRecognizer"
    "fixture/StopTrainingEntityRecognizer.yaml"

requestStartEntitiesDetectionJob :: StartEntitiesDetectionJob -> TestTree
requestStartEntitiesDetectionJob =
  req
    "StartEntitiesDetectionJob"
    "fixture/StartEntitiesDetectionJob.yaml"

requestStartPiiEntitiesDetectionJob :: StartPiiEntitiesDetectionJob -> TestTree
requestStartPiiEntitiesDetectionJob =
  req
    "StartPiiEntitiesDetectionJob"
    "fixture/StartPiiEntitiesDetectionJob.yaml"

requestListEndpoints :: ListEndpoints -> TestTree
requestListEndpoints =
  req
    "ListEndpoints"
    "fixture/ListEndpoints.yaml"

requestDeleteEndpoint :: DeleteEndpoint -> TestTree
requestDeleteEndpoint =
  req
    "DeleteEndpoint"
    "fixture/DeleteEndpoint.yaml"

requestUpdateEndpoint :: UpdateEndpoint -> TestTree
requestUpdateEndpoint =
  req
    "UpdateEndpoint"
    "fixture/UpdateEndpoint.yaml"

requestDescribeEventsDetectionJob :: DescribeEventsDetectionJob -> TestTree
requestDescribeEventsDetectionJob =
  req
    "DescribeEventsDetectionJob"
    "fixture/DescribeEventsDetectionJob.yaml"

requestDetectPiiEntities :: DetectPiiEntities -> TestTree
requestDetectPiiEntities =
  req
    "DetectPiiEntities"
    "fixture/DetectPiiEntities.yaml"

requestClassifyDocument :: ClassifyDocument -> TestTree
requestClassifyDocument =
  req
    "ClassifyDocument"
    "fixture/ClassifyDocument.yaml"

requestDetectDominantLanguage :: DetectDominantLanguage -> TestTree
requestDetectDominantLanguage =
  req
    "DetectDominantLanguage"
    "fixture/DetectDominantLanguage.yaml"

requestListDocumentClassificationJobs :: ListDocumentClassificationJobs -> TestTree
requestListDocumentClassificationJobs =
  req
    "ListDocumentClassificationJobs"
    "fixture/ListDocumentClassificationJobs.yaml"

requestDescribeTopicsDetectionJob :: DescribeTopicsDetectionJob -> TestTree
requestDescribeTopicsDetectionJob =
  req
    "DescribeTopicsDetectionJob"
    "fixture/DescribeTopicsDetectionJob.yaml"

requestListEntitiesDetectionJobs :: ListEntitiesDetectionJobs -> TestTree
requestListEntitiesDetectionJobs =
  req
    "ListEntitiesDetectionJobs"
    "fixture/ListEntitiesDetectionJobs.yaml"

requestCreateDocumentClassifier :: CreateDocumentClassifier -> TestTree
requestCreateDocumentClassifier =
  req
    "CreateDocumentClassifier"
    "fixture/CreateDocumentClassifier.yaml"

requestListPiiEntitiesDetectionJobs :: ListPiiEntitiesDetectionJobs -> TestTree
requestListPiiEntitiesDetectionJobs =
  req
    "ListPiiEntitiesDetectionJobs"
    "fixture/ListPiiEntitiesDetectionJobs.yaml"

requestDeleteDocumentClassifier :: DeleteDocumentClassifier -> TestTree
requestDeleteDocumentClassifier =
  req
    "DeleteDocumentClassifier"
    "fixture/DeleteDocumentClassifier.yaml"

requestDescribeDocumentClassificationJob :: DescribeDocumentClassificationJob -> TestTree
requestDescribeDocumentClassificationJob =
  req
    "DescribeDocumentClassificationJob"
    "fixture/DescribeDocumentClassificationJob.yaml"

requestStopDominantLanguageDetectionJob :: StopDominantLanguageDetectionJob -> TestTree
requestStopDominantLanguageDetectionJob =
  req
    "StopDominantLanguageDetectionJob"
    "fixture/StopDominantLanguageDetectionJob.yaml"

requestDescribeEntitiesDetectionJob :: DescribeEntitiesDetectionJob -> TestTree
requestDescribeEntitiesDetectionJob =
  req
    "DescribeEntitiesDetectionJob"
    "fixture/DescribeEntitiesDetectionJob.yaml"

requestStartDominantLanguageDetectionJob :: StartDominantLanguageDetectionJob -> TestTree
requestStartDominantLanguageDetectionJob =
  req
    "StartDominantLanguageDetectionJob"
    "fixture/StartDominantLanguageDetectionJob.yaml"

requestDetectSentiment :: DetectSentiment -> TestTree
requestDetectSentiment =
  req
    "DetectSentiment"
    "fixture/DetectSentiment.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestDetectEntities :: DetectEntities -> TestTree
requestDetectEntities =
  req
    "DetectEntities"
    "fixture/DetectEntities.yaml"

requestDescribeSentimentDetectionJob :: DescribeSentimentDetectionJob -> TestTree
requestDescribeSentimentDetectionJob =
  req
    "DescribeSentimentDetectionJob"
    "fixture/DescribeSentimentDetectionJob.yaml"

requestBatchDetectSyntax :: BatchDetectSyntax -> TestTree
requestBatchDetectSyntax =
  req
    "BatchDetectSyntax"
    "fixture/BatchDetectSyntax.yaml"

requestBatchDetectKeyPhrases :: BatchDetectKeyPhrases -> TestTree
requestBatchDetectKeyPhrases =
  req
    "BatchDetectKeyPhrases"
    "fixture/BatchDetectKeyPhrases.yaml"

requestStartTopicsDetectionJob :: StartTopicsDetectionJob -> TestTree
requestStartTopicsDetectionJob =
  req
    "StartTopicsDetectionJob"
    "fixture/StartTopicsDetectionJob.yaml"

-- Responses

responseStopSentimentDetectionJob :: StopSentimentDetectionJobResponse -> TestTree
responseStopSentimentDetectionJob =
  res
    "StopSentimentDetectionJobResponse"
    "fixture/StopSentimentDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StopSentimentDetectionJob)

responseStartEventsDetectionJob :: StartEventsDetectionJobResponse -> TestTree
responseStartEventsDetectionJob =
  res
    "StartEventsDetectionJobResponse"
    "fixture/StartEventsDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StartEventsDetectionJob)

responseCreateEndpoint :: CreateEndpointResponse -> TestTree
responseCreateEndpoint =
  res
    "CreateEndpointResponse"
    "fixture/CreateEndpointResponse.proto"
    comprehend
    (Proxy :: Proxy CreateEndpoint)

responseStartSentimentDetectionJob :: StartSentimentDetectionJobResponse -> TestTree
responseStartSentimentDetectionJob =
  res
    "StartSentimentDetectionJobResponse"
    "fixture/StartSentimentDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StartSentimentDetectionJob)

responseStopEventsDetectionJob :: StopEventsDetectionJobResponse -> TestTree
responseStopEventsDetectionJob =
  res
    "StopEventsDetectionJobResponse"
    "fixture/StopEventsDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StopEventsDetectionJob)

responseListEntityRecognizers :: ListEntityRecognizersResponse -> TestTree
responseListEntityRecognizers =
  res
    "ListEntityRecognizersResponse"
    "fixture/ListEntityRecognizersResponse.proto"
    comprehend
    (Proxy :: Proxy ListEntityRecognizers)

responseBatchDetectSentiment :: BatchDetectSentimentResponse -> TestTree
responseBatchDetectSentiment =
  res
    "BatchDetectSentimentResponse"
    "fixture/BatchDetectSentimentResponse.proto"
    comprehend
    (Proxy :: Proxy BatchDetectSentiment)

responseDeleteEntityRecognizer :: DeleteEntityRecognizerResponse -> TestTree
responseDeleteEntityRecognizer =
  res
    "DeleteEntityRecognizerResponse"
    "fixture/DeleteEntityRecognizerResponse.proto"
    comprehend
    (Proxy :: Proxy DeleteEntityRecognizer)

responseDescribeKeyPhrasesDetectionJob :: DescribeKeyPhrasesDetectionJobResponse -> TestTree
responseDescribeKeyPhrasesDetectionJob =
  res
    "DescribeKeyPhrasesDetectionJobResponse"
    "fixture/DescribeKeyPhrasesDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeKeyPhrasesDetectionJob)

responseListDominantLanguageDetectionJobs :: ListDominantLanguageDetectionJobsResponse -> TestTree
responseListDominantLanguageDetectionJobs =
  res
    "ListDominantLanguageDetectionJobsResponse"
    "fixture/ListDominantLanguageDetectionJobsResponse.proto"
    comprehend
    (Proxy :: Proxy ListDominantLanguageDetectionJobs)

responseStopKeyPhrasesDetectionJob :: StopKeyPhrasesDetectionJobResponse -> TestTree
responseStopKeyPhrasesDetectionJob =
  res
    "StopKeyPhrasesDetectionJobResponse"
    "fixture/StopKeyPhrasesDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StopKeyPhrasesDetectionJob)

responseListDocumentClassifiers :: ListDocumentClassifiersResponse -> TestTree
responseListDocumentClassifiers =
  res
    "ListDocumentClassifiersResponse"
    "fixture/ListDocumentClassifiersResponse.proto"
    comprehend
    (Proxy :: Proxy ListDocumentClassifiers)

responseCreateEntityRecognizer :: CreateEntityRecognizerResponse -> TestTree
responseCreateEntityRecognizer =
  res
    "CreateEntityRecognizerResponse"
    "fixture/CreateEntityRecognizerResponse.proto"
    comprehend
    (Proxy :: Proxy CreateEntityRecognizer)

responseStartKeyPhrasesDetectionJob :: StartKeyPhrasesDetectionJobResponse -> TestTree
responseStartKeyPhrasesDetectionJob =
  res
    "StartKeyPhrasesDetectionJobResponse"
    "fixture/StartKeyPhrasesDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StartKeyPhrasesDetectionJob)

responseListEventsDetectionJobs :: ListEventsDetectionJobsResponse -> TestTree
responseListEventsDetectionJobs =
  res
    "ListEventsDetectionJobsResponse"
    "fixture/ListEventsDetectionJobsResponse.proto"
    comprehend
    (Proxy :: Proxy ListEventsDetectionJobs)

responseListSentimentDetectionJobs :: ListSentimentDetectionJobsResponse -> TestTree
responseListSentimentDetectionJobs =
  res
    "ListSentimentDetectionJobsResponse"
    "fixture/ListSentimentDetectionJobsResponse.proto"
    comprehend
    (Proxy :: Proxy ListSentimentDetectionJobs)

responseDetectSyntax :: DetectSyntaxResponse -> TestTree
responseDetectSyntax =
  res
    "DetectSyntaxResponse"
    "fixture/DetectSyntaxResponse.proto"
    comprehend
    (Proxy :: Proxy DetectSyntax)

responseStartDocumentClassificationJob :: StartDocumentClassificationJobResponse -> TestTree
responseStartDocumentClassificationJob =
  res
    "StartDocumentClassificationJobResponse"
    "fixture/StartDocumentClassificationJobResponse.proto"
    comprehend
    (Proxy :: Proxy StartDocumentClassificationJob)

responseDetectKeyPhrases :: DetectKeyPhrasesResponse -> TestTree
responseDetectKeyPhrases =
  res
    "DetectKeyPhrasesResponse"
    "fixture/DetectKeyPhrasesResponse.proto"
    comprehend
    (Proxy :: Proxy DetectKeyPhrases)

responseDescribeEndpoint :: DescribeEndpointResponse -> TestTree
responseDescribeEndpoint =
  res
    "DescribeEndpointResponse"
    "fixture/DescribeEndpointResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeEndpoint)

responseBatchDetectEntities :: BatchDetectEntitiesResponse -> TestTree
responseBatchDetectEntities =
  res
    "BatchDetectEntitiesResponse"
    "fixture/BatchDetectEntitiesResponse.proto"
    comprehend
    (Proxy :: Proxy BatchDetectEntities)

responseListTopicsDetectionJobs :: ListTopicsDetectionJobsResponse -> TestTree
responseListTopicsDetectionJobs =
  res
    "ListTopicsDetectionJobsResponse"
    "fixture/ListTopicsDetectionJobsResponse.proto"
    comprehend
    (Proxy :: Proxy ListTopicsDetectionJobs)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    comprehend
    (Proxy :: Proxy UntagResource)

responseBatchDetectDominantLanguage :: BatchDetectDominantLanguageResponse -> TestTree
responseBatchDetectDominantLanguage =
  res
    "BatchDetectDominantLanguageResponse"
    "fixture/BatchDetectDominantLanguageResponse.proto"
    comprehend
    (Proxy :: Proxy BatchDetectDominantLanguage)

responseStopTrainingDocumentClassifier :: StopTrainingDocumentClassifierResponse -> TestTree
responseStopTrainingDocumentClassifier =
  res
    "StopTrainingDocumentClassifierResponse"
    "fixture/StopTrainingDocumentClassifierResponse.proto"
    comprehend
    (Proxy :: Proxy StopTrainingDocumentClassifier)

responseDescribeEntityRecognizer :: DescribeEntityRecognizerResponse -> TestTree
responseDescribeEntityRecognizer =
  res
    "DescribeEntityRecognizerResponse"
    "fixture/DescribeEntityRecognizerResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeEntityRecognizer)

responseDescribePiiEntitiesDetectionJob :: DescribePiiEntitiesDetectionJobResponse -> TestTree
responseDescribePiiEntitiesDetectionJob =
  res
    "DescribePiiEntitiesDetectionJobResponse"
    "fixture/DescribePiiEntitiesDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy DescribePiiEntitiesDetectionJob)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    comprehend
    (Proxy :: Proxy TagResource)

responseListKeyPhrasesDetectionJobs :: ListKeyPhrasesDetectionJobsResponse -> TestTree
responseListKeyPhrasesDetectionJobs =
  res
    "ListKeyPhrasesDetectionJobsResponse"
    "fixture/ListKeyPhrasesDetectionJobsResponse.proto"
    comprehend
    (Proxy :: Proxy ListKeyPhrasesDetectionJobs)

responseDescribeDominantLanguageDetectionJob :: DescribeDominantLanguageDetectionJobResponse -> TestTree
responseDescribeDominantLanguageDetectionJob =
  res
    "DescribeDominantLanguageDetectionJobResponse"
    "fixture/DescribeDominantLanguageDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeDominantLanguageDetectionJob)

responseStopEntitiesDetectionJob :: StopEntitiesDetectionJobResponse -> TestTree
responseStopEntitiesDetectionJob =
  res
    "StopEntitiesDetectionJobResponse"
    "fixture/StopEntitiesDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StopEntitiesDetectionJob)

responseStopPiiEntitiesDetectionJob :: StopPiiEntitiesDetectionJobResponse -> TestTree
responseStopPiiEntitiesDetectionJob =
  res
    "StopPiiEntitiesDetectionJobResponse"
    "fixture/StopPiiEntitiesDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StopPiiEntitiesDetectionJob)

responseDescribeDocumentClassifier :: DescribeDocumentClassifierResponse -> TestTree
responseDescribeDocumentClassifier =
  res
    "DescribeDocumentClassifierResponse"
    "fixture/DescribeDocumentClassifierResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeDocumentClassifier)

responseStopTrainingEntityRecognizer :: StopTrainingEntityRecognizerResponse -> TestTree
responseStopTrainingEntityRecognizer =
  res
    "StopTrainingEntityRecognizerResponse"
    "fixture/StopTrainingEntityRecognizerResponse.proto"
    comprehend
    (Proxy :: Proxy StopTrainingEntityRecognizer)

responseStartEntitiesDetectionJob :: StartEntitiesDetectionJobResponse -> TestTree
responseStartEntitiesDetectionJob =
  res
    "StartEntitiesDetectionJobResponse"
    "fixture/StartEntitiesDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StartEntitiesDetectionJob)

responseStartPiiEntitiesDetectionJob :: StartPiiEntitiesDetectionJobResponse -> TestTree
responseStartPiiEntitiesDetectionJob =
  res
    "StartPiiEntitiesDetectionJobResponse"
    "fixture/StartPiiEntitiesDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StartPiiEntitiesDetectionJob)

responseListEndpoints :: ListEndpointsResponse -> TestTree
responseListEndpoints =
  res
    "ListEndpointsResponse"
    "fixture/ListEndpointsResponse.proto"
    comprehend
    (Proxy :: Proxy ListEndpoints)

responseDeleteEndpoint :: DeleteEndpointResponse -> TestTree
responseDeleteEndpoint =
  res
    "DeleteEndpointResponse"
    "fixture/DeleteEndpointResponse.proto"
    comprehend
    (Proxy :: Proxy DeleteEndpoint)

responseUpdateEndpoint :: UpdateEndpointResponse -> TestTree
responseUpdateEndpoint =
  res
    "UpdateEndpointResponse"
    "fixture/UpdateEndpointResponse.proto"
    comprehend
    (Proxy :: Proxy UpdateEndpoint)

responseDescribeEventsDetectionJob :: DescribeEventsDetectionJobResponse -> TestTree
responseDescribeEventsDetectionJob =
  res
    "DescribeEventsDetectionJobResponse"
    "fixture/DescribeEventsDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeEventsDetectionJob)

responseDetectPiiEntities :: DetectPiiEntitiesResponse -> TestTree
responseDetectPiiEntities =
  res
    "DetectPiiEntitiesResponse"
    "fixture/DetectPiiEntitiesResponse.proto"
    comprehend
    (Proxy :: Proxy DetectPiiEntities)

responseClassifyDocument :: ClassifyDocumentResponse -> TestTree
responseClassifyDocument =
  res
    "ClassifyDocumentResponse"
    "fixture/ClassifyDocumentResponse.proto"
    comprehend
    (Proxy :: Proxy ClassifyDocument)

responseDetectDominantLanguage :: DetectDominantLanguageResponse -> TestTree
responseDetectDominantLanguage =
  res
    "DetectDominantLanguageResponse"
    "fixture/DetectDominantLanguageResponse.proto"
    comprehend
    (Proxy :: Proxy DetectDominantLanguage)

responseListDocumentClassificationJobs :: ListDocumentClassificationJobsResponse -> TestTree
responseListDocumentClassificationJobs =
  res
    "ListDocumentClassificationJobsResponse"
    "fixture/ListDocumentClassificationJobsResponse.proto"
    comprehend
    (Proxy :: Proxy ListDocumentClassificationJobs)

responseDescribeTopicsDetectionJob :: DescribeTopicsDetectionJobResponse -> TestTree
responseDescribeTopicsDetectionJob =
  res
    "DescribeTopicsDetectionJobResponse"
    "fixture/DescribeTopicsDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeTopicsDetectionJob)

responseListEntitiesDetectionJobs :: ListEntitiesDetectionJobsResponse -> TestTree
responseListEntitiesDetectionJobs =
  res
    "ListEntitiesDetectionJobsResponse"
    "fixture/ListEntitiesDetectionJobsResponse.proto"
    comprehend
    (Proxy :: Proxy ListEntitiesDetectionJobs)

responseCreateDocumentClassifier :: CreateDocumentClassifierResponse -> TestTree
responseCreateDocumentClassifier =
  res
    "CreateDocumentClassifierResponse"
    "fixture/CreateDocumentClassifierResponse.proto"
    comprehend
    (Proxy :: Proxy CreateDocumentClassifier)

responseListPiiEntitiesDetectionJobs :: ListPiiEntitiesDetectionJobsResponse -> TestTree
responseListPiiEntitiesDetectionJobs =
  res
    "ListPiiEntitiesDetectionJobsResponse"
    "fixture/ListPiiEntitiesDetectionJobsResponse.proto"
    comprehend
    (Proxy :: Proxy ListPiiEntitiesDetectionJobs)

responseDeleteDocumentClassifier :: DeleteDocumentClassifierResponse -> TestTree
responseDeleteDocumentClassifier =
  res
    "DeleteDocumentClassifierResponse"
    "fixture/DeleteDocumentClassifierResponse.proto"
    comprehend
    (Proxy :: Proxy DeleteDocumentClassifier)

responseDescribeDocumentClassificationJob :: DescribeDocumentClassificationJobResponse -> TestTree
responseDescribeDocumentClassificationJob =
  res
    "DescribeDocumentClassificationJobResponse"
    "fixture/DescribeDocumentClassificationJobResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeDocumentClassificationJob)

responseStopDominantLanguageDetectionJob :: StopDominantLanguageDetectionJobResponse -> TestTree
responseStopDominantLanguageDetectionJob =
  res
    "StopDominantLanguageDetectionJobResponse"
    "fixture/StopDominantLanguageDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StopDominantLanguageDetectionJob)

responseDescribeEntitiesDetectionJob :: DescribeEntitiesDetectionJobResponse -> TestTree
responseDescribeEntitiesDetectionJob =
  res
    "DescribeEntitiesDetectionJobResponse"
    "fixture/DescribeEntitiesDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeEntitiesDetectionJob)

responseStartDominantLanguageDetectionJob :: StartDominantLanguageDetectionJobResponse -> TestTree
responseStartDominantLanguageDetectionJob =
  res
    "StartDominantLanguageDetectionJobResponse"
    "fixture/StartDominantLanguageDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StartDominantLanguageDetectionJob)

responseDetectSentiment :: DetectSentimentResponse -> TestTree
responseDetectSentiment =
  res
    "DetectSentimentResponse"
    "fixture/DetectSentimentResponse.proto"
    comprehend
    (Proxy :: Proxy DetectSentiment)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    comprehend
    (Proxy :: Proxy ListTagsForResource)

responseDetectEntities :: DetectEntitiesResponse -> TestTree
responseDetectEntities =
  res
    "DetectEntitiesResponse"
    "fixture/DetectEntitiesResponse.proto"
    comprehend
    (Proxy :: Proxy DetectEntities)

responseDescribeSentimentDetectionJob :: DescribeSentimentDetectionJobResponse -> TestTree
responseDescribeSentimentDetectionJob =
  res
    "DescribeSentimentDetectionJobResponse"
    "fixture/DescribeSentimentDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy DescribeSentimentDetectionJob)

responseBatchDetectSyntax :: BatchDetectSyntaxResponse -> TestTree
responseBatchDetectSyntax =
  res
    "BatchDetectSyntaxResponse"
    "fixture/BatchDetectSyntaxResponse.proto"
    comprehend
    (Proxy :: Proxy BatchDetectSyntax)

responseBatchDetectKeyPhrases :: BatchDetectKeyPhrasesResponse -> TestTree
responseBatchDetectKeyPhrases =
  res
    "BatchDetectKeyPhrasesResponse"
    "fixture/BatchDetectKeyPhrasesResponse.proto"
    comprehend
    (Proxy :: Proxy BatchDetectKeyPhrases)

responseStartTopicsDetectionJob :: StartTopicsDetectionJobResponse -> TestTree
responseStartTopicsDetectionJob =
  res
    "StartTopicsDetectionJobResponse"
    "fixture/StartTopicsDetectionJobResponse.proto"
    comprehend
    (Proxy :: Proxy StartTopicsDetectionJob)
