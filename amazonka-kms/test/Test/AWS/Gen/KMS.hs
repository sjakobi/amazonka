{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.KMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.KMS where

import Data.Proxy
import Network.AWS.KMS
import Test.AWS.Fixture
import Test.AWS.KMS.Internal
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDisableKeyRotation $
--             disableKeyRotation
--
--         , requestDeleteAlias $
--             deleteAlias
--
--         , requestListGrants $
--             listGrants
--
--         , requestVerify $
--             verify
--
--         , requestCreateCustomKeyStore $
--             createCustomKeyStore
--
--         , requestUpdateAlias $
--             updateAlias
--
--         , requestGenerateDataKey $
--             generateDataKey
--
--         , requestDeleteImportedKeyMaterial $
--             deleteImportedKeyMaterial
--
--         , requestImportKeyMaterial $
--             importKeyMaterial
--
--         , requestGetKeyRotationStatus $
--             getKeyRotationStatus
--
--         , requestListResourceTags $
--             listResourceTags
--
--         , requestPutKeyPolicy $
--             putKeyPolicy
--
--         , requestListKeyPolicies $
--             listKeyPolicies
--
--         , requestDisableKey $
--             disableKey
--
--         , requestUntagResource $
--             untagResource
--
--         , requestDisconnectCustomKeyStore $
--             disconnectCustomKeyStore
--
--         , requestGenerateRandom $
--             generateRandom
--
--         , requestGetPublicKey $
--             getPublicKey
--
--         , requestReEncrypt $
--             reEncrypt
--
--         , requestTagResource $
--             tagResource
--
--         , requestListRetirableGrants $
--             listRetirableGrants
--
--         , requestConnectCustomKeyStore $
--             connectCustomKeyStore
--
--         , requestGetParametersForImport $
--             getParametersForImport
--
--         , requestDescribeKey $
--             describeKey
--
--         , requestDeleteCustomKeyStore $
--             deleteCustomKeyStore
--
--         , requestUpdateCustomKeyStore $
--             updateCustomKeyStore
--
--         , requestGenerateDataKeyWithoutPlaintext $
--             generateDataKeyWithoutPlaintext
--
--         , requestEncrypt $
--             encrypt
--
--         , requestGetKeyPolicy $
--             getKeyPolicy
--
--         , requestListKeys $
--             listKeys
--
--         , requestRevokeGrant $
--             revokeGrant
--
--         , requestScheduleKeyDeletion $
--             scheduleKeyDeletion
--
--         , requestEnableKey $
--             enableKey
--
--         , requestGenerateDataKeyPair $
--             generateDataKeyPair
--
--         , requestRetireGrant $
--             retireGrant
--
--         , requestCreateKey $
--             createKey
--
--         , requestSign $
--             sign
--
--         , requestUpdateKeyDescription $
--             updateKeyDescription
--
--         , requestCancelKeyDeletion $
--             cancelKeyDeletion
--
--         , requestGenerateDataKeyPairWithoutPlaintext $
--             generateDataKeyPairWithoutPlaintext
--
--         , requestDescribeCustomKeyStores $
--             describeCustomKeyStores
--
--         , requestDecrypt $
--             decrypt
--
--         , requestCreateAlias $
--             createAlias
--
--         , requestEnableKeyRotation $
--             enableKeyRotation
--
--         , requestListAliases $
--             listAliases
--
--         , requestCreateGrant $
--             createGrant
--
--           ]

--     , testGroup "response"
--         [ responseDisableKeyRotation $
--             disableKeyRotationResponse
--
--         , responseDeleteAlias $
--             deleteAliasResponse
--
--         , responseListGrants $
--             listGrantsResponse
--
--         , responseVerify $
--             verifyResponse
--
--         , responseCreateCustomKeyStore $
--             createCustomKeyStoreResponse
--
--         , responseUpdateAlias $
--             updateAliasResponse
--
--         , responseGenerateDataKey $
--             generateDataKeyResponse
--
--         , responseDeleteImportedKeyMaterial $
--             deleteImportedKeyMaterialResponse
--
--         , responseImportKeyMaterial $
--             importKeyMaterialResponse
--
--         , responseGetKeyRotationStatus $
--             getKeyRotationStatusResponse
--
--         , responseListResourceTags $
--             listResourceTagsResponse
--
--         , responsePutKeyPolicy $
--             putKeyPolicyResponse
--
--         , responseListKeyPolicies $
--             listKeyPoliciesResponse
--
--         , responseDisableKey $
--             disableKeyResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseDisconnectCustomKeyStore $
--             disconnectCustomKeyStoreResponse
--
--         , responseGenerateRandom $
--             generateRandomResponse
--
--         , responseGetPublicKey $
--             getPublicKeyResponse
--
--         , responseReEncrypt $
--             reEncryptResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseListRetirableGrants $
--             listGrantsResponse
--
--         , responseConnectCustomKeyStore $
--             connectCustomKeyStoreResponse
--
--         , responseGetParametersForImport $
--             getParametersForImportResponse
--
--         , responseDescribeKey $
--             describeKeyResponse
--
--         , responseDeleteCustomKeyStore $
--             deleteCustomKeyStoreResponse
--
--         , responseUpdateCustomKeyStore $
--             updateCustomKeyStoreResponse
--
--         , responseGenerateDataKeyWithoutPlaintext $
--             generateDataKeyWithoutPlaintextResponse
--
--         , responseEncrypt $
--             encryptResponse
--
--         , responseGetKeyPolicy $
--             getKeyPolicyResponse
--
--         , responseListKeys $
--             listKeysResponse
--
--         , responseRevokeGrant $
--             revokeGrantResponse
--
--         , responseScheduleKeyDeletion $
--             scheduleKeyDeletionResponse
--
--         , responseEnableKey $
--             enableKeyResponse
--
--         , responseGenerateDataKeyPair $
--             generateDataKeyPairResponse
--
--         , responseRetireGrant $
--             retireGrantResponse
--
--         , responseCreateKey $
--             createKeyResponse
--
--         , responseSign $
--             signResponse
--
--         , responseUpdateKeyDescription $
--             updateKeyDescriptionResponse
--
--         , responseCancelKeyDeletion $
--             cancelKeyDeletionResponse
--
--         , responseGenerateDataKeyPairWithoutPlaintext $
--             generateDataKeyPairWithoutPlaintextResponse
--
--         , responseDescribeCustomKeyStores $
--             describeCustomKeyStoresResponse
--
--         , responseDecrypt $
--             decryptResponse
--
--         , responseCreateAlias $
--             createAliasResponse
--
--         , responseEnableKeyRotation $
--             enableKeyRotationResponse
--
--         , responseListAliases $
--             listAliasesResponse
--
--         , responseCreateGrant $
--             createGrantResponse
--
--           ]
--     ]

-- Requests

requestDisableKeyRotation :: DisableKeyRotation -> TestTree
requestDisableKeyRotation =
  req
    "DisableKeyRotation"
    "fixture/DisableKeyRotation.yaml"

requestDeleteAlias :: DeleteAlias -> TestTree
requestDeleteAlias =
  req
    "DeleteAlias"
    "fixture/DeleteAlias.yaml"

requestListGrants :: ListGrants -> TestTree
requestListGrants =
  req
    "ListGrants"
    "fixture/ListGrants.yaml"

requestVerify :: Verify -> TestTree
requestVerify =
  req
    "Verify"
    "fixture/Verify.yaml"

requestCreateCustomKeyStore :: CreateCustomKeyStore -> TestTree
requestCreateCustomKeyStore =
  req
    "CreateCustomKeyStore"
    "fixture/CreateCustomKeyStore.yaml"

requestUpdateAlias :: UpdateAlias -> TestTree
requestUpdateAlias =
  req
    "UpdateAlias"
    "fixture/UpdateAlias.yaml"

requestGenerateDataKey :: GenerateDataKey -> TestTree
requestGenerateDataKey =
  req
    "GenerateDataKey"
    "fixture/GenerateDataKey.yaml"

requestDeleteImportedKeyMaterial :: DeleteImportedKeyMaterial -> TestTree
requestDeleteImportedKeyMaterial =
  req
    "DeleteImportedKeyMaterial"
    "fixture/DeleteImportedKeyMaterial.yaml"

requestImportKeyMaterial :: ImportKeyMaterial -> TestTree
requestImportKeyMaterial =
  req
    "ImportKeyMaterial"
    "fixture/ImportKeyMaterial.yaml"

requestGetKeyRotationStatus :: GetKeyRotationStatus -> TestTree
requestGetKeyRotationStatus =
  req
    "GetKeyRotationStatus"
    "fixture/GetKeyRotationStatus.yaml"

requestListResourceTags :: ListResourceTags -> TestTree
requestListResourceTags =
  req
    "ListResourceTags"
    "fixture/ListResourceTags.yaml"

requestPutKeyPolicy :: PutKeyPolicy -> TestTree
requestPutKeyPolicy =
  req
    "PutKeyPolicy"
    "fixture/PutKeyPolicy.yaml"

requestListKeyPolicies :: ListKeyPolicies -> TestTree
requestListKeyPolicies =
  req
    "ListKeyPolicies"
    "fixture/ListKeyPolicies.yaml"

requestDisableKey :: DisableKey -> TestTree
requestDisableKey =
  req
    "DisableKey"
    "fixture/DisableKey.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestDisconnectCustomKeyStore :: DisconnectCustomKeyStore -> TestTree
requestDisconnectCustomKeyStore =
  req
    "DisconnectCustomKeyStore"
    "fixture/DisconnectCustomKeyStore.yaml"

requestGenerateRandom :: GenerateRandom -> TestTree
requestGenerateRandom =
  req
    "GenerateRandom"
    "fixture/GenerateRandom.yaml"

requestGetPublicKey :: GetPublicKey -> TestTree
requestGetPublicKey =
  req
    "GetPublicKey"
    "fixture/GetPublicKey.yaml"

requestReEncrypt :: ReEncrypt -> TestTree
requestReEncrypt =
  req
    "ReEncrypt"
    "fixture/ReEncrypt.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestListRetirableGrants :: ListRetirableGrants -> TestTree
requestListRetirableGrants =
  req
    "ListRetirableGrants"
    "fixture/ListRetirableGrants.yaml"

requestConnectCustomKeyStore :: ConnectCustomKeyStore -> TestTree
requestConnectCustomKeyStore =
  req
    "ConnectCustomKeyStore"
    "fixture/ConnectCustomKeyStore.yaml"

requestGetParametersForImport :: GetParametersForImport -> TestTree
requestGetParametersForImport =
  req
    "GetParametersForImport"
    "fixture/GetParametersForImport.yaml"

requestDescribeKey :: DescribeKey -> TestTree
requestDescribeKey =
  req
    "DescribeKey"
    "fixture/DescribeKey.yaml"

requestDeleteCustomKeyStore :: DeleteCustomKeyStore -> TestTree
requestDeleteCustomKeyStore =
  req
    "DeleteCustomKeyStore"
    "fixture/DeleteCustomKeyStore.yaml"

requestUpdateCustomKeyStore :: UpdateCustomKeyStore -> TestTree
requestUpdateCustomKeyStore =
  req
    "UpdateCustomKeyStore"
    "fixture/UpdateCustomKeyStore.yaml"

requestGenerateDataKeyWithoutPlaintext :: GenerateDataKeyWithoutPlaintext -> TestTree
requestGenerateDataKeyWithoutPlaintext =
  req
    "GenerateDataKeyWithoutPlaintext"
    "fixture/GenerateDataKeyWithoutPlaintext.yaml"

requestEncrypt :: Encrypt -> TestTree
requestEncrypt =
  req
    "Encrypt"
    "fixture/Encrypt.yaml"

requestGetKeyPolicy :: GetKeyPolicy -> TestTree
requestGetKeyPolicy =
  req
    "GetKeyPolicy"
    "fixture/GetKeyPolicy.yaml"

requestListKeys :: ListKeys -> TestTree
requestListKeys =
  req
    "ListKeys"
    "fixture/ListKeys.yaml"

requestRevokeGrant :: RevokeGrant -> TestTree
requestRevokeGrant =
  req
    "RevokeGrant"
    "fixture/RevokeGrant.yaml"

requestScheduleKeyDeletion :: ScheduleKeyDeletion -> TestTree
requestScheduleKeyDeletion =
  req
    "ScheduleKeyDeletion"
    "fixture/ScheduleKeyDeletion.yaml"

requestEnableKey :: EnableKey -> TestTree
requestEnableKey =
  req
    "EnableKey"
    "fixture/EnableKey.yaml"

requestGenerateDataKeyPair :: GenerateDataKeyPair -> TestTree
requestGenerateDataKeyPair =
  req
    "GenerateDataKeyPair"
    "fixture/GenerateDataKeyPair.yaml"

requestRetireGrant :: RetireGrant -> TestTree
requestRetireGrant =
  req
    "RetireGrant"
    "fixture/RetireGrant.yaml"

requestCreateKey :: CreateKey -> TestTree
requestCreateKey =
  req
    "CreateKey"
    "fixture/CreateKey.yaml"

requestSign :: Sign -> TestTree
requestSign =
  req
    "Sign"
    "fixture/Sign.yaml"

requestUpdateKeyDescription :: UpdateKeyDescription -> TestTree
requestUpdateKeyDescription =
  req
    "UpdateKeyDescription"
    "fixture/UpdateKeyDescription.yaml"

requestCancelKeyDeletion :: CancelKeyDeletion -> TestTree
requestCancelKeyDeletion =
  req
    "CancelKeyDeletion"
    "fixture/CancelKeyDeletion.yaml"

requestGenerateDataKeyPairWithoutPlaintext :: GenerateDataKeyPairWithoutPlaintext -> TestTree
requestGenerateDataKeyPairWithoutPlaintext =
  req
    "GenerateDataKeyPairWithoutPlaintext"
    "fixture/GenerateDataKeyPairWithoutPlaintext.yaml"

requestDescribeCustomKeyStores :: DescribeCustomKeyStores -> TestTree
requestDescribeCustomKeyStores =
  req
    "DescribeCustomKeyStores"
    "fixture/DescribeCustomKeyStores.yaml"

requestDecrypt :: Decrypt -> TestTree
requestDecrypt =
  req
    "Decrypt"
    "fixture/Decrypt.yaml"

requestCreateAlias :: CreateAlias -> TestTree
requestCreateAlias =
  req
    "CreateAlias"
    "fixture/CreateAlias.yaml"

requestEnableKeyRotation :: EnableKeyRotation -> TestTree
requestEnableKeyRotation =
  req
    "EnableKeyRotation"
    "fixture/EnableKeyRotation.yaml"

requestListAliases :: ListAliases -> TestTree
requestListAliases =
  req
    "ListAliases"
    "fixture/ListAliases.yaml"

requestCreateGrant :: CreateGrant -> TestTree
requestCreateGrant =
  req
    "CreateGrant"
    "fixture/CreateGrant.yaml"

-- Responses

responseDisableKeyRotation :: DisableKeyRotationResponse -> TestTree
responseDisableKeyRotation =
  res
    "DisableKeyRotationResponse"
    "fixture/DisableKeyRotationResponse.proto"
    kms
    (Proxy :: Proxy DisableKeyRotation)

responseDeleteAlias :: DeleteAliasResponse -> TestTree
responseDeleteAlias =
  res
    "DeleteAliasResponse"
    "fixture/DeleteAliasResponse.proto"
    kms
    (Proxy :: Proxy DeleteAlias)

responseListGrants :: ListGrantsResponse -> TestTree
responseListGrants =
  res
    "ListGrantsResponse"
    "fixture/ListGrantsResponse.proto"
    kms
    (Proxy :: Proxy ListGrants)

responseVerify :: VerifyResponse -> TestTree
responseVerify =
  res
    "VerifyResponse"
    "fixture/VerifyResponse.proto"
    kms
    (Proxy :: Proxy Verify)

responseCreateCustomKeyStore :: CreateCustomKeyStoreResponse -> TestTree
responseCreateCustomKeyStore =
  res
    "CreateCustomKeyStoreResponse"
    "fixture/CreateCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy CreateCustomKeyStore)

responseUpdateAlias :: UpdateAliasResponse -> TestTree
responseUpdateAlias =
  res
    "UpdateAliasResponse"
    "fixture/UpdateAliasResponse.proto"
    kms
    (Proxy :: Proxy UpdateAlias)

responseGenerateDataKey :: GenerateDataKeyResponse -> TestTree
responseGenerateDataKey =
  res
    "GenerateDataKeyResponse"
    "fixture/GenerateDataKeyResponse.proto"
    kms
    (Proxy :: Proxy GenerateDataKey)

responseDeleteImportedKeyMaterial :: DeleteImportedKeyMaterialResponse -> TestTree
responseDeleteImportedKeyMaterial =
  res
    "DeleteImportedKeyMaterialResponse"
    "fixture/DeleteImportedKeyMaterialResponse.proto"
    kms
    (Proxy :: Proxy DeleteImportedKeyMaterial)

responseImportKeyMaterial :: ImportKeyMaterialResponse -> TestTree
responseImportKeyMaterial =
  res
    "ImportKeyMaterialResponse"
    "fixture/ImportKeyMaterialResponse.proto"
    kms
    (Proxy :: Proxy ImportKeyMaterial)

responseGetKeyRotationStatus :: GetKeyRotationStatusResponse -> TestTree
responseGetKeyRotationStatus =
  res
    "GetKeyRotationStatusResponse"
    "fixture/GetKeyRotationStatusResponse.proto"
    kms
    (Proxy :: Proxy GetKeyRotationStatus)

responseListResourceTags :: ListResourceTagsResponse -> TestTree
responseListResourceTags =
  res
    "ListResourceTagsResponse"
    "fixture/ListResourceTagsResponse.proto"
    kms
    (Proxy :: Proxy ListResourceTags)

responsePutKeyPolicy :: PutKeyPolicyResponse -> TestTree
responsePutKeyPolicy =
  res
    "PutKeyPolicyResponse"
    "fixture/PutKeyPolicyResponse.proto"
    kms
    (Proxy :: Proxy PutKeyPolicy)

responseListKeyPolicies :: ListKeyPoliciesResponse -> TestTree
responseListKeyPolicies =
  res
    "ListKeyPoliciesResponse"
    "fixture/ListKeyPoliciesResponse.proto"
    kms
    (Proxy :: Proxy ListKeyPolicies)

responseDisableKey :: DisableKeyResponse -> TestTree
responseDisableKey =
  res
    "DisableKeyResponse"
    "fixture/DisableKeyResponse.proto"
    kms
    (Proxy :: Proxy DisableKey)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    kms
    (Proxy :: Proxy UntagResource)

responseDisconnectCustomKeyStore :: DisconnectCustomKeyStoreResponse -> TestTree
responseDisconnectCustomKeyStore =
  res
    "DisconnectCustomKeyStoreResponse"
    "fixture/DisconnectCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy DisconnectCustomKeyStore)

responseGenerateRandom :: GenerateRandomResponse -> TestTree
responseGenerateRandom =
  res
    "GenerateRandomResponse"
    "fixture/GenerateRandomResponse.proto"
    kms
    (Proxy :: Proxy GenerateRandom)

responseGetPublicKey :: GetPublicKeyResponse -> TestTree
responseGetPublicKey =
  res
    "GetPublicKeyResponse"
    "fixture/GetPublicKeyResponse.proto"
    kms
    (Proxy :: Proxy GetPublicKey)

responseReEncrypt :: ReEncryptResponse -> TestTree
responseReEncrypt =
  res
    "ReEncryptResponse"
    "fixture/ReEncryptResponse.proto"
    kms
    (Proxy :: Proxy ReEncrypt)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    kms
    (Proxy :: Proxy TagResource)

responseListRetirableGrants :: ListGrantsResponse -> TestTree
responseListRetirableGrants =
  res
    "ListRetirableGrantsResponse"
    "fixture/ListRetirableGrantsResponse.proto"
    kms
    (Proxy :: Proxy ListRetirableGrants)

responseConnectCustomKeyStore :: ConnectCustomKeyStoreResponse -> TestTree
responseConnectCustomKeyStore =
  res
    "ConnectCustomKeyStoreResponse"
    "fixture/ConnectCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy ConnectCustomKeyStore)

responseGetParametersForImport :: GetParametersForImportResponse -> TestTree
responseGetParametersForImport =
  res
    "GetParametersForImportResponse"
    "fixture/GetParametersForImportResponse.proto"
    kms
    (Proxy :: Proxy GetParametersForImport)

responseDescribeKey :: DescribeKeyResponse -> TestTree
responseDescribeKey =
  res
    "DescribeKeyResponse"
    "fixture/DescribeKeyResponse.proto"
    kms
    (Proxy :: Proxy DescribeKey)

responseDeleteCustomKeyStore :: DeleteCustomKeyStoreResponse -> TestTree
responseDeleteCustomKeyStore =
  res
    "DeleteCustomKeyStoreResponse"
    "fixture/DeleteCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy DeleteCustomKeyStore)

responseUpdateCustomKeyStore :: UpdateCustomKeyStoreResponse -> TestTree
responseUpdateCustomKeyStore =
  res
    "UpdateCustomKeyStoreResponse"
    "fixture/UpdateCustomKeyStoreResponse.proto"
    kms
    (Proxy :: Proxy UpdateCustomKeyStore)

responseGenerateDataKeyWithoutPlaintext :: GenerateDataKeyWithoutPlaintextResponse -> TestTree
responseGenerateDataKeyWithoutPlaintext =
  res
    "GenerateDataKeyWithoutPlaintextResponse"
    "fixture/GenerateDataKeyWithoutPlaintextResponse.proto"
    kms
    (Proxy :: Proxy GenerateDataKeyWithoutPlaintext)

responseEncrypt :: EncryptResponse -> TestTree
responseEncrypt =
  res
    "EncryptResponse"
    "fixture/EncryptResponse.proto"
    kms
    (Proxy :: Proxy Encrypt)

responseGetKeyPolicy :: GetKeyPolicyResponse -> TestTree
responseGetKeyPolicy =
  res
    "GetKeyPolicyResponse"
    "fixture/GetKeyPolicyResponse.proto"
    kms
    (Proxy :: Proxy GetKeyPolicy)

responseListKeys :: ListKeysResponse -> TestTree
responseListKeys =
  res
    "ListKeysResponse"
    "fixture/ListKeysResponse.proto"
    kms
    (Proxy :: Proxy ListKeys)

responseRevokeGrant :: RevokeGrantResponse -> TestTree
responseRevokeGrant =
  res
    "RevokeGrantResponse"
    "fixture/RevokeGrantResponse.proto"
    kms
    (Proxy :: Proxy RevokeGrant)

responseScheduleKeyDeletion :: ScheduleKeyDeletionResponse -> TestTree
responseScheduleKeyDeletion =
  res
    "ScheduleKeyDeletionResponse"
    "fixture/ScheduleKeyDeletionResponse.proto"
    kms
    (Proxy :: Proxy ScheduleKeyDeletion)

responseEnableKey :: EnableKeyResponse -> TestTree
responseEnableKey =
  res
    "EnableKeyResponse"
    "fixture/EnableKeyResponse.proto"
    kms
    (Proxy :: Proxy EnableKey)

responseGenerateDataKeyPair :: GenerateDataKeyPairResponse -> TestTree
responseGenerateDataKeyPair =
  res
    "GenerateDataKeyPairResponse"
    "fixture/GenerateDataKeyPairResponse.proto"
    kms
    (Proxy :: Proxy GenerateDataKeyPair)

responseRetireGrant :: RetireGrantResponse -> TestTree
responseRetireGrant =
  res
    "RetireGrantResponse"
    "fixture/RetireGrantResponse.proto"
    kms
    (Proxy :: Proxy RetireGrant)

responseCreateKey :: CreateKeyResponse -> TestTree
responseCreateKey =
  res
    "CreateKeyResponse"
    "fixture/CreateKeyResponse.proto"
    kms
    (Proxy :: Proxy CreateKey)

responseSign :: SignResponse -> TestTree
responseSign =
  res
    "SignResponse"
    "fixture/SignResponse.proto"
    kms
    (Proxy :: Proxy Sign)

responseUpdateKeyDescription :: UpdateKeyDescriptionResponse -> TestTree
responseUpdateKeyDescription =
  res
    "UpdateKeyDescriptionResponse"
    "fixture/UpdateKeyDescriptionResponse.proto"
    kms
    (Proxy :: Proxy UpdateKeyDescription)

responseCancelKeyDeletion :: CancelKeyDeletionResponse -> TestTree
responseCancelKeyDeletion =
  res
    "CancelKeyDeletionResponse"
    "fixture/CancelKeyDeletionResponse.proto"
    kms
    (Proxy :: Proxy CancelKeyDeletion)

responseGenerateDataKeyPairWithoutPlaintext :: GenerateDataKeyPairWithoutPlaintextResponse -> TestTree
responseGenerateDataKeyPairWithoutPlaintext =
  res
    "GenerateDataKeyPairWithoutPlaintextResponse"
    "fixture/GenerateDataKeyPairWithoutPlaintextResponse.proto"
    kms
    (Proxy :: Proxy GenerateDataKeyPairWithoutPlaintext)

responseDescribeCustomKeyStores :: DescribeCustomKeyStoresResponse -> TestTree
responseDescribeCustomKeyStores =
  res
    "DescribeCustomKeyStoresResponse"
    "fixture/DescribeCustomKeyStoresResponse.proto"
    kms
    (Proxy :: Proxy DescribeCustomKeyStores)

responseDecrypt :: DecryptResponse -> TestTree
responseDecrypt =
  res
    "DecryptResponse"
    "fixture/DecryptResponse.proto"
    kms
    (Proxy :: Proxy Decrypt)

responseCreateAlias :: CreateAliasResponse -> TestTree
responseCreateAlias =
  res
    "CreateAliasResponse"
    "fixture/CreateAliasResponse.proto"
    kms
    (Proxy :: Proxy CreateAlias)

responseEnableKeyRotation :: EnableKeyRotationResponse -> TestTree
responseEnableKeyRotation =
  res
    "EnableKeyRotationResponse"
    "fixture/EnableKeyRotationResponse.proto"
    kms
    (Proxy :: Proxy EnableKeyRotation)

responseListAliases :: ListAliasesResponse -> TestTree
responseListAliases =
  res
    "ListAliasesResponse"
    "fixture/ListAliasesResponse.proto"
    kms
    (Proxy :: Proxy ListAliases)

responseCreateGrant :: CreateGrantResponse -> TestTree
responseCreateGrant =
  res
    "CreateGrantResponse"
    "fixture/CreateGrantResponse.proto"
    kms
    (Proxy :: Proxy CreateGrant)
