{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.MachineLearning
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.MachineLearning where

import Data.Proxy
import Network.AWS.MachineLearning
import Test.AWS.Fixture
import Test.AWS.MachineLearning.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteMLModel $
--             deleteMLModel
--
--         , requestUpdateMLModel $
--             updateMLModel
--
--         , requestCreateDataSourceFromS3 $
--             createDataSourceFromS3
--
--         , requestCreateDataSourceFromRedshift $
--             createDataSourceFromRedshift
--
--         , requestUpdateDataSource $
--             updateDataSource
--
--         , requestDescribeTags $
--             describeTags
--
--         , requestDeleteDataSource $
--             deleteDataSource
--
--         , requestDescribeDataSources $
--             describeDataSources
--
--         , requestDescribeEvaluations $
--             describeEvaluations
--
--         , requestAddTags $
--             addTags
--
--         , requestGetMLModel $
--             getMLModel
--
--         , requestGetEvaluation $
--             getEvaluation
--
--         , requestDeleteTags $
--             deleteTags
--
--         , requestDeleteRealtimeEndpoint $
--             deleteRealtimeEndpoint
--
--         , requestCreateDataSourceFromRDS $
--             createDataSourceFromRDS
--
--         , requestGetBatchPrediction $
--             getBatchPrediction
--
--         , requestDescribeBatchPredictions $
--             describeBatchPredictions
--
--         , requestDeleteEvaluation $
--             deleteEvaluation
--
--         , requestUpdateEvaluation $
--             updateEvaluation
--
--         , requestGetDataSource $
--             getDataSource
--
--         , requestCreateRealtimeEndpoint $
--             createRealtimeEndpoint
--
--         , requestUpdateBatchPrediction $
--             updateBatchPrediction
--
--         , requestDeleteBatchPrediction $
--             deleteBatchPrediction
--
--         , requestDescribeMLModels $
--             describeMLModels
--
--         , requestCreateBatchPrediction $
--             createBatchPrediction
--
--         , requestPredict $
--             predict
--
--         , requestCreateMLModel $
--             createMLModel
--
--         , requestCreateEvaluation $
--             createEvaluation
--
--           ]

--     , testGroup "response"
--         [ responseDeleteMLModel $
--             deleteMLModelResponse
--
--         , responseUpdateMLModel $
--             updateMLModelResponse
--
--         , responseCreateDataSourceFromS3 $
--             createDataSourceFromS3Response
--
--         , responseCreateDataSourceFromRedshift $
--             createDataSourceFromRedshiftResponse
--
--         , responseUpdateDataSource $
--             updateDataSourceResponse
--
--         , responseDescribeTags $
--             describeTagsResponse
--
--         , responseDeleteDataSource $
--             deleteDataSourceResponse
--
--         , responseDescribeDataSources $
--             describeDataSourcesResponse
--
--         , responseDescribeEvaluations $
--             describeEvaluationsResponse
--
--         , responseAddTags $
--             addTagsResponse
--
--         , responseGetMLModel $
--             getMLModelResponse
--
--         , responseGetEvaluation $
--             getEvaluationResponse
--
--         , responseDeleteTags $
--             deleteTagsResponse
--
--         , responseDeleteRealtimeEndpoint $
--             deleteRealtimeEndpointResponse
--
--         , responseCreateDataSourceFromRDS $
--             createDataSourceFromRDSResponse
--
--         , responseGetBatchPrediction $
--             getBatchPredictionResponse
--
--         , responseDescribeBatchPredictions $
--             describeBatchPredictionsResponse
--
--         , responseDeleteEvaluation $
--             deleteEvaluationResponse
--
--         , responseUpdateEvaluation $
--             updateEvaluationResponse
--
--         , responseGetDataSource $
--             getDataSourceResponse
--
--         , responseCreateRealtimeEndpoint $
--             createRealtimeEndpointResponse
--
--         , responseUpdateBatchPrediction $
--             updateBatchPredictionResponse
--
--         , responseDeleteBatchPrediction $
--             deleteBatchPredictionResponse
--
--         , responseDescribeMLModels $
--             describeMLModelsResponse
--
--         , responseCreateBatchPrediction $
--             createBatchPredictionResponse
--
--         , responsePredict $
--             predictResponse
--
--         , responseCreateMLModel $
--             createMLModelResponse
--
--         , responseCreateEvaluation $
--             createEvaluationResponse
--
--           ]
--     ]

-- Requests

requestDeleteMLModel :: DeleteMLModel -> TestTree
requestDeleteMLModel =
  req
    "DeleteMLModel"
    "fixture/DeleteMLModel.yaml"

requestUpdateMLModel :: UpdateMLModel -> TestTree
requestUpdateMLModel =
  req
    "UpdateMLModel"
    "fixture/UpdateMLModel.yaml"

requestCreateDataSourceFromS3 :: CreateDataSourceFromS3 -> TestTree
requestCreateDataSourceFromS3 =
  req
    "CreateDataSourceFromS3"
    "fixture/CreateDataSourceFromS3.yaml"

requestCreateDataSourceFromRedshift :: CreateDataSourceFromRedshift -> TestTree
requestCreateDataSourceFromRedshift =
  req
    "CreateDataSourceFromRedshift"
    "fixture/CreateDataSourceFromRedshift.yaml"

requestUpdateDataSource :: UpdateDataSource -> TestTree
requestUpdateDataSource =
  req
    "UpdateDataSource"
    "fixture/UpdateDataSource.yaml"

requestDescribeTags :: DescribeTags -> TestTree
requestDescribeTags =
  req
    "DescribeTags"
    "fixture/DescribeTags.yaml"

requestDeleteDataSource :: DeleteDataSource -> TestTree
requestDeleteDataSource =
  req
    "DeleteDataSource"
    "fixture/DeleteDataSource.yaml"

requestDescribeDataSources :: DescribeDataSources -> TestTree
requestDescribeDataSources =
  req
    "DescribeDataSources"
    "fixture/DescribeDataSources.yaml"

requestDescribeEvaluations :: DescribeEvaluations -> TestTree
requestDescribeEvaluations =
  req
    "DescribeEvaluations"
    "fixture/DescribeEvaluations.yaml"

requestAddTags :: AddTags -> TestTree
requestAddTags =
  req
    "AddTags"
    "fixture/AddTags.yaml"

requestGetMLModel :: GetMLModel -> TestTree
requestGetMLModel =
  req
    "GetMLModel"
    "fixture/GetMLModel.yaml"

requestGetEvaluation :: GetEvaluation -> TestTree
requestGetEvaluation =
  req
    "GetEvaluation"
    "fixture/GetEvaluation.yaml"

requestDeleteTags :: DeleteTags -> TestTree
requestDeleteTags =
  req
    "DeleteTags"
    "fixture/DeleteTags.yaml"

requestDeleteRealtimeEndpoint :: DeleteRealtimeEndpoint -> TestTree
requestDeleteRealtimeEndpoint =
  req
    "DeleteRealtimeEndpoint"
    "fixture/DeleteRealtimeEndpoint.yaml"

requestCreateDataSourceFromRDS :: CreateDataSourceFromRDS -> TestTree
requestCreateDataSourceFromRDS =
  req
    "CreateDataSourceFromRDS"
    "fixture/CreateDataSourceFromRDS.yaml"

requestGetBatchPrediction :: GetBatchPrediction -> TestTree
requestGetBatchPrediction =
  req
    "GetBatchPrediction"
    "fixture/GetBatchPrediction.yaml"

requestDescribeBatchPredictions :: DescribeBatchPredictions -> TestTree
requestDescribeBatchPredictions =
  req
    "DescribeBatchPredictions"
    "fixture/DescribeBatchPredictions.yaml"

requestDeleteEvaluation :: DeleteEvaluation -> TestTree
requestDeleteEvaluation =
  req
    "DeleteEvaluation"
    "fixture/DeleteEvaluation.yaml"

requestUpdateEvaluation :: UpdateEvaluation -> TestTree
requestUpdateEvaluation =
  req
    "UpdateEvaluation"
    "fixture/UpdateEvaluation.yaml"

requestGetDataSource :: GetDataSource -> TestTree
requestGetDataSource =
  req
    "GetDataSource"
    "fixture/GetDataSource.yaml"

requestCreateRealtimeEndpoint :: CreateRealtimeEndpoint -> TestTree
requestCreateRealtimeEndpoint =
  req
    "CreateRealtimeEndpoint"
    "fixture/CreateRealtimeEndpoint.yaml"

requestUpdateBatchPrediction :: UpdateBatchPrediction -> TestTree
requestUpdateBatchPrediction =
  req
    "UpdateBatchPrediction"
    "fixture/UpdateBatchPrediction.yaml"

requestDeleteBatchPrediction :: DeleteBatchPrediction -> TestTree
requestDeleteBatchPrediction =
  req
    "DeleteBatchPrediction"
    "fixture/DeleteBatchPrediction.yaml"

requestDescribeMLModels :: DescribeMLModels -> TestTree
requestDescribeMLModels =
  req
    "DescribeMLModels"
    "fixture/DescribeMLModels.yaml"

requestCreateBatchPrediction :: CreateBatchPrediction -> TestTree
requestCreateBatchPrediction =
  req
    "CreateBatchPrediction"
    "fixture/CreateBatchPrediction.yaml"

requestPredict :: Predict -> TestTree
requestPredict =
  req
    "Predict"
    "fixture/Predict.yaml"

requestCreateMLModel :: CreateMLModel -> TestTree
requestCreateMLModel =
  req
    "CreateMLModel"
    "fixture/CreateMLModel.yaml"

requestCreateEvaluation :: CreateEvaluation -> TestTree
requestCreateEvaluation =
  req
    "CreateEvaluation"
    "fixture/CreateEvaluation.yaml"

-- Responses

responseDeleteMLModel :: DeleteMLModelResponse -> TestTree
responseDeleteMLModel =
  res
    "DeleteMLModelResponse"
    "fixture/DeleteMLModelResponse.proto"
    machineLearning
    (Proxy :: Proxy DeleteMLModel)

responseUpdateMLModel :: UpdateMLModelResponse -> TestTree
responseUpdateMLModel =
  res
    "UpdateMLModelResponse"
    "fixture/UpdateMLModelResponse.proto"
    machineLearning
    (Proxy :: Proxy UpdateMLModel)

responseCreateDataSourceFromS3 :: CreateDataSourceFromS3Response -> TestTree
responseCreateDataSourceFromS3 =
  res
    "CreateDataSourceFromS3Response"
    "fixture/CreateDataSourceFromS3Response.proto"
    machineLearning
    (Proxy :: Proxy CreateDataSourceFromS3)

responseCreateDataSourceFromRedshift :: CreateDataSourceFromRedshiftResponse -> TestTree
responseCreateDataSourceFromRedshift =
  res
    "CreateDataSourceFromRedshiftResponse"
    "fixture/CreateDataSourceFromRedshiftResponse.proto"
    machineLearning
    (Proxy :: Proxy CreateDataSourceFromRedshift)

responseUpdateDataSource :: UpdateDataSourceResponse -> TestTree
responseUpdateDataSource =
  res
    "UpdateDataSourceResponse"
    "fixture/UpdateDataSourceResponse.proto"
    machineLearning
    (Proxy :: Proxy UpdateDataSource)

responseDescribeTags :: DescribeTagsResponse -> TestTree
responseDescribeTags =
  res
    "DescribeTagsResponse"
    "fixture/DescribeTagsResponse.proto"
    machineLearning
    (Proxy :: Proxy DescribeTags)

responseDeleteDataSource :: DeleteDataSourceResponse -> TestTree
responseDeleteDataSource =
  res
    "DeleteDataSourceResponse"
    "fixture/DeleteDataSourceResponse.proto"
    machineLearning
    (Proxy :: Proxy DeleteDataSource)

responseDescribeDataSources :: DescribeDataSourcesResponse -> TestTree
responseDescribeDataSources =
  res
    "DescribeDataSourcesResponse"
    "fixture/DescribeDataSourcesResponse.proto"
    machineLearning
    (Proxy :: Proxy DescribeDataSources)

responseDescribeEvaluations :: DescribeEvaluationsResponse -> TestTree
responseDescribeEvaluations =
  res
    "DescribeEvaluationsResponse"
    "fixture/DescribeEvaluationsResponse.proto"
    machineLearning
    (Proxy :: Proxy DescribeEvaluations)

responseAddTags :: AddTagsResponse -> TestTree
responseAddTags =
  res
    "AddTagsResponse"
    "fixture/AddTagsResponse.proto"
    machineLearning
    (Proxy :: Proxy AddTags)

responseGetMLModel :: GetMLModelResponse -> TestTree
responseGetMLModel =
  res
    "GetMLModelResponse"
    "fixture/GetMLModelResponse.proto"
    machineLearning
    (Proxy :: Proxy GetMLModel)

responseGetEvaluation :: GetEvaluationResponse -> TestTree
responseGetEvaluation =
  res
    "GetEvaluationResponse"
    "fixture/GetEvaluationResponse.proto"
    machineLearning
    (Proxy :: Proxy GetEvaluation)

responseDeleteTags :: DeleteTagsResponse -> TestTree
responseDeleteTags =
  res
    "DeleteTagsResponse"
    "fixture/DeleteTagsResponse.proto"
    machineLearning
    (Proxy :: Proxy DeleteTags)

responseDeleteRealtimeEndpoint :: DeleteRealtimeEndpointResponse -> TestTree
responseDeleteRealtimeEndpoint =
  res
    "DeleteRealtimeEndpointResponse"
    "fixture/DeleteRealtimeEndpointResponse.proto"
    machineLearning
    (Proxy :: Proxy DeleteRealtimeEndpoint)

responseCreateDataSourceFromRDS :: CreateDataSourceFromRDSResponse -> TestTree
responseCreateDataSourceFromRDS =
  res
    "CreateDataSourceFromRDSResponse"
    "fixture/CreateDataSourceFromRDSResponse.proto"
    machineLearning
    (Proxy :: Proxy CreateDataSourceFromRDS)

responseGetBatchPrediction :: GetBatchPredictionResponse -> TestTree
responseGetBatchPrediction =
  res
    "GetBatchPredictionResponse"
    "fixture/GetBatchPredictionResponse.proto"
    machineLearning
    (Proxy :: Proxy GetBatchPrediction)

responseDescribeBatchPredictions :: DescribeBatchPredictionsResponse -> TestTree
responseDescribeBatchPredictions =
  res
    "DescribeBatchPredictionsResponse"
    "fixture/DescribeBatchPredictionsResponse.proto"
    machineLearning
    (Proxy :: Proxy DescribeBatchPredictions)

responseDeleteEvaluation :: DeleteEvaluationResponse -> TestTree
responseDeleteEvaluation =
  res
    "DeleteEvaluationResponse"
    "fixture/DeleteEvaluationResponse.proto"
    machineLearning
    (Proxy :: Proxy DeleteEvaluation)

responseUpdateEvaluation :: UpdateEvaluationResponse -> TestTree
responseUpdateEvaluation =
  res
    "UpdateEvaluationResponse"
    "fixture/UpdateEvaluationResponse.proto"
    machineLearning
    (Proxy :: Proxy UpdateEvaluation)

responseGetDataSource :: GetDataSourceResponse -> TestTree
responseGetDataSource =
  res
    "GetDataSourceResponse"
    "fixture/GetDataSourceResponse.proto"
    machineLearning
    (Proxy :: Proxy GetDataSource)

responseCreateRealtimeEndpoint :: CreateRealtimeEndpointResponse -> TestTree
responseCreateRealtimeEndpoint =
  res
    "CreateRealtimeEndpointResponse"
    "fixture/CreateRealtimeEndpointResponse.proto"
    machineLearning
    (Proxy :: Proxy CreateRealtimeEndpoint)

responseUpdateBatchPrediction :: UpdateBatchPredictionResponse -> TestTree
responseUpdateBatchPrediction =
  res
    "UpdateBatchPredictionResponse"
    "fixture/UpdateBatchPredictionResponse.proto"
    machineLearning
    (Proxy :: Proxy UpdateBatchPrediction)

responseDeleteBatchPrediction :: DeleteBatchPredictionResponse -> TestTree
responseDeleteBatchPrediction =
  res
    "DeleteBatchPredictionResponse"
    "fixture/DeleteBatchPredictionResponse.proto"
    machineLearning
    (Proxy :: Proxy DeleteBatchPrediction)

responseDescribeMLModels :: DescribeMLModelsResponse -> TestTree
responseDescribeMLModels =
  res
    "DescribeMLModelsResponse"
    "fixture/DescribeMLModelsResponse.proto"
    machineLearning
    (Proxy :: Proxy DescribeMLModels)

responseCreateBatchPrediction :: CreateBatchPredictionResponse -> TestTree
responseCreateBatchPrediction =
  res
    "CreateBatchPredictionResponse"
    "fixture/CreateBatchPredictionResponse.proto"
    machineLearning
    (Proxy :: Proxy CreateBatchPrediction)

responsePredict :: PredictResponse -> TestTree
responsePredict =
  res
    "PredictResponse"
    "fixture/PredictResponse.proto"
    machineLearning
    (Proxy :: Proxy Predict)

responseCreateMLModel :: CreateMLModelResponse -> TestTree
responseCreateMLModel =
  res
    "CreateMLModelResponse"
    "fixture/CreateMLModelResponse.proto"
    machineLearning
    (Proxy :: Proxy CreateMLModel)

responseCreateEvaluation :: CreateEvaluationResponse -> TestTree
responseCreateEvaluation =
  res
    "CreateEvaluationResponse"
    "fixture/CreateEvaluationResponse.proto"
    machineLearning
    (Proxy :: Proxy CreateEvaluation)
