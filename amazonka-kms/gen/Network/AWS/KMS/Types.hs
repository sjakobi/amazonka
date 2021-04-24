{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types
  ( -- * Service Configuration
    kms,

    -- * Errors
    _CustomKeyStoreNameInUseException,
    _InvalidAliasNameException,
    _MalformedPolicyDocumentException,
    _CustomKeyStoreNotFoundException,
    _InvalidKeyUsageException,
    _NotFoundException,
    _KMSInvalidStateException,
    _InvalidMarkerException,
    _CloudHSMClusterNotFoundException,
    _IncorrectKeyException,
    _InvalidCiphertextException,
    _InvalidARNException,
    _CloudHSMClusterInvalidConfigurationException,
    _CustomKeyStoreHasCMKsException,
    _CloudHSMClusterNotRelatedException,
    _CustomKeyStoreInvalidStateException,
    _DisabledException,
    _UnsupportedOperationException,
    _KMSInvalidSignatureException,
    _LimitExceededException,
    _AlreadyExistsException,
    _ExpiredImportTokenException,
    _CloudHSMClusterInUseException,
    _CloudHSMClusterNotActiveException,
    _InvalidGrantTokenException,
    _DependencyTimeoutException,
    _IncorrectTrustAnchorException,
    _InvalidImportTokenException,
    _TagException,
    _KMSInternalException,
    _InvalidGrantIdException,
    _IncorrectKeyMaterialException,
    _KeyUnavailableException,

    -- * AlgorithmSpec
    AlgorithmSpec (..),

    -- * ConnectionErrorCodeType
    ConnectionErrorCodeType (..),

    -- * ConnectionStateType
    ConnectionStateType (..),

    -- * CustomerMasterKeySpec
    CustomerMasterKeySpec (..),

    -- * DataKeyPairSpec
    DataKeyPairSpec (..),

    -- * DataKeySpec
    DataKeySpec (..),

    -- * EncryptionAlgorithmSpec
    EncryptionAlgorithmSpec (..),

    -- * ExpirationModelType
    ExpirationModelType (..),

    -- * GrantOperation
    GrantOperation (..),

    -- * KeyManagerType
    KeyManagerType (..),

    -- * KeyState
    KeyState (..),

    -- * KeyUsageType
    KeyUsageType (..),

    -- * MessageType
    MessageType (..),

    -- * OriginType
    OriginType (..),

    -- * SigningAlgorithmSpec
    SigningAlgorithmSpec (..),

    -- * WrappingKeySpec
    WrappingKeySpec (..),

    -- * AliasListEntry
    AliasListEntry (..),
    aliasListEntry,
    aleLastUpdatedDate,
    aleCreationDate,
    aleAliasName,
    aleAliasARN,
    aleTargetKeyId,

    -- * CustomKeyStoresListEntry
    CustomKeyStoresListEntry (..),
    customKeyStoresListEntry,
    cksleCustomKeyStoreName,
    cksleConnectionState,
    cksleCustomKeyStoreId,
    cksleCloudHSMClusterId,
    cksleTrustAnchorCertificate,
    cksleCreationDate,
    cksleConnectionErrorCode,

    -- * GrantConstraints
    GrantConstraints (..),
    grantConstraints,
    gcEncryptionContextEquals,
    gcEncryptionContextSubset,

    -- * GrantListEntry
    GrantListEntry (..),
    grantListEntry,
    gleConstraints,
    gleOperations,
    gleCreationDate,
    gleName,
    gleGranteePrincipal,
    gleGrantId,
    gleIssuingAccount,
    gleRetiringPrincipal,
    gleKeyId,

    -- * KeyListEntry
    KeyListEntry (..),
    keyListEntry,
    kleKeyARN,
    kleKeyId,

    -- * KeyMetadata
    KeyMetadata (..),
    keyMetadata,
    kmSigningAlgorithms,
    kmKeyManager,
    kmOrigin,
    kmAWSAccountId,
    kmCustomKeyStoreId,
    kmEncryptionAlgorithms,
    kmCloudHSMClusterId,
    kmKeyState,
    kmARN,
    kmCreationDate,
    kmValidTo,
    kmEnabled,
    kmExpirationModel,
    kmDescription,
    kmDeletionDate,
    kmKeyUsage,
    kmCustomerMasterKeySpec,
    kmKeyId,

    -- * ListGrantsResponse
    ListGrantsResponse (..),
    listGrantsResponse,
    lgrNextMarker,
    lgrGrants,
    lgrTruncated,

    -- * Tag
    Tag (..),
    tag,
    tagTagKey,
    tagTagValue,
  )
where

import Network.AWS.KMS.Types.AlgorithmSpec
import Network.AWS.KMS.Types.AliasListEntry
import Network.AWS.KMS.Types.ConnectionErrorCodeType
import Network.AWS.KMS.Types.ConnectionStateType
import Network.AWS.KMS.Types.CustomKeyStoresListEntry
import Network.AWS.KMS.Types.CustomerMasterKeySpec
import Network.AWS.KMS.Types.DataKeyPairSpec
import Network.AWS.KMS.Types.DataKeySpec
import Network.AWS.KMS.Types.EncryptionAlgorithmSpec
import Network.AWS.KMS.Types.ExpirationModelType
import Network.AWS.KMS.Types.GrantConstraints
import Network.AWS.KMS.Types.GrantListEntry
import Network.AWS.KMS.Types.GrantOperation
import Network.AWS.KMS.Types.KeyListEntry
import Network.AWS.KMS.Types.KeyManagerType
import Network.AWS.KMS.Types.KeyMetadata
import Network.AWS.KMS.Types.KeyState
import Network.AWS.KMS.Types.KeyUsageType
import Network.AWS.KMS.Types.ListGrantsResponse
import Network.AWS.KMS.Types.MessageType
import Network.AWS.KMS.Types.OriginType
import Network.AWS.KMS.Types.SigningAlgorithmSpec
import Network.AWS.KMS.Types.Tag
import Network.AWS.KMS.Types.WrappingKeySpec
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2014-11-01@ of the Amazon Key Management Service SDK configuration.
kms :: Service
kms =
  Service
    { _svcAbbrev = "KMS",
      _svcSigner = v4,
      _svcPrefix = "kms",
      _svcVersion = "2014-11-01",
      _svcEndpoint = defaultEndpoint kms,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "KMS",
      _svcRetry = retry
    }
  where
    retry =
      Exponential
        { _retryBase = 5.0e-2,
          _retryGrowth = 2,
          _retryAttempts = 5,
          _retryCheck = check
        }
    check e
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has
          ( hasCode "ProvisionedThroughputExceededException"
              . hasStatus 400
          )
          e =
        Just "throughput_exceeded"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 429) e = Just "too_many_requests"
      | has
          (hasCode "RequestThrottledException" . hasStatus 400)
          e =
        Just "request_throttled_exception"
      | has
          (hasCode "ThrottledException" . hasStatus 400)
          e =
        Just "throttled_exception"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | has (hasStatus 500) e = Just "general_server_error"
      | has
          (hasCode "ThrottlingException" . hasStatus 400)
          e =
        Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e =
        Just "throttling"
      | otherwise = Nothing

-- | The request was rejected because the specified custom key store name is already assigned to another custom key store in the account. Try again with a custom key store name that is unique in the account.
_CustomKeyStoreNameInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_CustomKeyStoreNameInUseException =
  _MatchServiceError
    kms
    "CustomKeyStoreNameInUseException"

-- | The request was rejected because the specified alias name is not valid.
_InvalidAliasNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAliasNameException =
  _MatchServiceError kms "InvalidAliasNameException"

-- | The request was rejected because the specified policy is not syntactically or semantically correct.
_MalformedPolicyDocumentException :: AsError a => Getting (First ServiceError) a ServiceError
_MalformedPolicyDocumentException =
  _MatchServiceError
    kms
    "MalformedPolicyDocumentException"

-- | The request was rejected because AWS KMS cannot find a custom key store with the specified key store name or ID.
_CustomKeyStoreNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_CustomKeyStoreNotFoundException =
  _MatchServiceError
    kms
    "CustomKeyStoreNotFoundException"

-- | The request was rejected for one of the following reasons:
--
--
--     * The @KeyUsage@ value of the CMK is incompatible with the API operation.
--
--     * The encryption algorithm or signing algorithm specified for the operation is incompatible with the type of key material in the CMK @(CustomerMasterKeySpec@ ).
--
--
--
-- For encrypting, decrypting, re-encrypting, and generating data keys, the @KeyUsage@ must be @ENCRYPT_DECRYPT@ . For signing and verifying, the @KeyUsage@ must be @SIGN_VERIFY@ . To find the @KeyUsage@ of a CMK, use the 'DescribeKey' operation.
--
-- To find the encryption or signing algorithms supported for a particular CMK, use the 'DescribeKey' operation.
_InvalidKeyUsageException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidKeyUsageException =
  _MatchServiceError kms "InvalidKeyUsageException"

-- | The request was rejected because the specified entity or resource could not be found.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError kms "NotFoundException"

-- | The request was rejected because the state of the specified resource is not valid for this request.
--
--
-- For more information about how key state affects the use of a CMK, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /\/AWS Key Management Service Developer Guide\/ / .
_KMSInvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSInvalidStateException =
  _MatchServiceError kms "KMSInvalidStateException"

-- | The request was rejected because the marker that specifies where pagination should next begin is not valid.
_InvalidMarkerException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidMarkerException =
  _MatchServiceError kms "InvalidMarkerException"

-- | The request was rejected because AWS KMS cannot find the AWS CloudHSM cluster with the specified cluster ID. Retry the request with a different cluster ID.
_CloudHSMClusterNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMClusterNotFoundException =
  _MatchServiceError
    kms
    "CloudHsmClusterNotFoundException"

-- | The request was rejected because the specified CMK cannot decrypt the data. The @KeyId@ in a 'Decrypt' request and the @SourceKeyId@ in a 'ReEncrypt' request must identify the same CMK that was used to encrypt the ciphertext.
_IncorrectKeyException :: AsError a => Getting (First ServiceError) a ServiceError
_IncorrectKeyException =
  _MatchServiceError kms "IncorrectKeyException"

-- | From the 'Decrypt' or 'ReEncrypt' operation, the request was rejected because the specified ciphertext, or additional authenticated data incorporated into the ciphertext, such as the encryption context, is corrupted, missing, or otherwise invalid.
--
--
-- From the 'ImportKeyMaterial' operation, the request was rejected because AWS KMS could not decrypt the encrypted (wrapped) key material.
_InvalidCiphertextException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCiphertextException =
  _MatchServiceError kms "InvalidCiphertextException"

-- | The request was rejected because a specified ARN, or an ARN in a key policy, is not valid.
_InvalidARNException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidARNException =
  _MatchServiceError kms "InvalidArnException"

-- | The request was rejected because the associated AWS CloudHSM cluster did not meet the configuration requirements for a custom key store.
--
--
--     * The cluster must be configured with private subnets in at least two different Availability Zones in the Region.
--
--     * The <https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html security group for the cluster> (cloudhsm-cluster-/<cluster-id>/ -sg) must include inbound rules and outbound rules that allow TCP traffic on ports 2223-2225. The __Source__ in the inbound rules and the __Destination__ in the outbound rules must match the security group ID. These rules are set by default when you create the cluster. Do not delete or change them. To get information about a particular security group, use the <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSecurityGroups.html DescribeSecurityGroups> operation.
--
--     * The cluster must contain at least as many HSMs as the operation requires. To add HSMs, use the AWS CloudHSM <https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html CreateHsm> operation.
--
-- For the 'CreateCustomKeyStore' , 'UpdateCustomKeyStore' , and 'CreateKey' operations, the AWS CloudHSM cluster must have at least two active HSMs, each in a different Availability Zone. For the 'ConnectCustomKeyStore' operation, the AWS CloudHSM must contain at least one active HSM.
--
--
--
-- For information about the requirements for an AWS CloudHSM cluster that is associated with a custom key store, see <https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore Assemble the Prerequisites> in the /AWS Key Management Service Developer Guide/ . For information about creating a private subnet for an AWS CloudHSM cluster, see <https://docs.aws.amazon.com/cloudhsm/latest/userguide/create-subnets.html Create a Private Subnet> in the /AWS CloudHSM User Guide/ . For information about cluster security groups, see <https://docs.aws.amazon.com/cloudhsm/latest/userguide/configure-sg.html Configure a Default Security Group> in the /\/AWS CloudHSM User Guide\/ / .
_CloudHSMClusterInvalidConfigurationException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMClusterInvalidConfigurationException =
  _MatchServiceError
    kms
    "CloudHsmClusterInvalidConfigurationException"

-- | The request was rejected because the custom key store contains AWS KMS customer master keys (CMKs). After verifying that you do not need to use the CMKs, use the 'ScheduleKeyDeletion' operation to delete the CMKs. After they are deleted, you can delete the custom key store.
_CustomKeyStoreHasCMKsException :: AsError a => Getting (First ServiceError) a ServiceError
_CustomKeyStoreHasCMKsException =
  _MatchServiceError
    kms
    "CustomKeyStoreHasCMKsException"

-- | The request was rejected because the specified AWS CloudHSM cluster has a different cluster certificate than the original cluster. You cannot use the operation to specify an unrelated cluster.
--
--
-- Specify a cluster that shares a backup history with the original cluster. This includes clusters that were created from a backup of the current cluster, and clusters that were created from the same backup that produced the current cluster.
--
-- Clusters that share a backup history have the same cluster certificate. To view the cluster certificate of a cluster, use the <https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html DescribeClusters> operation.
_CloudHSMClusterNotRelatedException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMClusterNotRelatedException =
  _MatchServiceError
    kms
    "CloudHsmClusterNotRelatedException"

-- | The request was rejected because of the @ConnectionState@ of the custom key store. To get the @ConnectionState@ of a custom key store, use the 'DescribeCustomKeyStores' operation.
--
--
-- This exception is thrown under the following conditions:
--
--     * You requested the 'CreateKey' or 'GenerateRandom' operation in a custom key store that is not connected. These operations are valid only when the custom key store @ConnectionState@ is @CONNECTED@ .
--
--     * You requested the 'UpdateCustomKeyStore' or 'DeleteCustomKeyStore' operation on a custom key store that is not disconnected. This operation is valid only when the custom key store @ConnectionState@ is @DISCONNECTED@ .
--
--     * You requested the 'ConnectCustomKeyStore' operation on a custom key store with a @ConnectionState@ of @DISCONNECTING@ or @FAILED@ . This operation is valid for all other @ConnectionState@ values.
_CustomKeyStoreInvalidStateException :: AsError a => Getting (First ServiceError) a ServiceError
_CustomKeyStoreInvalidStateException =
  _MatchServiceError
    kms
    "CustomKeyStoreInvalidStateException"

-- | The request was rejected because the specified CMK is not enabled.
_DisabledException :: AsError a => Getting (First ServiceError) a ServiceError
_DisabledException =
  _MatchServiceError kms "DisabledException"

-- | The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.
_UnsupportedOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedOperationException =
  _MatchServiceError
    kms
    "UnsupportedOperationException"

-- | The request was rejected because the signature verification failed. Signature verification fails when it cannot confirm that signature was produced by signing the specified message with the specified CMK and signing algorithm.
_KMSInvalidSignatureException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSInvalidSignatureException =
  _MatchServiceError
    kms
    "KMSInvalidSignatureException"

-- | The request was rejected because a quota was exceeded. For more information, see <https://docs.aws.amazon.com/kms/latest/developerguide/limits.html Quotas> in the /AWS Key Management Service Developer Guide/ .
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError kms "LimitExceededException"

-- | The request was rejected because it attempted to create a resource that already exists.
_AlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_AlreadyExistsException =
  _MatchServiceError kms "AlreadyExistsException"

-- | The request was rejected because the specified import token is expired. Use 'GetParametersForImport' to get a new import token and public key, use the new public key to encrypt the key material, and then try the request again.
_ExpiredImportTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_ExpiredImportTokenException =
  _MatchServiceError
    kms
    "ExpiredImportTokenException"

-- | The request was rejected because the specified AWS CloudHSM cluster is already associated with a custom key store or it shares a backup history with a cluster that is associated with a custom key store. Each custom key store must be associated with a different AWS CloudHSM cluster.
--
--
-- Clusters that share a backup history have the same cluster certificate. To view the cluster certificate of a cluster, use the <https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html DescribeClusters> operation.
_CloudHSMClusterInUseException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMClusterInUseException =
  _MatchServiceError
    kms
    "CloudHsmClusterInUseException"

-- | The request was rejected because the AWS CloudHSM cluster that is associated with the custom key store is not active. Initialize and activate the cluster and try the command again. For detailed instructions, see <https://docs.aws.amazon.com/cloudhsm/latest/userguide/getting-started.html Getting Started> in the /AWS CloudHSM User Guide/ .
_CloudHSMClusterNotActiveException :: AsError a => Getting (First ServiceError) a ServiceError
_CloudHSMClusterNotActiveException =
  _MatchServiceError
    kms
    "CloudHsmClusterNotActiveException"

-- | The request was rejected because the specified grant token is not valid.
_InvalidGrantTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidGrantTokenException =
  _MatchServiceError kms "InvalidGrantTokenException"

-- | The system timed out while trying to fulfill the request. The request can be retried.
_DependencyTimeoutException :: AsError a => Getting (First ServiceError) a ServiceError
_DependencyTimeoutException =
  _MatchServiceError kms "DependencyTimeoutException"

-- | The request was rejected because the trust anchor certificate in the request is not the trust anchor certificate for the specified AWS CloudHSM cluster.
--
--
-- When you <https://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr initialize the cluster> , you create the trust anchor certificate and save it in the @customerCA.crt@ file.
_IncorrectTrustAnchorException :: AsError a => Getting (First ServiceError) a ServiceError
_IncorrectTrustAnchorException =
  _MatchServiceError
    kms
    "IncorrectTrustAnchorException"

-- | The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).
_InvalidImportTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidImportTokenException =
  _MatchServiceError
    kms
    "InvalidImportTokenException"

-- | The request was rejected because one or more tags are not valid.
_TagException :: AsError a => Getting (First ServiceError) a ServiceError
_TagException = _MatchServiceError kms "TagException"

-- | The request was rejected because an internal exception occurred. The request can be retried.
_KMSInternalException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSInternalException =
  _MatchServiceError kms "KMSInternalException"

-- | The request was rejected because the specified @GrantId@ is not valid.
_InvalidGrantIdException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidGrantIdException =
  _MatchServiceError kms "InvalidGrantIdException"

-- | The request was rejected because the key material in the request is, expired, invalid, or is not the same key material that was previously imported into this customer master key (CMK).
_IncorrectKeyMaterialException :: AsError a => Getting (First ServiceError) a ServiceError
_IncorrectKeyMaterialException =
  _MatchServiceError
    kms
    "IncorrectKeyMaterialException"

-- | The request was rejected because the specified CMK was not available. You can retry the request.
_KeyUnavailableException :: AsError a => Getting (First ServiceError) a ServiceError
_KeyUnavailableException =
  _MatchServiceError kms "KeyUnavailableException"
