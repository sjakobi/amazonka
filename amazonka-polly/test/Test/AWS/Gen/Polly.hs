{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.Polly
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.Polly where

import Data.Proxy
import Network.AWS.Polly
import Test.AWS.Fixture
import Test.AWS.Polly.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestGetSpeechSynthesisTask $
--             getSpeechSynthesisTask
--
--         , requestGetLexicon $
--             getLexicon
--
--         , requestListLexicons $
--             listLexicons
--
--         , requestDeleteLexicon $
--             deleteLexicon
--
--         , requestDescribeVoices $
--             describeVoices
--
--         , requestStartSpeechSynthesisTask $
--             startSpeechSynthesisTask
--
--         , requestPutLexicon $
--             putLexicon
--
--         , requestSynthesizeSpeech $
--             synthesizeSpeech
--
--         , requestListSpeechSynthesisTasks $
--             listSpeechSynthesisTasks
--
--           ]

--     , testGroup "response"
--         [ responseGetSpeechSynthesisTask $
--             getSpeechSynthesisTaskResponse
--
--         , responseGetLexicon $
--             getLexiconResponse
--
--         , responseListLexicons $
--             listLexiconsResponse
--
--         , responseDeleteLexicon $
--             deleteLexiconResponse
--
--         , responseDescribeVoices $
--             describeVoicesResponse
--
--         , responseStartSpeechSynthesisTask $
--             startSpeechSynthesisTaskResponse
--
--         , responsePutLexicon $
--             putLexiconResponse
--
--         , responseSynthesizeSpeech $
--             synthesizeSpeechResponse
--
--         , responseListSpeechSynthesisTasks $
--             listSpeechSynthesisTasksResponse
--
--           ]
--     ]

-- Requests

requestGetSpeechSynthesisTask :: GetSpeechSynthesisTask -> TestTree
requestGetSpeechSynthesisTask =
  req
    "GetSpeechSynthesisTask"
    "fixture/GetSpeechSynthesisTask.yaml"

requestGetLexicon :: GetLexicon -> TestTree
requestGetLexicon =
  req
    "GetLexicon"
    "fixture/GetLexicon.yaml"

requestListLexicons :: ListLexicons -> TestTree
requestListLexicons =
  req
    "ListLexicons"
    "fixture/ListLexicons.yaml"

requestDeleteLexicon :: DeleteLexicon -> TestTree
requestDeleteLexicon =
  req
    "DeleteLexicon"
    "fixture/DeleteLexicon.yaml"

requestDescribeVoices :: DescribeVoices -> TestTree
requestDescribeVoices =
  req
    "DescribeVoices"
    "fixture/DescribeVoices.yaml"

requestStartSpeechSynthesisTask :: StartSpeechSynthesisTask -> TestTree
requestStartSpeechSynthesisTask =
  req
    "StartSpeechSynthesisTask"
    "fixture/StartSpeechSynthesisTask.yaml"

requestPutLexicon :: PutLexicon -> TestTree
requestPutLexicon =
  req
    "PutLexicon"
    "fixture/PutLexicon.yaml"

requestSynthesizeSpeech :: SynthesizeSpeech -> TestTree
requestSynthesizeSpeech =
  req
    "SynthesizeSpeech"
    "fixture/SynthesizeSpeech.yaml"

requestListSpeechSynthesisTasks :: ListSpeechSynthesisTasks -> TestTree
requestListSpeechSynthesisTasks =
  req
    "ListSpeechSynthesisTasks"
    "fixture/ListSpeechSynthesisTasks.yaml"

-- Responses

responseGetSpeechSynthesisTask :: GetSpeechSynthesisTaskResponse -> TestTree
responseGetSpeechSynthesisTask =
  res
    "GetSpeechSynthesisTaskResponse"
    "fixture/GetSpeechSynthesisTaskResponse.proto"
    polly
    (Proxy :: Proxy GetSpeechSynthesisTask)

responseGetLexicon :: GetLexiconResponse -> TestTree
responseGetLexicon =
  res
    "GetLexiconResponse"
    "fixture/GetLexiconResponse.proto"
    polly
    (Proxy :: Proxy GetLexicon)

responseListLexicons :: ListLexiconsResponse -> TestTree
responseListLexicons =
  res
    "ListLexiconsResponse"
    "fixture/ListLexiconsResponse.proto"
    polly
    (Proxy :: Proxy ListLexicons)

responseDeleteLexicon :: DeleteLexiconResponse -> TestTree
responseDeleteLexicon =
  res
    "DeleteLexiconResponse"
    "fixture/DeleteLexiconResponse.proto"
    polly
    (Proxy :: Proxy DeleteLexicon)

responseDescribeVoices :: DescribeVoicesResponse -> TestTree
responseDescribeVoices =
  res
    "DescribeVoicesResponse"
    "fixture/DescribeVoicesResponse.proto"
    polly
    (Proxy :: Proxy DescribeVoices)

responseStartSpeechSynthesisTask :: StartSpeechSynthesisTaskResponse -> TestTree
responseStartSpeechSynthesisTask =
  res
    "StartSpeechSynthesisTaskResponse"
    "fixture/StartSpeechSynthesisTaskResponse.proto"
    polly
    (Proxy :: Proxy StartSpeechSynthesisTask)

responsePutLexicon :: PutLexiconResponse -> TestTree
responsePutLexicon =
  res
    "PutLexiconResponse"
    "fixture/PutLexiconResponse.proto"
    polly
    (Proxy :: Proxy PutLexicon)

responseListSpeechSynthesisTasks :: ListSpeechSynthesisTasksResponse -> TestTree
responseListSpeechSynthesisTasks =
  res
    "ListSpeechSynthesisTasksResponse"
    "fixture/ListSpeechSynthesisTasksResponse.proto"
    polly
    (Proxy :: Proxy ListSpeechSynthesisTasks)
