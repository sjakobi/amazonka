{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Rekognition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Rekognition where

import Data.Proxy
import Network.AWS.Rekognition
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Rekognition.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestStartFaceSearch $
--             startFaceSearch
--
--         , requestDescribeStreamProcessor $
--             describeStreamProcessor
--
--         , requestDeleteCollection $
--             deleteCollection
--
--         , requestGetLabelDetection $
--             getLabelDetection
--
--         , requestSearchFaces $
--             searchFaces
--
--         , requestGetTextDetection $
--             getTextDetection
--
--         , requestCreateProject $
--             createProject
--
--         , requestDetectCustomLabels $
--             detectCustomLabels
--
--         , requestRecognizeCelebrities $
--             recognizeCelebrities
--
--         , requestStartFaceDetection $
--             startFaceDetection
--
--         , requestDetectModerationLabels $
--             detectModerationLabels
--
--         , requestDeleteFaces $
--             deleteFaces
--
--         , requestListStreamProcessors $
--             listStreamProcessors
--
--         , requestDescribeCollection $
--             describeCollection
--
--         , requestDeleteStreamProcessor $
--             deleteStreamProcessor
--
--         , requestListFaces $
--             listFaces
--
--         , requestSearchFacesByImage $
--             searchFacesByImage
--
--         , requestCompareFaces $
--             compareFaces
--
--         , requestDetectLabels $
--             detectLabels
--
--         , requestGetSegmentDetection $
--             getSegmentDetection
--
--         , requestGetCelebrityRecognition $
--             getCelebrityRecognition
--
--         , requestStartPersonTracking $
--             startPersonTracking
--
--         , requestCreateCollection $
--             createCollection
--
--         , requestStopProjectVersion $
--             stopProjectVersion
--
--         , requestStartProjectVersion $
--             startProjectVersion
--
--         , requestListCollections $
--             listCollections
--
--         , requestDetectProtectiveEquipment $
--             detectProtectiveEquipment
--
--         , requestGetPersonTracking $
--             getPersonTracking
--
--         , requestDeleteProject $
--             deleteProject
--
--         , requestIndexFaces $
--             indexFaces
--
--         , requestStartSegmentDetection $
--             startSegmentDetection
--
--         , requestStartCelebrityRecognition $
--             startCelebrityRecognition
--
--         , requestGetFaceSearch $
--             getFaceSearch
--
--         , requestStartLabelDetection $
--             startLabelDetection
--
--         , requestDescribeProjectVersions $
--             describeProjectVersions
--
--         , requestDeleteProjectVersion $
--             deleteProjectVersion
--
--         , requestCreateStreamProcessor $
--             createStreamProcessor
--
--         , requestGetContentModeration $
--             getContentModeration
--
--         , requestGetCelebrityInfo $
--             getCelebrityInfo
--
--         , requestDescribeProjects $
--             describeProjects
--
--         , requestCreateProjectVersion $
--             createProjectVersion
--
--         , requestGetFaceDetection $
--             getFaceDetection
--
--         , requestStartContentModeration $
--             startContentModeration
--
--         , requestDetectFaces $
--             detectFaces
--
--         , requestDetectText $
--             detectText
--
--         , requestStartTextDetection $
--             startTextDetection
--
--         , requestStopStreamProcessor $
--             stopStreamProcessor
--
--         , requestStartStreamProcessor $
--             startStreamProcessor
--
--           ]

--     , testGroup "response"
--         [ responseStartFaceSearch $
--             startFaceSearchResponse
--
--         , responseDescribeStreamProcessor $
--             describeStreamProcessorResponse
--
--         , responseDeleteCollection $
--             deleteCollectionResponse
--
--         , responseGetLabelDetection $
--             getLabelDetectionResponse
--
--         , responseSearchFaces $
--             searchFacesResponse
--
--         , responseGetTextDetection $
--             getTextDetectionResponse
--
--         , responseCreateProject $
--             createProjectResponse
--
--         , responseDetectCustomLabels $
--             detectCustomLabelsResponse
--
--         , responseRecognizeCelebrities $
--             recognizeCelebritiesResponse
--
--         , responseStartFaceDetection $
--             startFaceDetectionResponse
--
--         , responseDetectModerationLabels $
--             detectModerationLabelsResponse
--
--         , responseDeleteFaces $
--             deleteFacesResponse
--
--         , responseListStreamProcessors $
--             listStreamProcessorsResponse
--
--         , responseDescribeCollection $
--             describeCollectionResponse
--
--         , responseDeleteStreamProcessor $
--             deleteStreamProcessorResponse
--
--         , responseListFaces $
--             listFacesResponse
--
--         , responseSearchFacesByImage $
--             searchFacesByImageResponse
--
--         , responseCompareFaces $
--             compareFacesResponse
--
--         , responseDetectLabels $
--             detectLabelsResponse
--
--         , responseGetSegmentDetection $
--             getSegmentDetectionResponse
--
--         , responseGetCelebrityRecognition $
--             getCelebrityRecognitionResponse
--
--         , responseStartPersonTracking $
--             startPersonTrackingResponse
--
--         , responseCreateCollection $
--             createCollectionResponse
--
--         , responseStopProjectVersion $
--             stopProjectVersionResponse
--
--         , responseStartProjectVersion $
--             startProjectVersionResponse
--
--         , responseListCollections $
--             listCollectionsResponse
--
--         , responseDetectProtectiveEquipment $
--             detectProtectiveEquipmentResponse
--
--         , responseGetPersonTracking $
--             getPersonTrackingResponse
--
--         , responseDeleteProject $
--             deleteProjectResponse
--
--         , responseIndexFaces $
--             indexFacesResponse
--
--         , responseStartSegmentDetection $
--             startSegmentDetectionResponse
--
--         , responseStartCelebrityRecognition $
--             startCelebrityRecognitionResponse
--
--         , responseGetFaceSearch $
--             getFaceSearchResponse
--
--         , responseStartLabelDetection $
--             startLabelDetectionResponse
--
--         , responseDescribeProjectVersions $
--             describeProjectVersionsResponse
--
--         , responseDeleteProjectVersion $
--             deleteProjectVersionResponse
--
--         , responseCreateStreamProcessor $
--             createStreamProcessorResponse
--
--         , responseGetContentModeration $
--             getContentModerationResponse
--
--         , responseGetCelebrityInfo $
--             getCelebrityInfoResponse
--
--         , responseDescribeProjects $
--             describeProjectsResponse
--
--         , responseCreateProjectVersion $
--             createProjectVersionResponse
--
--         , responseGetFaceDetection $
--             getFaceDetectionResponse
--
--         , responseStartContentModeration $
--             startContentModerationResponse
--
--         , responseDetectFaces $
--             detectFacesResponse
--
--         , responseDetectText $
--             detectTextResponse
--
--         , responseStartTextDetection $
--             startTextDetectionResponse
--
--         , responseStopStreamProcessor $
--             stopStreamProcessorResponse
--
--         , responseStartStreamProcessor $
--             startStreamProcessorResponse
--
--           ]
--     ]

-- Requests

requestStartFaceSearch :: StartFaceSearch -> TestTree
requestStartFaceSearch =
  req
    "StartFaceSearch"
    "fixture/StartFaceSearch.yaml"

requestDescribeStreamProcessor :: DescribeStreamProcessor -> TestTree
requestDescribeStreamProcessor =
  req
    "DescribeStreamProcessor"
    "fixture/DescribeStreamProcessor.yaml"

requestDeleteCollection :: DeleteCollection -> TestTree
requestDeleteCollection =
  req
    "DeleteCollection"
    "fixture/DeleteCollection.yaml"

requestGetLabelDetection :: GetLabelDetection -> TestTree
requestGetLabelDetection =
  req
    "GetLabelDetection"
    "fixture/GetLabelDetection.yaml"

requestSearchFaces :: SearchFaces -> TestTree
requestSearchFaces =
  req
    "SearchFaces"
    "fixture/SearchFaces.yaml"

requestGetTextDetection :: GetTextDetection -> TestTree
requestGetTextDetection =
  req
    "GetTextDetection"
    "fixture/GetTextDetection.yaml"

requestCreateProject :: CreateProject -> TestTree
requestCreateProject =
  req
    "CreateProject"
    "fixture/CreateProject.yaml"

requestDetectCustomLabels :: DetectCustomLabels -> TestTree
requestDetectCustomLabels =
  req
    "DetectCustomLabels"
    "fixture/DetectCustomLabels.yaml"

requestRecognizeCelebrities :: RecognizeCelebrities -> TestTree
requestRecognizeCelebrities =
  req
    "RecognizeCelebrities"
    "fixture/RecognizeCelebrities.yaml"

requestStartFaceDetection :: StartFaceDetection -> TestTree
requestStartFaceDetection =
  req
    "StartFaceDetection"
    "fixture/StartFaceDetection.yaml"

requestDetectModerationLabels :: DetectModerationLabels -> TestTree
requestDetectModerationLabels =
  req
    "DetectModerationLabels"
    "fixture/DetectModerationLabels.yaml"

requestDeleteFaces :: DeleteFaces -> TestTree
requestDeleteFaces =
  req
    "DeleteFaces"
    "fixture/DeleteFaces.yaml"

requestListStreamProcessors :: ListStreamProcessors -> TestTree
requestListStreamProcessors =
  req
    "ListStreamProcessors"
    "fixture/ListStreamProcessors.yaml"

requestDescribeCollection :: DescribeCollection -> TestTree
requestDescribeCollection =
  req
    "DescribeCollection"
    "fixture/DescribeCollection.yaml"

requestDeleteStreamProcessor :: DeleteStreamProcessor -> TestTree
requestDeleteStreamProcessor =
  req
    "DeleteStreamProcessor"
    "fixture/DeleteStreamProcessor.yaml"

requestListFaces :: ListFaces -> TestTree
requestListFaces =
  req
    "ListFaces"
    "fixture/ListFaces.yaml"

requestSearchFacesByImage :: SearchFacesByImage -> TestTree
requestSearchFacesByImage =
  req
    "SearchFacesByImage"
    "fixture/SearchFacesByImage.yaml"

requestCompareFaces :: CompareFaces -> TestTree
requestCompareFaces =
  req
    "CompareFaces"
    "fixture/CompareFaces.yaml"

requestDetectLabels :: DetectLabels -> TestTree
requestDetectLabels =
  req
    "DetectLabels"
    "fixture/DetectLabels.yaml"

requestGetSegmentDetection :: GetSegmentDetection -> TestTree
requestGetSegmentDetection =
  req
    "GetSegmentDetection"
    "fixture/GetSegmentDetection.yaml"

requestGetCelebrityRecognition :: GetCelebrityRecognition -> TestTree
requestGetCelebrityRecognition =
  req
    "GetCelebrityRecognition"
    "fixture/GetCelebrityRecognition.yaml"

requestStartPersonTracking :: StartPersonTracking -> TestTree
requestStartPersonTracking =
  req
    "StartPersonTracking"
    "fixture/StartPersonTracking.yaml"

requestCreateCollection :: CreateCollection -> TestTree
requestCreateCollection =
  req
    "CreateCollection"
    "fixture/CreateCollection.yaml"

requestStopProjectVersion :: StopProjectVersion -> TestTree
requestStopProjectVersion =
  req
    "StopProjectVersion"
    "fixture/StopProjectVersion.yaml"

requestStartProjectVersion :: StartProjectVersion -> TestTree
requestStartProjectVersion =
  req
    "StartProjectVersion"
    "fixture/StartProjectVersion.yaml"

requestListCollections :: ListCollections -> TestTree
requestListCollections =
  req
    "ListCollections"
    "fixture/ListCollections.yaml"

requestDetectProtectiveEquipment :: DetectProtectiveEquipment -> TestTree
requestDetectProtectiveEquipment =
  req
    "DetectProtectiveEquipment"
    "fixture/DetectProtectiveEquipment.yaml"

requestGetPersonTracking :: GetPersonTracking -> TestTree
requestGetPersonTracking =
  req
    "GetPersonTracking"
    "fixture/GetPersonTracking.yaml"

requestDeleteProject :: DeleteProject -> TestTree
requestDeleteProject =
  req
    "DeleteProject"
    "fixture/DeleteProject.yaml"

requestIndexFaces :: IndexFaces -> TestTree
requestIndexFaces =
  req
    "IndexFaces"
    "fixture/IndexFaces.yaml"

requestStartSegmentDetection :: StartSegmentDetection -> TestTree
requestStartSegmentDetection =
  req
    "StartSegmentDetection"
    "fixture/StartSegmentDetection.yaml"

requestStartCelebrityRecognition :: StartCelebrityRecognition -> TestTree
requestStartCelebrityRecognition =
  req
    "StartCelebrityRecognition"
    "fixture/StartCelebrityRecognition.yaml"

requestGetFaceSearch :: GetFaceSearch -> TestTree
requestGetFaceSearch =
  req
    "GetFaceSearch"
    "fixture/GetFaceSearch.yaml"

requestStartLabelDetection :: StartLabelDetection -> TestTree
requestStartLabelDetection =
  req
    "StartLabelDetection"
    "fixture/StartLabelDetection.yaml"

requestDescribeProjectVersions :: DescribeProjectVersions -> TestTree
requestDescribeProjectVersions =
  req
    "DescribeProjectVersions"
    "fixture/DescribeProjectVersions.yaml"

requestDeleteProjectVersion :: DeleteProjectVersion -> TestTree
requestDeleteProjectVersion =
  req
    "DeleteProjectVersion"
    "fixture/DeleteProjectVersion.yaml"

requestCreateStreamProcessor :: CreateStreamProcessor -> TestTree
requestCreateStreamProcessor =
  req
    "CreateStreamProcessor"
    "fixture/CreateStreamProcessor.yaml"

requestGetContentModeration :: GetContentModeration -> TestTree
requestGetContentModeration =
  req
    "GetContentModeration"
    "fixture/GetContentModeration.yaml"

requestGetCelebrityInfo :: GetCelebrityInfo -> TestTree
requestGetCelebrityInfo =
  req
    "GetCelebrityInfo"
    "fixture/GetCelebrityInfo.yaml"

requestDescribeProjects :: DescribeProjects -> TestTree
requestDescribeProjects =
  req
    "DescribeProjects"
    "fixture/DescribeProjects.yaml"

requestCreateProjectVersion :: CreateProjectVersion -> TestTree
requestCreateProjectVersion =
  req
    "CreateProjectVersion"
    "fixture/CreateProjectVersion.yaml"

requestGetFaceDetection :: GetFaceDetection -> TestTree
requestGetFaceDetection =
  req
    "GetFaceDetection"
    "fixture/GetFaceDetection.yaml"

requestStartContentModeration :: StartContentModeration -> TestTree
requestStartContentModeration =
  req
    "StartContentModeration"
    "fixture/StartContentModeration.yaml"

requestDetectFaces :: DetectFaces -> TestTree
requestDetectFaces =
  req
    "DetectFaces"
    "fixture/DetectFaces.yaml"

requestDetectText :: DetectText -> TestTree
requestDetectText =
  req
    "DetectText"
    "fixture/DetectText.yaml"

requestStartTextDetection :: StartTextDetection -> TestTree
requestStartTextDetection =
  req
    "StartTextDetection"
    "fixture/StartTextDetection.yaml"

requestStopStreamProcessor :: StopStreamProcessor -> TestTree
requestStopStreamProcessor =
  req
    "StopStreamProcessor"
    "fixture/StopStreamProcessor.yaml"

requestStartStreamProcessor :: StartStreamProcessor -> TestTree
requestStartStreamProcessor =
  req
    "StartStreamProcessor"
    "fixture/StartStreamProcessor.yaml"

-- Responses

responseStartFaceSearch :: StartFaceSearchResponse -> TestTree
responseStartFaceSearch =
  res
    "StartFaceSearchResponse"
    "fixture/StartFaceSearchResponse.proto"
    rekognition
    (Proxy :: Proxy StartFaceSearch)

responseDescribeStreamProcessor :: DescribeStreamProcessorResponse -> TestTree
responseDescribeStreamProcessor =
  res
    "DescribeStreamProcessorResponse"
    "fixture/DescribeStreamProcessorResponse.proto"
    rekognition
    (Proxy :: Proxy DescribeStreamProcessor)

responseDeleteCollection :: DeleteCollectionResponse -> TestTree
responseDeleteCollection =
  res
    "DeleteCollectionResponse"
    "fixture/DeleteCollectionResponse.proto"
    rekognition
    (Proxy :: Proxy DeleteCollection)

responseGetLabelDetection :: GetLabelDetectionResponse -> TestTree
responseGetLabelDetection =
  res
    "GetLabelDetectionResponse"
    "fixture/GetLabelDetectionResponse.proto"
    rekognition
    (Proxy :: Proxy GetLabelDetection)

responseSearchFaces :: SearchFacesResponse -> TestTree
responseSearchFaces =
  res
    "SearchFacesResponse"
    "fixture/SearchFacesResponse.proto"
    rekognition
    (Proxy :: Proxy SearchFaces)

responseGetTextDetection :: GetTextDetectionResponse -> TestTree
responseGetTextDetection =
  res
    "GetTextDetectionResponse"
    "fixture/GetTextDetectionResponse.proto"
    rekognition
    (Proxy :: Proxy GetTextDetection)

responseCreateProject :: CreateProjectResponse -> TestTree
responseCreateProject =
  res
    "CreateProjectResponse"
    "fixture/CreateProjectResponse.proto"
    rekognition
    (Proxy :: Proxy CreateProject)

responseDetectCustomLabels :: DetectCustomLabelsResponse -> TestTree
responseDetectCustomLabels =
  res
    "DetectCustomLabelsResponse"
    "fixture/DetectCustomLabelsResponse.proto"
    rekognition
    (Proxy :: Proxy DetectCustomLabels)

responseRecognizeCelebrities :: RecognizeCelebritiesResponse -> TestTree
responseRecognizeCelebrities =
  res
    "RecognizeCelebritiesResponse"
    "fixture/RecognizeCelebritiesResponse.proto"
    rekognition
    (Proxy :: Proxy RecognizeCelebrities)

responseStartFaceDetection :: StartFaceDetectionResponse -> TestTree
responseStartFaceDetection =
  res
    "StartFaceDetectionResponse"
    "fixture/StartFaceDetectionResponse.proto"
    rekognition
    (Proxy :: Proxy StartFaceDetection)

responseDetectModerationLabels :: DetectModerationLabelsResponse -> TestTree
responseDetectModerationLabels =
  res
    "DetectModerationLabelsResponse"
    "fixture/DetectModerationLabelsResponse.proto"
    rekognition
    (Proxy :: Proxy DetectModerationLabels)

responseDeleteFaces :: DeleteFacesResponse -> TestTree
responseDeleteFaces =
  res
    "DeleteFacesResponse"
    "fixture/DeleteFacesResponse.proto"
    rekognition
    (Proxy :: Proxy DeleteFaces)

responseListStreamProcessors :: ListStreamProcessorsResponse -> TestTree
responseListStreamProcessors =
  res
    "ListStreamProcessorsResponse"
    "fixture/ListStreamProcessorsResponse.proto"
    rekognition
    (Proxy :: Proxy ListStreamProcessors)

responseDescribeCollection :: DescribeCollectionResponse -> TestTree
responseDescribeCollection =
  res
    "DescribeCollectionResponse"
    "fixture/DescribeCollectionResponse.proto"
    rekognition
    (Proxy :: Proxy DescribeCollection)

responseDeleteStreamProcessor :: DeleteStreamProcessorResponse -> TestTree
responseDeleteStreamProcessor =
  res
    "DeleteStreamProcessorResponse"
    "fixture/DeleteStreamProcessorResponse.proto"
    rekognition
    (Proxy :: Proxy DeleteStreamProcessor)

responseListFaces :: ListFacesResponse -> TestTree
responseListFaces =
  res
    "ListFacesResponse"
    "fixture/ListFacesResponse.proto"
    rekognition
    (Proxy :: Proxy ListFaces)

responseSearchFacesByImage :: SearchFacesByImageResponse -> TestTree
responseSearchFacesByImage =
  res
    "SearchFacesByImageResponse"
    "fixture/SearchFacesByImageResponse.proto"
    rekognition
    (Proxy :: Proxy SearchFacesByImage)

responseCompareFaces :: CompareFacesResponse -> TestTree
responseCompareFaces =
  res
    "CompareFacesResponse"
    "fixture/CompareFacesResponse.proto"
    rekognition
    (Proxy :: Proxy CompareFaces)

responseDetectLabels :: DetectLabelsResponse -> TestTree
responseDetectLabels =
  res
    "DetectLabelsResponse"
    "fixture/DetectLabelsResponse.proto"
    rekognition
    (Proxy :: Proxy DetectLabels)

responseGetSegmentDetection :: GetSegmentDetectionResponse -> TestTree
responseGetSegmentDetection =
  res
    "GetSegmentDetectionResponse"
    "fixture/GetSegmentDetectionResponse.proto"
    rekognition
    (Proxy :: Proxy GetSegmentDetection)

responseGetCelebrityRecognition :: GetCelebrityRecognitionResponse -> TestTree
responseGetCelebrityRecognition =
  res
    "GetCelebrityRecognitionResponse"
    "fixture/GetCelebrityRecognitionResponse.proto"
    rekognition
    (Proxy :: Proxy GetCelebrityRecognition)

responseStartPersonTracking :: StartPersonTrackingResponse -> TestTree
responseStartPersonTracking =
  res
    "StartPersonTrackingResponse"
    "fixture/StartPersonTrackingResponse.proto"
    rekognition
    (Proxy :: Proxy StartPersonTracking)

responseCreateCollection :: CreateCollectionResponse -> TestTree
responseCreateCollection =
  res
    "CreateCollectionResponse"
    "fixture/CreateCollectionResponse.proto"
    rekognition
    (Proxy :: Proxy CreateCollection)

responseStopProjectVersion :: StopProjectVersionResponse -> TestTree
responseStopProjectVersion =
  res
    "StopProjectVersionResponse"
    "fixture/StopProjectVersionResponse.proto"
    rekognition
    (Proxy :: Proxy StopProjectVersion)

responseStartProjectVersion :: StartProjectVersionResponse -> TestTree
responseStartProjectVersion =
  res
    "StartProjectVersionResponse"
    "fixture/StartProjectVersionResponse.proto"
    rekognition
    (Proxy :: Proxy StartProjectVersion)

responseListCollections :: ListCollectionsResponse -> TestTree
responseListCollections =
  res
    "ListCollectionsResponse"
    "fixture/ListCollectionsResponse.proto"
    rekognition
    (Proxy :: Proxy ListCollections)

responseDetectProtectiveEquipment :: DetectProtectiveEquipmentResponse -> TestTree
responseDetectProtectiveEquipment =
  res
    "DetectProtectiveEquipmentResponse"
    "fixture/DetectProtectiveEquipmentResponse.proto"
    rekognition
    (Proxy :: Proxy DetectProtectiveEquipment)

responseGetPersonTracking :: GetPersonTrackingResponse -> TestTree
responseGetPersonTracking =
  res
    "GetPersonTrackingResponse"
    "fixture/GetPersonTrackingResponse.proto"
    rekognition
    (Proxy :: Proxy GetPersonTracking)

responseDeleteProject :: DeleteProjectResponse -> TestTree
responseDeleteProject =
  res
    "DeleteProjectResponse"
    "fixture/DeleteProjectResponse.proto"
    rekognition
    (Proxy :: Proxy DeleteProject)

responseIndexFaces :: IndexFacesResponse -> TestTree
responseIndexFaces =
  res
    "IndexFacesResponse"
    "fixture/IndexFacesResponse.proto"
    rekognition
    (Proxy :: Proxy IndexFaces)

responseStartSegmentDetection :: StartSegmentDetectionResponse -> TestTree
responseStartSegmentDetection =
  res
    "StartSegmentDetectionResponse"
    "fixture/StartSegmentDetectionResponse.proto"
    rekognition
    (Proxy :: Proxy StartSegmentDetection)

responseStartCelebrityRecognition :: StartCelebrityRecognitionResponse -> TestTree
responseStartCelebrityRecognition =
  res
    "StartCelebrityRecognitionResponse"
    "fixture/StartCelebrityRecognitionResponse.proto"
    rekognition
    (Proxy :: Proxy StartCelebrityRecognition)

responseGetFaceSearch :: GetFaceSearchResponse -> TestTree
responseGetFaceSearch =
  res
    "GetFaceSearchResponse"
    "fixture/GetFaceSearchResponse.proto"
    rekognition
    (Proxy :: Proxy GetFaceSearch)

responseStartLabelDetection :: StartLabelDetectionResponse -> TestTree
responseStartLabelDetection =
  res
    "StartLabelDetectionResponse"
    "fixture/StartLabelDetectionResponse.proto"
    rekognition
    (Proxy :: Proxy StartLabelDetection)

responseDescribeProjectVersions :: DescribeProjectVersionsResponse -> TestTree
responseDescribeProjectVersions =
  res
    "DescribeProjectVersionsResponse"
    "fixture/DescribeProjectVersionsResponse.proto"
    rekognition
    (Proxy :: Proxy DescribeProjectVersions)

responseDeleteProjectVersion :: DeleteProjectVersionResponse -> TestTree
responseDeleteProjectVersion =
  res
    "DeleteProjectVersionResponse"
    "fixture/DeleteProjectVersionResponse.proto"
    rekognition
    (Proxy :: Proxy DeleteProjectVersion)

responseCreateStreamProcessor :: CreateStreamProcessorResponse -> TestTree
responseCreateStreamProcessor =
  res
    "CreateStreamProcessorResponse"
    "fixture/CreateStreamProcessorResponse.proto"
    rekognition
    (Proxy :: Proxy CreateStreamProcessor)

responseGetContentModeration :: GetContentModerationResponse -> TestTree
responseGetContentModeration =
  res
    "GetContentModerationResponse"
    "fixture/GetContentModerationResponse.proto"
    rekognition
    (Proxy :: Proxy GetContentModeration)

responseGetCelebrityInfo :: GetCelebrityInfoResponse -> TestTree
responseGetCelebrityInfo =
  res
    "GetCelebrityInfoResponse"
    "fixture/GetCelebrityInfoResponse.proto"
    rekognition
    (Proxy :: Proxy GetCelebrityInfo)

responseDescribeProjects :: DescribeProjectsResponse -> TestTree
responseDescribeProjects =
  res
    "DescribeProjectsResponse"
    "fixture/DescribeProjectsResponse.proto"
    rekognition
    (Proxy :: Proxy DescribeProjects)

responseCreateProjectVersion :: CreateProjectVersionResponse -> TestTree
responseCreateProjectVersion =
  res
    "CreateProjectVersionResponse"
    "fixture/CreateProjectVersionResponse.proto"
    rekognition
    (Proxy :: Proxy CreateProjectVersion)

responseGetFaceDetection :: GetFaceDetectionResponse -> TestTree
responseGetFaceDetection =
  res
    "GetFaceDetectionResponse"
    "fixture/GetFaceDetectionResponse.proto"
    rekognition
    (Proxy :: Proxy GetFaceDetection)

responseStartContentModeration :: StartContentModerationResponse -> TestTree
responseStartContentModeration =
  res
    "StartContentModerationResponse"
    "fixture/StartContentModerationResponse.proto"
    rekognition
    (Proxy :: Proxy StartContentModeration)

responseDetectFaces :: DetectFacesResponse -> TestTree
responseDetectFaces =
  res
    "DetectFacesResponse"
    "fixture/DetectFacesResponse.proto"
    rekognition
    (Proxy :: Proxy DetectFaces)

responseDetectText :: DetectTextResponse -> TestTree
responseDetectText =
  res
    "DetectTextResponse"
    "fixture/DetectTextResponse.proto"
    rekognition
    (Proxy :: Proxy DetectText)

responseStartTextDetection :: StartTextDetectionResponse -> TestTree
responseStartTextDetection =
  res
    "StartTextDetectionResponse"
    "fixture/StartTextDetectionResponse.proto"
    rekognition
    (Proxy :: Proxy StartTextDetection)

responseStopStreamProcessor :: StopStreamProcessorResponse -> TestTree
responseStopStreamProcessor =
  res
    "StopStreamProcessorResponse"
    "fixture/StopStreamProcessorResponse.proto"
    rekognition
    (Proxy :: Proxy StopStreamProcessor)

responseStartStreamProcessor :: StartStreamProcessorResponse -> TestTree
responseStartStreamProcessor =
  res
    "StartStreamProcessorResponse"
    "fixture/StartStreamProcessorResponse.proto"
    rekognition
    (Proxy :: Proxy StartStreamProcessor)
