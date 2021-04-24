{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Transcribe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Transcribe where

import Data.Proxy
import Network.AWS.Transcribe
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.Transcribe.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetVocabularyFilter $
--             getVocabularyFilter
--
--         , requestListLanguageModels $
--             listLanguageModels
--
--         , requestStartTranscriptionJob $
--             startTranscriptionJob
--
--         , requestCreateLanguageModel $
--             createLanguageModel
--
--         , requestListVocabularies $
--             listVocabularies
--
--         , requestCreateVocabulary $
--             createVocabulary
--
--         , requestUpdateVocabulary $
--             updateVocabulary
--
--         , requestDeleteVocabulary $
--             deleteVocabulary
--
--         , requestListVocabularyFilters $
--             listVocabularyFilters
--
--         , requestListTranscriptionJobs $
--             listTranscriptionJobs
--
--         , requestDeleteTranscriptionJob $
--             deleteTranscriptionJob
--
--         , requestStartMedicalTranscriptionJob $
--             startMedicalTranscriptionJob
--
--         , requestGetMedicalVocabulary $
--             getMedicalVocabulary
--
--         , requestGetTranscriptionJob $
--             getTranscriptionJob
--
--         , requestDeleteLanguageModel $
--             deleteLanguageModel
--
--         , requestGetVocabulary $
--             getVocabulary
--
--         , requestGetMedicalTranscriptionJob $
--             getMedicalTranscriptionJob
--
--         , requestCreateVocabularyFilter $
--             createVocabularyFilter
--
--         , requestDeleteVocabularyFilter $
--             deleteVocabularyFilter
--
--         , requestListMedicalTranscriptionJobs $
--             listMedicalTranscriptionJobs
--
--         , requestDeleteMedicalTranscriptionJob $
--             deleteMedicalTranscriptionJob
--
--         , requestUpdateVocabularyFilter $
--             updateVocabularyFilter
--
--         , requestDeleteMedicalVocabulary $
--             deleteMedicalVocabulary
--
--         , requestUpdateMedicalVocabulary $
--             updateMedicalVocabulary
--
--         , requestDescribeLanguageModel $
--             describeLanguageModel
--
--         , requestCreateMedicalVocabulary $
--             createMedicalVocabulary
--
--         , requestListMedicalVocabularies $
--             listMedicalVocabularies
--
--           ]

--     , testGroup "response"
--         [ responseGetVocabularyFilter $
--             getVocabularyFilterResponse
--
--         , responseListLanguageModels $
--             listLanguageModelsResponse
--
--         , responseStartTranscriptionJob $
--             startTranscriptionJobResponse
--
--         , responseCreateLanguageModel $
--             createLanguageModelResponse
--
--         , responseListVocabularies $
--             listVocabulariesResponse
--
--         , responseCreateVocabulary $
--             createVocabularyResponse
--
--         , responseUpdateVocabulary $
--             updateVocabularyResponse
--
--         , responseDeleteVocabulary $
--             deleteVocabularyResponse
--
--         , responseListVocabularyFilters $
--             listVocabularyFiltersResponse
--
--         , responseListTranscriptionJobs $
--             listTranscriptionJobsResponse
--
--         , responseDeleteTranscriptionJob $
--             deleteTranscriptionJobResponse
--
--         , responseStartMedicalTranscriptionJob $
--             startMedicalTranscriptionJobResponse
--
--         , responseGetMedicalVocabulary $
--             getMedicalVocabularyResponse
--
--         , responseGetTranscriptionJob $
--             getTranscriptionJobResponse
--
--         , responseDeleteLanguageModel $
--             deleteLanguageModelResponse
--
--         , responseGetVocabulary $
--             getVocabularyResponse
--
--         , responseGetMedicalTranscriptionJob $
--             getMedicalTranscriptionJobResponse
--
--         , responseCreateVocabularyFilter $
--             createVocabularyFilterResponse
--
--         , responseDeleteVocabularyFilter $
--             deleteVocabularyFilterResponse
--
--         , responseListMedicalTranscriptionJobs $
--             listMedicalTranscriptionJobsResponse
--
--         , responseDeleteMedicalTranscriptionJob $
--             deleteMedicalTranscriptionJobResponse
--
--         , responseUpdateVocabularyFilter $
--             updateVocabularyFilterResponse
--
--         , responseDeleteMedicalVocabulary $
--             deleteMedicalVocabularyResponse
--
--         , responseUpdateMedicalVocabulary $
--             updateMedicalVocabularyResponse
--
--         , responseDescribeLanguageModel $
--             describeLanguageModelResponse
--
--         , responseCreateMedicalVocabulary $
--             createMedicalVocabularyResponse
--
--         , responseListMedicalVocabularies $
--             listMedicalVocabulariesResponse
--
--           ]
--     ]

-- Requests

requestGetVocabularyFilter :: GetVocabularyFilter -> TestTree
requestGetVocabularyFilter =
  req
    "GetVocabularyFilter"
    "fixture/GetVocabularyFilter.yaml"

requestListLanguageModels :: ListLanguageModels -> TestTree
requestListLanguageModels =
  req
    "ListLanguageModels"
    "fixture/ListLanguageModels.yaml"

requestStartTranscriptionJob :: StartTranscriptionJob -> TestTree
requestStartTranscriptionJob =
  req
    "StartTranscriptionJob"
    "fixture/StartTranscriptionJob.yaml"

requestCreateLanguageModel :: CreateLanguageModel -> TestTree
requestCreateLanguageModel =
  req
    "CreateLanguageModel"
    "fixture/CreateLanguageModel.yaml"

requestListVocabularies :: ListVocabularies -> TestTree
requestListVocabularies =
  req
    "ListVocabularies"
    "fixture/ListVocabularies.yaml"

requestCreateVocabulary :: CreateVocabulary -> TestTree
requestCreateVocabulary =
  req
    "CreateVocabulary"
    "fixture/CreateVocabulary.yaml"

requestUpdateVocabulary :: UpdateVocabulary -> TestTree
requestUpdateVocabulary =
  req
    "UpdateVocabulary"
    "fixture/UpdateVocabulary.yaml"

requestDeleteVocabulary :: DeleteVocabulary -> TestTree
requestDeleteVocabulary =
  req
    "DeleteVocabulary"
    "fixture/DeleteVocabulary.yaml"

requestListVocabularyFilters :: ListVocabularyFilters -> TestTree
requestListVocabularyFilters =
  req
    "ListVocabularyFilters"
    "fixture/ListVocabularyFilters.yaml"

requestListTranscriptionJobs :: ListTranscriptionJobs -> TestTree
requestListTranscriptionJobs =
  req
    "ListTranscriptionJobs"
    "fixture/ListTranscriptionJobs.yaml"

requestDeleteTranscriptionJob :: DeleteTranscriptionJob -> TestTree
requestDeleteTranscriptionJob =
  req
    "DeleteTranscriptionJob"
    "fixture/DeleteTranscriptionJob.yaml"

requestStartMedicalTranscriptionJob :: StartMedicalTranscriptionJob -> TestTree
requestStartMedicalTranscriptionJob =
  req
    "StartMedicalTranscriptionJob"
    "fixture/StartMedicalTranscriptionJob.yaml"

requestGetMedicalVocabulary :: GetMedicalVocabulary -> TestTree
requestGetMedicalVocabulary =
  req
    "GetMedicalVocabulary"
    "fixture/GetMedicalVocabulary.yaml"

requestGetTranscriptionJob :: GetTranscriptionJob -> TestTree
requestGetTranscriptionJob =
  req
    "GetTranscriptionJob"
    "fixture/GetTranscriptionJob.yaml"

requestDeleteLanguageModel :: DeleteLanguageModel -> TestTree
requestDeleteLanguageModel =
  req
    "DeleteLanguageModel"
    "fixture/DeleteLanguageModel.yaml"

requestGetVocabulary :: GetVocabulary -> TestTree
requestGetVocabulary =
  req
    "GetVocabulary"
    "fixture/GetVocabulary.yaml"

requestGetMedicalTranscriptionJob :: GetMedicalTranscriptionJob -> TestTree
requestGetMedicalTranscriptionJob =
  req
    "GetMedicalTranscriptionJob"
    "fixture/GetMedicalTranscriptionJob.yaml"

requestCreateVocabularyFilter :: CreateVocabularyFilter -> TestTree
requestCreateVocabularyFilter =
  req
    "CreateVocabularyFilter"
    "fixture/CreateVocabularyFilter.yaml"

requestDeleteVocabularyFilter :: DeleteVocabularyFilter -> TestTree
requestDeleteVocabularyFilter =
  req
    "DeleteVocabularyFilter"
    "fixture/DeleteVocabularyFilter.yaml"

requestListMedicalTranscriptionJobs :: ListMedicalTranscriptionJobs -> TestTree
requestListMedicalTranscriptionJobs =
  req
    "ListMedicalTranscriptionJobs"
    "fixture/ListMedicalTranscriptionJobs.yaml"

requestDeleteMedicalTranscriptionJob :: DeleteMedicalTranscriptionJob -> TestTree
requestDeleteMedicalTranscriptionJob =
  req
    "DeleteMedicalTranscriptionJob"
    "fixture/DeleteMedicalTranscriptionJob.yaml"

requestUpdateVocabularyFilter :: UpdateVocabularyFilter -> TestTree
requestUpdateVocabularyFilter =
  req
    "UpdateVocabularyFilter"
    "fixture/UpdateVocabularyFilter.yaml"

requestDeleteMedicalVocabulary :: DeleteMedicalVocabulary -> TestTree
requestDeleteMedicalVocabulary =
  req
    "DeleteMedicalVocabulary"
    "fixture/DeleteMedicalVocabulary.yaml"

requestUpdateMedicalVocabulary :: UpdateMedicalVocabulary -> TestTree
requestUpdateMedicalVocabulary =
  req
    "UpdateMedicalVocabulary"
    "fixture/UpdateMedicalVocabulary.yaml"

requestDescribeLanguageModel :: DescribeLanguageModel -> TestTree
requestDescribeLanguageModel =
  req
    "DescribeLanguageModel"
    "fixture/DescribeLanguageModel.yaml"

requestCreateMedicalVocabulary :: CreateMedicalVocabulary -> TestTree
requestCreateMedicalVocabulary =
  req
    "CreateMedicalVocabulary"
    "fixture/CreateMedicalVocabulary.yaml"

requestListMedicalVocabularies :: ListMedicalVocabularies -> TestTree
requestListMedicalVocabularies =
  req
    "ListMedicalVocabularies"
    "fixture/ListMedicalVocabularies.yaml"

-- Responses

responseGetVocabularyFilter :: GetVocabularyFilterResponse -> TestTree
responseGetVocabularyFilter =
  res
    "GetVocabularyFilterResponse"
    "fixture/GetVocabularyFilterResponse.proto"
    transcribe
    (Proxy :: Proxy GetVocabularyFilter)

responseListLanguageModels :: ListLanguageModelsResponse -> TestTree
responseListLanguageModels =
  res
    "ListLanguageModelsResponse"
    "fixture/ListLanguageModelsResponse.proto"
    transcribe
    (Proxy :: Proxy ListLanguageModels)

responseStartTranscriptionJob :: StartTranscriptionJobResponse -> TestTree
responseStartTranscriptionJob =
  res
    "StartTranscriptionJobResponse"
    "fixture/StartTranscriptionJobResponse.proto"
    transcribe
    (Proxy :: Proxy StartTranscriptionJob)

responseCreateLanguageModel :: CreateLanguageModelResponse -> TestTree
responseCreateLanguageModel =
  res
    "CreateLanguageModelResponse"
    "fixture/CreateLanguageModelResponse.proto"
    transcribe
    (Proxy :: Proxy CreateLanguageModel)

responseListVocabularies :: ListVocabulariesResponse -> TestTree
responseListVocabularies =
  res
    "ListVocabulariesResponse"
    "fixture/ListVocabulariesResponse.proto"
    transcribe
    (Proxy :: Proxy ListVocabularies)

responseCreateVocabulary :: CreateVocabularyResponse -> TestTree
responseCreateVocabulary =
  res
    "CreateVocabularyResponse"
    "fixture/CreateVocabularyResponse.proto"
    transcribe
    (Proxy :: Proxy CreateVocabulary)

responseUpdateVocabulary :: UpdateVocabularyResponse -> TestTree
responseUpdateVocabulary =
  res
    "UpdateVocabularyResponse"
    "fixture/UpdateVocabularyResponse.proto"
    transcribe
    (Proxy :: Proxy UpdateVocabulary)

responseDeleteVocabulary :: DeleteVocabularyResponse -> TestTree
responseDeleteVocabulary =
  res
    "DeleteVocabularyResponse"
    "fixture/DeleteVocabularyResponse.proto"
    transcribe
    (Proxy :: Proxy DeleteVocabulary)

responseListVocabularyFilters :: ListVocabularyFiltersResponse -> TestTree
responseListVocabularyFilters =
  res
    "ListVocabularyFiltersResponse"
    "fixture/ListVocabularyFiltersResponse.proto"
    transcribe
    (Proxy :: Proxy ListVocabularyFilters)

responseListTranscriptionJobs :: ListTranscriptionJobsResponse -> TestTree
responseListTranscriptionJobs =
  res
    "ListTranscriptionJobsResponse"
    "fixture/ListTranscriptionJobsResponse.proto"
    transcribe
    (Proxy :: Proxy ListTranscriptionJobs)

responseDeleteTranscriptionJob :: DeleteTranscriptionJobResponse -> TestTree
responseDeleteTranscriptionJob =
  res
    "DeleteTranscriptionJobResponse"
    "fixture/DeleteTranscriptionJobResponse.proto"
    transcribe
    (Proxy :: Proxy DeleteTranscriptionJob)

responseStartMedicalTranscriptionJob :: StartMedicalTranscriptionJobResponse -> TestTree
responseStartMedicalTranscriptionJob =
  res
    "StartMedicalTranscriptionJobResponse"
    "fixture/StartMedicalTranscriptionJobResponse.proto"
    transcribe
    (Proxy :: Proxy StartMedicalTranscriptionJob)

responseGetMedicalVocabulary :: GetMedicalVocabularyResponse -> TestTree
responseGetMedicalVocabulary =
  res
    "GetMedicalVocabularyResponse"
    "fixture/GetMedicalVocabularyResponse.proto"
    transcribe
    (Proxy :: Proxy GetMedicalVocabulary)

responseGetTranscriptionJob :: GetTranscriptionJobResponse -> TestTree
responseGetTranscriptionJob =
  res
    "GetTranscriptionJobResponse"
    "fixture/GetTranscriptionJobResponse.proto"
    transcribe
    (Proxy :: Proxy GetTranscriptionJob)

responseDeleteLanguageModel :: DeleteLanguageModelResponse -> TestTree
responseDeleteLanguageModel =
  res
    "DeleteLanguageModelResponse"
    "fixture/DeleteLanguageModelResponse.proto"
    transcribe
    (Proxy :: Proxy DeleteLanguageModel)

responseGetVocabulary :: GetVocabularyResponse -> TestTree
responseGetVocabulary =
  res
    "GetVocabularyResponse"
    "fixture/GetVocabularyResponse.proto"
    transcribe
    (Proxy :: Proxy GetVocabulary)

responseGetMedicalTranscriptionJob :: GetMedicalTranscriptionJobResponse -> TestTree
responseGetMedicalTranscriptionJob =
  res
    "GetMedicalTranscriptionJobResponse"
    "fixture/GetMedicalTranscriptionJobResponse.proto"
    transcribe
    (Proxy :: Proxy GetMedicalTranscriptionJob)

responseCreateVocabularyFilter :: CreateVocabularyFilterResponse -> TestTree
responseCreateVocabularyFilter =
  res
    "CreateVocabularyFilterResponse"
    "fixture/CreateVocabularyFilterResponse.proto"
    transcribe
    (Proxy :: Proxy CreateVocabularyFilter)

responseDeleteVocabularyFilter :: DeleteVocabularyFilterResponse -> TestTree
responseDeleteVocabularyFilter =
  res
    "DeleteVocabularyFilterResponse"
    "fixture/DeleteVocabularyFilterResponse.proto"
    transcribe
    (Proxy :: Proxy DeleteVocabularyFilter)

responseListMedicalTranscriptionJobs :: ListMedicalTranscriptionJobsResponse -> TestTree
responseListMedicalTranscriptionJobs =
  res
    "ListMedicalTranscriptionJobsResponse"
    "fixture/ListMedicalTranscriptionJobsResponse.proto"
    transcribe
    (Proxy :: Proxy ListMedicalTranscriptionJobs)

responseDeleteMedicalTranscriptionJob :: DeleteMedicalTranscriptionJobResponse -> TestTree
responseDeleteMedicalTranscriptionJob =
  res
    "DeleteMedicalTranscriptionJobResponse"
    "fixture/DeleteMedicalTranscriptionJobResponse.proto"
    transcribe
    (Proxy :: Proxy DeleteMedicalTranscriptionJob)

responseUpdateVocabularyFilter :: UpdateVocabularyFilterResponse -> TestTree
responseUpdateVocabularyFilter =
  res
    "UpdateVocabularyFilterResponse"
    "fixture/UpdateVocabularyFilterResponse.proto"
    transcribe
    (Proxy :: Proxy UpdateVocabularyFilter)

responseDeleteMedicalVocabulary :: DeleteMedicalVocabularyResponse -> TestTree
responseDeleteMedicalVocabulary =
  res
    "DeleteMedicalVocabularyResponse"
    "fixture/DeleteMedicalVocabularyResponse.proto"
    transcribe
    (Proxy :: Proxy DeleteMedicalVocabulary)

responseUpdateMedicalVocabulary :: UpdateMedicalVocabularyResponse -> TestTree
responseUpdateMedicalVocabulary =
  res
    "UpdateMedicalVocabularyResponse"
    "fixture/UpdateMedicalVocabularyResponse.proto"
    transcribe
    (Proxy :: Proxy UpdateMedicalVocabulary)

responseDescribeLanguageModel :: DescribeLanguageModelResponse -> TestTree
responseDescribeLanguageModel =
  res
    "DescribeLanguageModelResponse"
    "fixture/DescribeLanguageModelResponse.proto"
    transcribe
    (Proxy :: Proxy DescribeLanguageModel)

responseCreateMedicalVocabulary :: CreateMedicalVocabularyResponse -> TestTree
responseCreateMedicalVocabulary =
  res
    "CreateMedicalVocabularyResponse"
    "fixture/CreateMedicalVocabularyResponse.proto"
    transcribe
    (Proxy :: Proxy CreateMedicalVocabulary)

responseListMedicalVocabularies :: ListMedicalVocabulariesResponse -> TestTree
responseListMedicalVocabularies =
  res
    "ListMedicalVocabulariesResponse"
    "fixture/ListMedicalVocabulariesResponse.proto"
    transcribe
    (Proxy :: Proxy ListMedicalVocabularies)
