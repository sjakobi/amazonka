{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CognitoIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.CognitoIdentity where

import Data.Proxy
import Network.AWS.CognitoIdentity
import Test.AWS.CognitoIdentity.Internal
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
--         [ requestDescribeIdentityPool $
--             describeIdentityPool
--
--         , requestGetOpenIdTokenForDeveloperIdentity $
--             getOpenIdTokenForDeveloperIdentity
--
--         , requestGetOpenIdToken $
--             getOpenIdToken
--
--         , requestDeleteIdentities $
--             deleteIdentities
--
--         , requestMergeDeveloperIdentities $
--             mergeDeveloperIdentities
--
--         , requestCreateIdentityPool $
--             createIdentityPool
--
--         , requestGetPrincipalTagAttributeMap $
--             getPrincipalTagAttributeMap
--
--         , requestUpdateIdentityPool $
--             updateIdentityPool
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDeleteIdentityPool $
--             deleteIdentityPool
--
--         , requestGetIdentityPoolRoles $
--             getIdentityPoolRoles
--
--         , requestTagResource $
--             tagResource
--
--         , requestUnlinkIdentity $
--             unlinkIdentity
--
--         , requestLookupDeveloperIdentity $
--             lookupDeveloperIdentity
--
--         , requestSetIdentityPoolRoles $
--             setIdentityPoolRoles
--
--         , requestListIdentityPools $
--             listIdentityPools
--
--         , requestDescribeIdentity $
--             describeIdentity
--
--         , requestGetCredentialsForIdentity $
--             getCredentialsForIdentity
--
--         , requestUnlinkDeveloperIdentity $
--             unlinkDeveloperIdentity
--
--         , requestGetId $
--             getId
--
--         , requestListIdentities $
--             listIdentities
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestSetPrincipalTagAttributeMap $
--             setPrincipalTagAttributeMap
--
--           ]

--     , testGroup "response"
--         [ responseDescribeIdentityPool $
--             identityPool
--
--         , responseGetOpenIdTokenForDeveloperIdentity $
--             getOpenIdTokenForDeveloperIdentityResponse
--
--         , responseGetOpenIdToken $
--             getOpenIdTokenResponse
--
--         , responseDeleteIdentities $
--             deleteIdentitiesResponse
--
--         , responseMergeDeveloperIdentities $
--             mergeDeveloperIdentitiesResponse
--
--         , responseCreateIdentityPool $
--             identityPool
--
--         , responseGetPrincipalTagAttributeMap $
--             getPrincipalTagAttributeMapResponse
--
--         , responseUpdateIdentityPool $
--             identityPool
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDeleteIdentityPool $
--             deleteIdentityPoolResponse
--
--         , responseGetIdentityPoolRoles $
--             getIdentityPoolRolesResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseUnlinkIdentity $
--             unlinkIdentityResponse
--
--         , responseLookupDeveloperIdentity $
--             lookupDeveloperIdentityResponse
--
--         , responseSetIdentityPoolRoles $
--             setIdentityPoolRolesResponse
--
--         , responseListIdentityPools $
--             listIdentityPoolsResponse
--
--         , responseDescribeIdentity $
--             identityDescription
--
--         , responseGetCredentialsForIdentity $
--             getCredentialsForIdentityResponse
--
--         , responseUnlinkDeveloperIdentity $
--             unlinkDeveloperIdentityResponse
--
--         , responseGetId $
--             getIdResponse
--
--         , responseListIdentities $
--             listIdentitiesResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseSetPrincipalTagAttributeMap $
--             setPrincipalTagAttributeMapResponse
--
--           ]
--     ]

-- Requests

requestDescribeIdentityPool :: DescribeIdentityPool -> TestTree
requestDescribeIdentityPool =
  req
    "DescribeIdentityPool"
    "fixture/DescribeIdentityPool.yaml"

requestGetOpenIdTokenForDeveloperIdentity :: GetOpenIdTokenForDeveloperIdentity -> TestTree
requestGetOpenIdTokenForDeveloperIdentity =
  req
    "GetOpenIdTokenForDeveloperIdentity"
    "fixture/GetOpenIdTokenForDeveloperIdentity.yaml"

requestGetOpenIdToken :: GetOpenIdToken -> TestTree
requestGetOpenIdToken =
  req
    "GetOpenIdToken"
    "fixture/GetOpenIdToken.yaml"

requestDeleteIdentities :: DeleteIdentities -> TestTree
requestDeleteIdentities =
  req
    "DeleteIdentities"
    "fixture/DeleteIdentities.yaml"

requestMergeDeveloperIdentities :: MergeDeveloperIdentities -> TestTree
requestMergeDeveloperIdentities =
  req
    "MergeDeveloperIdentities"
    "fixture/MergeDeveloperIdentities.yaml"

requestCreateIdentityPool :: CreateIdentityPool -> TestTree
requestCreateIdentityPool =
  req
    "CreateIdentityPool"
    "fixture/CreateIdentityPool.yaml"

requestGetPrincipalTagAttributeMap :: GetPrincipalTagAttributeMap -> TestTree
requestGetPrincipalTagAttributeMap =
  req
    "GetPrincipalTagAttributeMap"
    "fixture/GetPrincipalTagAttributeMap.yaml"

requestUpdateIdentityPool :: UpdateIdentityPool -> TestTree
requestUpdateIdentityPool =
  req
    "UpdateIdentityPool"
    "fixture/UpdateIdentityPool.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDeleteIdentityPool :: DeleteIdentityPool -> TestTree
requestDeleteIdentityPool =
  req
    "DeleteIdentityPool"
    "fixture/DeleteIdentityPool.yaml"

requestGetIdentityPoolRoles :: GetIdentityPoolRoles -> TestTree
requestGetIdentityPoolRoles =
  req
    "GetIdentityPoolRoles"
    "fixture/GetIdentityPoolRoles.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestUnlinkIdentity :: UnlinkIdentity -> TestTree
requestUnlinkIdentity =
  req
    "UnlinkIdentity"
    "fixture/UnlinkIdentity.yaml"

requestLookupDeveloperIdentity :: LookupDeveloperIdentity -> TestTree
requestLookupDeveloperIdentity =
  req
    "LookupDeveloperIdentity"
    "fixture/LookupDeveloperIdentity.yaml"

requestSetIdentityPoolRoles :: SetIdentityPoolRoles -> TestTree
requestSetIdentityPoolRoles =
  req
    "SetIdentityPoolRoles"
    "fixture/SetIdentityPoolRoles.yaml"

requestListIdentityPools :: ListIdentityPools -> TestTree
requestListIdentityPools =
  req
    "ListIdentityPools"
    "fixture/ListIdentityPools.yaml"

requestDescribeIdentity :: DescribeIdentity -> TestTree
requestDescribeIdentity =
  req
    "DescribeIdentity"
    "fixture/DescribeIdentity.yaml"

requestGetCredentialsForIdentity :: GetCredentialsForIdentity -> TestTree
requestGetCredentialsForIdentity =
  req
    "GetCredentialsForIdentity"
    "fixture/GetCredentialsForIdentity.yaml"

requestUnlinkDeveloperIdentity :: UnlinkDeveloperIdentity -> TestTree
requestUnlinkDeveloperIdentity =
  req
    "UnlinkDeveloperIdentity"
    "fixture/UnlinkDeveloperIdentity.yaml"

requestGetId :: GetId -> TestTree
requestGetId =
  req
    "GetId"
    "fixture/GetId.yaml"

requestListIdentities :: ListIdentities -> TestTree
requestListIdentities =
  req
    "ListIdentities"
    "fixture/ListIdentities.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestSetPrincipalTagAttributeMap :: SetPrincipalTagAttributeMap -> TestTree
requestSetPrincipalTagAttributeMap =
  req
    "SetPrincipalTagAttributeMap"
    "fixture/SetPrincipalTagAttributeMap.yaml"

-- Responses

responseDescribeIdentityPool :: IdentityPool -> TestTree
responseDescribeIdentityPool =
  res
    "DescribeIdentityPoolResponse"
    "fixture/DescribeIdentityPoolResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy DescribeIdentityPool)

responseGetOpenIdTokenForDeveloperIdentity :: GetOpenIdTokenForDeveloperIdentityResponse -> TestTree
responseGetOpenIdTokenForDeveloperIdentity =
  res
    "GetOpenIdTokenForDeveloperIdentityResponse"
    "fixture/GetOpenIdTokenForDeveloperIdentityResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy GetOpenIdTokenForDeveloperIdentity)

responseGetOpenIdToken :: GetOpenIdTokenResponse -> TestTree
responseGetOpenIdToken =
  res
    "GetOpenIdTokenResponse"
    "fixture/GetOpenIdTokenResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy GetOpenIdToken)

responseDeleteIdentities :: DeleteIdentitiesResponse -> TestTree
responseDeleteIdentities =
  res
    "DeleteIdentitiesResponse"
    "fixture/DeleteIdentitiesResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy DeleteIdentities)

responseMergeDeveloperIdentities :: MergeDeveloperIdentitiesResponse -> TestTree
responseMergeDeveloperIdentities =
  res
    "MergeDeveloperIdentitiesResponse"
    "fixture/MergeDeveloperIdentitiesResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy MergeDeveloperIdentities)

responseCreateIdentityPool :: IdentityPool -> TestTree
responseCreateIdentityPool =
  res
    "CreateIdentityPoolResponse"
    "fixture/CreateIdentityPoolResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy CreateIdentityPool)

responseGetPrincipalTagAttributeMap :: GetPrincipalTagAttributeMapResponse -> TestTree
responseGetPrincipalTagAttributeMap =
  res
    "GetPrincipalTagAttributeMapResponse"
    "fixture/GetPrincipalTagAttributeMapResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy GetPrincipalTagAttributeMap)

responseUpdateIdentityPool :: IdentityPool -> TestTree
responseUpdateIdentityPool =
  res
    "UpdateIdentityPoolResponse"
    "fixture/UpdateIdentityPoolResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy UpdateIdentityPool)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy UntagResource)

responseDeleteIdentityPool :: DeleteIdentityPoolResponse -> TestTree
responseDeleteIdentityPool =
  res
    "DeleteIdentityPoolResponse"
    "fixture/DeleteIdentityPoolResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy DeleteIdentityPool)

responseGetIdentityPoolRoles :: GetIdentityPoolRolesResponse -> TestTree
responseGetIdentityPoolRoles =
  res
    "GetIdentityPoolRolesResponse"
    "fixture/GetIdentityPoolRolesResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy GetIdentityPoolRoles)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy TagResource)

responseUnlinkIdentity :: UnlinkIdentityResponse -> TestTree
responseUnlinkIdentity =
  res
    "UnlinkIdentityResponse"
    "fixture/UnlinkIdentityResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy UnlinkIdentity)

responseLookupDeveloperIdentity :: LookupDeveloperIdentityResponse -> TestTree
responseLookupDeveloperIdentity =
  res
    "LookupDeveloperIdentityResponse"
    "fixture/LookupDeveloperIdentityResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy LookupDeveloperIdentity)

responseSetIdentityPoolRoles :: SetIdentityPoolRolesResponse -> TestTree
responseSetIdentityPoolRoles =
  res
    "SetIdentityPoolRolesResponse"
    "fixture/SetIdentityPoolRolesResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy SetIdentityPoolRoles)

responseListIdentityPools :: ListIdentityPoolsResponse -> TestTree
responseListIdentityPools =
  res
    "ListIdentityPoolsResponse"
    "fixture/ListIdentityPoolsResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy ListIdentityPools)

responseDescribeIdentity :: IdentityDescription -> TestTree
responseDescribeIdentity =
  res
    "DescribeIdentityResponse"
    "fixture/DescribeIdentityResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy DescribeIdentity)

responseGetCredentialsForIdentity :: GetCredentialsForIdentityResponse -> TestTree
responseGetCredentialsForIdentity =
  res
    "GetCredentialsForIdentityResponse"
    "fixture/GetCredentialsForIdentityResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy GetCredentialsForIdentity)

responseUnlinkDeveloperIdentity :: UnlinkDeveloperIdentityResponse -> TestTree
responseUnlinkDeveloperIdentity =
  res
    "UnlinkDeveloperIdentityResponse"
    "fixture/UnlinkDeveloperIdentityResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy UnlinkDeveloperIdentity)

responseGetId :: GetIdResponse -> TestTree
responseGetId =
  res
    "GetIdResponse"
    "fixture/GetIdResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy GetId)

responseListIdentities :: ListIdentitiesResponse -> TestTree
responseListIdentities =
  res
    "ListIdentitiesResponse"
    "fixture/ListIdentitiesResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy ListIdentities)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy ListTagsForResource)

responseSetPrincipalTagAttributeMap :: SetPrincipalTagAttributeMapResponse -> TestTree
responseSetPrincipalTagAttributeMap =
  res
    "SetPrincipalTagAttributeMapResponse"
    "fixture/SetPrincipalTagAttributeMapResponse.proto"
    cognitoIdentity
    (Proxy :: Proxy SetPrincipalTagAttributeMap)
