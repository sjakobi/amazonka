{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.LexModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.LexModels where

import Data.Proxy
import Network.AWS.LexModels
import Test.AWS.Fixture
import Test.AWS.LexModels.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteSlotTypeVersion $
--             deleteSlotTypeVersion
--
--         , requestGetBots $
--             getBots
--
--         , requestGetSlotTypes $
--             getSlotTypes
--
--         , requestDeleteUtterances $
--             deleteUtterances
--
--         , requestGetBotAlias $
--             getBotAlias
--
--         , requestGetBotChannelAssociations $
--             getBotChannelAssociations
--
--         , requestPutBotAlias $
--             putBotAlias
--
--         , requestGetUtterancesView $
--             getUtterancesView
--
--         , requestUntagResource $
--             untagResource
--
--         , requestGetBuiltinIntent $
--             getBuiltinIntent
--
--         , requestGetSlotTypeVersions $
--             getSlotTypeVersions
--
--         , requestGetBuiltinSlotTypes $
--             getBuiltinSlotTypes
--
--         , requestPutBot $
--             putBot
--
--         , requestTagResource $
--             tagResource
--
--         , requestDeleteSlotType $
--             deleteSlotType
--
--         , requestPutIntent $
--             putIntent
--
--         , requestGetBotChannelAssociation $
--             getBotChannelAssociation
--
--         , requestCreateIntentVersion $
--             createIntentVersion
--
--         , requestGetExport $
--             getExport
--
--         , requestGetSlotType $
--             getSlotType
--
--         , requestDeleteIntentVersion $
--             deleteIntentVersion
--
--         , requestCreateBotVersion $
--             createBotVersion
--
--         , requestGetBot $
--             getBot
--
--         , requestGetBotAliases $
--             getBotAliases
--
--         , requestGetIntents $
--             getIntents
--
--         , requestGetBotVersions $
--             getBotVersions
--
--         , requestDeleteBotAlias $
--             deleteBotAlias
--
--         , requestGetImport $
--             getImport
--
--         , requestGetIntentVersions $
--             getIntentVersions
--
--         , requestGetBuiltinIntents $
--             getBuiltinIntents
--
--         , requestDeleteBot $
--             deleteBot
--
--         , requestPutSlotType $
--             putSlotType
--
--         , requestStartImport $
--             startImport
--
--         , requestDeleteIntent $
--             deleteIntent
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestCreateSlotTypeVersion $
--             createSlotTypeVersion
--
--         , requestGetIntent $
--             getIntent
--
--         , requestDeleteBotVersion $
--             deleteBotVersion
--
--         , requestDeleteBotChannelAssociation $
--             deleteBotChannelAssociation
--
--           ]

--     , testGroup "response"
--         [ responseDeleteSlotTypeVersion $
--             deleteSlotTypeVersionResponse
--
--         , responseGetBots $
--             getBotsResponse
--
--         , responseGetSlotTypes $
--             getSlotTypesResponse
--
--         , responseDeleteUtterances $
--             deleteUtterancesResponse
--
--         , responseGetBotAlias $
--             getBotAliasResponse
--
--         , responseGetBotChannelAssociations $
--             getBotChannelAssociationsResponse
--
--         , responsePutBotAlias $
--             putBotAliasResponse
--
--         , responseGetUtterancesView $
--             getUtterancesViewResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseGetBuiltinIntent $
--             getBuiltinIntentResponse
--
--         , responseGetSlotTypeVersions $
--             getSlotTypeVersionsResponse
--
--         , responseGetBuiltinSlotTypes $
--             getBuiltinSlotTypesResponse
--
--         , responsePutBot $
--             putBotResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseDeleteSlotType $
--             deleteSlotTypeResponse
--
--         , responsePutIntent $
--             putIntentResponse
--
--         , responseGetBotChannelAssociation $
--             getBotChannelAssociationResponse
--
--         , responseCreateIntentVersion $
--             createIntentVersionResponse
--
--         , responseGetExport $
--             getExportResponse
--
--         , responseGetSlotType $
--             getSlotTypeResponse
--
--         , responseDeleteIntentVersion $
--             deleteIntentVersionResponse
--
--         , responseCreateBotVersion $
--             createBotVersionResponse
--
--         , responseGetBot $
--             getBotResponse
--
--         , responseGetBotAliases $
--             getBotAliasesResponse
--
--         , responseGetIntents $
--             getIntentsResponse
--
--         , responseGetBotVersions $
--             getBotVersionsResponse
--
--         , responseDeleteBotAlias $
--             deleteBotAliasResponse
--
--         , responseGetImport $
--             getImportResponse
--
--         , responseGetIntentVersions $
--             getIntentVersionsResponse
--
--         , responseGetBuiltinIntents $
--             getBuiltinIntentsResponse
--
--         , responseDeleteBot $
--             deleteBotResponse
--
--         , responsePutSlotType $
--             putSlotTypeResponse
--
--         , responseStartImport $
--             startImportResponse
--
--         , responseDeleteIntent $
--             deleteIntentResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseCreateSlotTypeVersion $
--             createSlotTypeVersionResponse
--
--         , responseGetIntent $
--             getIntentResponse
--
--         , responseDeleteBotVersion $
--             deleteBotVersionResponse
--
--         , responseDeleteBotChannelAssociation $
--             deleteBotChannelAssociationResponse
--
--           ]
--     ]

-- Requests

requestDeleteSlotTypeVersion :: DeleteSlotTypeVersion -> TestTree
requestDeleteSlotTypeVersion =
  req
    "DeleteSlotTypeVersion"
    "fixture/DeleteSlotTypeVersion.yaml"

requestGetBots :: GetBots -> TestTree
requestGetBots =
  req
    "GetBots"
    "fixture/GetBots.yaml"

requestGetSlotTypes :: GetSlotTypes -> TestTree
requestGetSlotTypes =
  req
    "GetSlotTypes"
    "fixture/GetSlotTypes.yaml"

requestDeleteUtterances :: DeleteUtterances -> TestTree
requestDeleteUtterances =
  req
    "DeleteUtterances"
    "fixture/DeleteUtterances.yaml"

requestGetBotAlias :: GetBotAlias -> TestTree
requestGetBotAlias =
  req
    "GetBotAlias"
    "fixture/GetBotAlias.yaml"

requestGetBotChannelAssociations :: GetBotChannelAssociations -> TestTree
requestGetBotChannelAssociations =
  req
    "GetBotChannelAssociations"
    "fixture/GetBotChannelAssociations.yaml"

requestPutBotAlias :: PutBotAlias -> TestTree
requestPutBotAlias =
  req
    "PutBotAlias"
    "fixture/PutBotAlias.yaml"

requestGetUtterancesView :: GetUtterancesView -> TestTree
requestGetUtterancesView =
  req
    "GetUtterancesView"
    "fixture/GetUtterancesView.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestGetBuiltinIntent :: GetBuiltinIntent -> TestTree
requestGetBuiltinIntent =
  req
    "GetBuiltinIntent"
    "fixture/GetBuiltinIntent.yaml"

requestGetSlotTypeVersions :: GetSlotTypeVersions -> TestTree
requestGetSlotTypeVersions =
  req
    "GetSlotTypeVersions"
    "fixture/GetSlotTypeVersions.yaml"

requestGetBuiltinSlotTypes :: GetBuiltinSlotTypes -> TestTree
requestGetBuiltinSlotTypes =
  req
    "GetBuiltinSlotTypes"
    "fixture/GetBuiltinSlotTypes.yaml"

requestPutBot :: PutBot -> TestTree
requestPutBot =
  req
    "PutBot"
    "fixture/PutBot.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestDeleteSlotType :: DeleteSlotType -> TestTree
requestDeleteSlotType =
  req
    "DeleteSlotType"
    "fixture/DeleteSlotType.yaml"

requestPutIntent :: PutIntent -> TestTree
requestPutIntent =
  req
    "PutIntent"
    "fixture/PutIntent.yaml"

requestGetBotChannelAssociation :: GetBotChannelAssociation -> TestTree
requestGetBotChannelAssociation =
  req
    "GetBotChannelAssociation"
    "fixture/GetBotChannelAssociation.yaml"

requestCreateIntentVersion :: CreateIntentVersion -> TestTree
requestCreateIntentVersion =
  req
    "CreateIntentVersion"
    "fixture/CreateIntentVersion.yaml"

requestGetExport :: GetExport -> TestTree
requestGetExport =
  req
    "GetExport"
    "fixture/GetExport.yaml"

requestGetSlotType :: GetSlotType -> TestTree
requestGetSlotType =
  req
    "GetSlotType"
    "fixture/GetSlotType.yaml"

requestDeleteIntentVersion :: DeleteIntentVersion -> TestTree
requestDeleteIntentVersion =
  req
    "DeleteIntentVersion"
    "fixture/DeleteIntentVersion.yaml"

requestCreateBotVersion :: CreateBotVersion -> TestTree
requestCreateBotVersion =
  req
    "CreateBotVersion"
    "fixture/CreateBotVersion.yaml"

requestGetBot :: GetBot -> TestTree
requestGetBot =
  req
    "GetBot"
    "fixture/GetBot.yaml"

requestGetBotAliases :: GetBotAliases -> TestTree
requestGetBotAliases =
  req
    "GetBotAliases"
    "fixture/GetBotAliases.yaml"

requestGetIntents :: GetIntents -> TestTree
requestGetIntents =
  req
    "GetIntents"
    "fixture/GetIntents.yaml"

requestGetBotVersions :: GetBotVersions -> TestTree
requestGetBotVersions =
  req
    "GetBotVersions"
    "fixture/GetBotVersions.yaml"

requestDeleteBotAlias :: DeleteBotAlias -> TestTree
requestDeleteBotAlias =
  req
    "DeleteBotAlias"
    "fixture/DeleteBotAlias.yaml"

requestGetImport :: GetImport -> TestTree
requestGetImport =
  req
    "GetImport"
    "fixture/GetImport.yaml"

requestGetIntentVersions :: GetIntentVersions -> TestTree
requestGetIntentVersions =
  req
    "GetIntentVersions"
    "fixture/GetIntentVersions.yaml"

requestGetBuiltinIntents :: GetBuiltinIntents -> TestTree
requestGetBuiltinIntents =
  req
    "GetBuiltinIntents"
    "fixture/GetBuiltinIntents.yaml"

requestDeleteBot :: DeleteBot -> TestTree
requestDeleteBot =
  req
    "DeleteBot"
    "fixture/DeleteBot.yaml"

requestPutSlotType :: PutSlotType -> TestTree
requestPutSlotType =
  req
    "PutSlotType"
    "fixture/PutSlotType.yaml"

requestStartImport :: StartImport -> TestTree
requestStartImport =
  req
    "StartImport"
    "fixture/StartImport.yaml"

requestDeleteIntent :: DeleteIntent -> TestTree
requestDeleteIntent =
  req
    "DeleteIntent"
    "fixture/DeleteIntent.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestCreateSlotTypeVersion :: CreateSlotTypeVersion -> TestTree
requestCreateSlotTypeVersion =
  req
    "CreateSlotTypeVersion"
    "fixture/CreateSlotTypeVersion.yaml"

requestGetIntent :: GetIntent -> TestTree
requestGetIntent =
  req
    "GetIntent"
    "fixture/GetIntent.yaml"

requestDeleteBotVersion :: DeleteBotVersion -> TestTree
requestDeleteBotVersion =
  req
    "DeleteBotVersion"
    "fixture/DeleteBotVersion.yaml"

requestDeleteBotChannelAssociation :: DeleteBotChannelAssociation -> TestTree
requestDeleteBotChannelAssociation =
  req
    "DeleteBotChannelAssociation"
    "fixture/DeleteBotChannelAssociation.yaml"

-- Responses

responseDeleteSlotTypeVersion :: DeleteSlotTypeVersionResponse -> TestTree
responseDeleteSlotTypeVersion =
  res
    "DeleteSlotTypeVersionResponse"
    "fixture/DeleteSlotTypeVersionResponse.proto"
    lexModels
    (Proxy :: Proxy DeleteSlotTypeVersion)

responseGetBots :: GetBotsResponse -> TestTree
responseGetBots =
  res
    "GetBotsResponse"
    "fixture/GetBotsResponse.proto"
    lexModels
    (Proxy :: Proxy GetBots)

responseGetSlotTypes :: GetSlotTypesResponse -> TestTree
responseGetSlotTypes =
  res
    "GetSlotTypesResponse"
    "fixture/GetSlotTypesResponse.proto"
    lexModels
    (Proxy :: Proxy GetSlotTypes)

responseDeleteUtterances :: DeleteUtterancesResponse -> TestTree
responseDeleteUtterances =
  res
    "DeleteUtterancesResponse"
    "fixture/DeleteUtterancesResponse.proto"
    lexModels
    (Proxy :: Proxy DeleteUtterances)

responseGetBotAlias :: GetBotAliasResponse -> TestTree
responseGetBotAlias =
  res
    "GetBotAliasResponse"
    "fixture/GetBotAliasResponse.proto"
    lexModels
    (Proxy :: Proxy GetBotAlias)

responseGetBotChannelAssociations :: GetBotChannelAssociationsResponse -> TestTree
responseGetBotChannelAssociations =
  res
    "GetBotChannelAssociationsResponse"
    "fixture/GetBotChannelAssociationsResponse.proto"
    lexModels
    (Proxy :: Proxy GetBotChannelAssociations)

responsePutBotAlias :: PutBotAliasResponse -> TestTree
responsePutBotAlias =
  res
    "PutBotAliasResponse"
    "fixture/PutBotAliasResponse.proto"
    lexModels
    (Proxy :: Proxy PutBotAlias)

responseGetUtterancesView :: GetUtterancesViewResponse -> TestTree
responseGetUtterancesView =
  res
    "GetUtterancesViewResponse"
    "fixture/GetUtterancesViewResponse.proto"
    lexModels
    (Proxy :: Proxy GetUtterancesView)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    lexModels
    (Proxy :: Proxy UntagResource)

responseGetBuiltinIntent :: GetBuiltinIntentResponse -> TestTree
responseGetBuiltinIntent =
  res
    "GetBuiltinIntentResponse"
    "fixture/GetBuiltinIntentResponse.proto"
    lexModels
    (Proxy :: Proxy GetBuiltinIntent)

responseGetSlotTypeVersions :: GetSlotTypeVersionsResponse -> TestTree
responseGetSlotTypeVersions =
  res
    "GetSlotTypeVersionsResponse"
    "fixture/GetSlotTypeVersionsResponse.proto"
    lexModels
    (Proxy :: Proxy GetSlotTypeVersions)

responseGetBuiltinSlotTypes :: GetBuiltinSlotTypesResponse -> TestTree
responseGetBuiltinSlotTypes =
  res
    "GetBuiltinSlotTypesResponse"
    "fixture/GetBuiltinSlotTypesResponse.proto"
    lexModels
    (Proxy :: Proxy GetBuiltinSlotTypes)

responsePutBot :: PutBotResponse -> TestTree
responsePutBot =
  res
    "PutBotResponse"
    "fixture/PutBotResponse.proto"
    lexModels
    (Proxy :: Proxy PutBot)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    lexModels
    (Proxy :: Proxy TagResource)

responseDeleteSlotType :: DeleteSlotTypeResponse -> TestTree
responseDeleteSlotType =
  res
    "DeleteSlotTypeResponse"
    "fixture/DeleteSlotTypeResponse.proto"
    lexModels
    (Proxy :: Proxy DeleteSlotType)

responsePutIntent :: PutIntentResponse -> TestTree
responsePutIntent =
  res
    "PutIntentResponse"
    "fixture/PutIntentResponse.proto"
    lexModels
    (Proxy :: Proxy PutIntent)

responseGetBotChannelAssociation :: GetBotChannelAssociationResponse -> TestTree
responseGetBotChannelAssociation =
  res
    "GetBotChannelAssociationResponse"
    "fixture/GetBotChannelAssociationResponse.proto"
    lexModels
    (Proxy :: Proxy GetBotChannelAssociation)

responseCreateIntentVersion :: CreateIntentVersionResponse -> TestTree
responseCreateIntentVersion =
  res
    "CreateIntentVersionResponse"
    "fixture/CreateIntentVersionResponse.proto"
    lexModels
    (Proxy :: Proxy CreateIntentVersion)

responseGetExport :: GetExportResponse -> TestTree
responseGetExport =
  res
    "GetExportResponse"
    "fixture/GetExportResponse.proto"
    lexModels
    (Proxy :: Proxy GetExport)

responseGetSlotType :: GetSlotTypeResponse -> TestTree
responseGetSlotType =
  res
    "GetSlotTypeResponse"
    "fixture/GetSlotTypeResponse.proto"
    lexModels
    (Proxy :: Proxy GetSlotType)

responseDeleteIntentVersion :: DeleteIntentVersionResponse -> TestTree
responseDeleteIntentVersion =
  res
    "DeleteIntentVersionResponse"
    "fixture/DeleteIntentVersionResponse.proto"
    lexModels
    (Proxy :: Proxy DeleteIntentVersion)

responseCreateBotVersion :: CreateBotVersionResponse -> TestTree
responseCreateBotVersion =
  res
    "CreateBotVersionResponse"
    "fixture/CreateBotVersionResponse.proto"
    lexModels
    (Proxy :: Proxy CreateBotVersion)

responseGetBot :: GetBotResponse -> TestTree
responseGetBot =
  res
    "GetBotResponse"
    "fixture/GetBotResponse.proto"
    lexModels
    (Proxy :: Proxy GetBot)

responseGetBotAliases :: GetBotAliasesResponse -> TestTree
responseGetBotAliases =
  res
    "GetBotAliasesResponse"
    "fixture/GetBotAliasesResponse.proto"
    lexModels
    (Proxy :: Proxy GetBotAliases)

responseGetIntents :: GetIntentsResponse -> TestTree
responseGetIntents =
  res
    "GetIntentsResponse"
    "fixture/GetIntentsResponse.proto"
    lexModels
    (Proxy :: Proxy GetIntents)

responseGetBotVersions :: GetBotVersionsResponse -> TestTree
responseGetBotVersions =
  res
    "GetBotVersionsResponse"
    "fixture/GetBotVersionsResponse.proto"
    lexModels
    (Proxy :: Proxy GetBotVersions)

responseDeleteBotAlias :: DeleteBotAliasResponse -> TestTree
responseDeleteBotAlias =
  res
    "DeleteBotAliasResponse"
    "fixture/DeleteBotAliasResponse.proto"
    lexModels
    (Proxy :: Proxy DeleteBotAlias)

responseGetImport :: GetImportResponse -> TestTree
responseGetImport =
  res
    "GetImportResponse"
    "fixture/GetImportResponse.proto"
    lexModels
    (Proxy :: Proxy GetImport)

responseGetIntentVersions :: GetIntentVersionsResponse -> TestTree
responseGetIntentVersions =
  res
    "GetIntentVersionsResponse"
    "fixture/GetIntentVersionsResponse.proto"
    lexModels
    (Proxy :: Proxy GetIntentVersions)

responseGetBuiltinIntents :: GetBuiltinIntentsResponse -> TestTree
responseGetBuiltinIntents =
  res
    "GetBuiltinIntentsResponse"
    "fixture/GetBuiltinIntentsResponse.proto"
    lexModels
    (Proxy :: Proxy GetBuiltinIntents)

responseDeleteBot :: DeleteBotResponse -> TestTree
responseDeleteBot =
  res
    "DeleteBotResponse"
    "fixture/DeleteBotResponse.proto"
    lexModels
    (Proxy :: Proxy DeleteBot)

responsePutSlotType :: PutSlotTypeResponse -> TestTree
responsePutSlotType =
  res
    "PutSlotTypeResponse"
    "fixture/PutSlotTypeResponse.proto"
    lexModels
    (Proxy :: Proxy PutSlotType)

responseStartImport :: StartImportResponse -> TestTree
responseStartImport =
  res
    "StartImportResponse"
    "fixture/StartImportResponse.proto"
    lexModels
    (Proxy :: Proxy StartImport)

responseDeleteIntent :: DeleteIntentResponse -> TestTree
responseDeleteIntent =
  res
    "DeleteIntentResponse"
    "fixture/DeleteIntentResponse.proto"
    lexModels
    (Proxy :: Proxy DeleteIntent)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    lexModels
    (Proxy :: Proxy ListTagsForResource)

responseCreateSlotTypeVersion :: CreateSlotTypeVersionResponse -> TestTree
responseCreateSlotTypeVersion =
  res
    "CreateSlotTypeVersionResponse"
    "fixture/CreateSlotTypeVersionResponse.proto"
    lexModels
    (Proxy :: Proxy CreateSlotTypeVersion)

responseGetIntent :: GetIntentResponse -> TestTree
responseGetIntent =
  res
    "GetIntentResponse"
    "fixture/GetIntentResponse.proto"
    lexModels
    (Proxy :: Proxy GetIntent)

responseDeleteBotVersion :: DeleteBotVersionResponse -> TestTree
responseDeleteBotVersion =
  res
    "DeleteBotVersionResponse"
    "fixture/DeleteBotVersionResponse.proto"
    lexModels
    (Proxy :: Proxy DeleteBotVersion)

responseDeleteBotChannelAssociation :: DeleteBotChannelAssociationResponse -> TestTree
responseDeleteBotChannelAssociation =
  res
    "DeleteBotChannelAssociationResponse"
    "fixture/DeleteBotChannelAssociationResponse.proto"
    lexModels
    (Proxy :: Proxy DeleteBotChannelAssociation)
