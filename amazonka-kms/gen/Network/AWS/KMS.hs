{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Key Management Service__
--
-- AWS Key Management Service (AWS KMS) is an encryption and key management web service. This guide describes the AWS KMS operations that you can call programmatically. For general information about AWS KMS, see the <https://docs.aws.amazon.com/kms/latest/developerguide/ /AWS Key Management Service Developer Guide/ > .
--
-- We recommend that you use the AWS SDKs to make programmatic API calls to AWS KMS.
--
-- Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS 1.2. Clients must also support cipher suites with Perfect Forward Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later support these modes.
--
-- __Signing Requests__
--
-- Requests must be signed by using an access key ID and a secret access key. We strongly recommend that you /do not/ use your AWS account (root) access key ID and secret key for everyday work with AWS KMS. Instead, use the access key ID and secret access key for an IAM user. You can also use the AWS Security Token Service to generate temporary security credentials that you can use to sign requests.
--
-- All AWS KMS operations require <https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4> .
--
-- __Logging API Requests__
--
-- AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and related events for your AWS account and delivers them to an Amazon S3 bucket that you specify. By using the information collected by CloudTrail, you can determine what requests were made to AWS KMS, who made the request, when it was made, and so on. To learn more about CloudTrail, including how to turn it on and find your log files, see the <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/ AWS CloudTrail User Guide> .
--
-- __Additional Resources__
--
-- For more information about credentials and request signing, see the following:
--
--     * <https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html AWS Security Credentials> - This topic provides general information about the types of credentials used for accessing AWS.
--
--     * <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html Temporary Security Credentials> - This section of the /IAM User Guide/ describes how to create and use temporary security credentials.
--
--     * <https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 Signing Process> - This set of topics walks you through the process of signing a request using an access key ID and a secret access key.
--
--
--
-- __Commonly Used API Operations__
--
-- Of the API operations discussed in this guide, the following will prove the most useful for most applications. You will likely perform operations other than these, such as creating keys and assigning policies, by using the console.
--
--     * 'Encrypt'
--
--     * 'Decrypt'
--
--     * 'GenerateDataKey'
--
--     * 'GenerateDataKeyWithoutPlaintext'
module Network.AWS.KMS
  ( -- * Service Configuration
    kms,

    -- * Errors
    -- $errors

    -- ** CustomKeyStoreNameInUseException
    _CustomKeyStoreNameInUseException,

    -- ** InvalidAliasNameException
    _InvalidAliasNameException,

    -- ** MalformedPolicyDocumentException
    _MalformedPolicyDocumentException,

    -- ** CustomKeyStoreNotFoundException
    _CustomKeyStoreNotFoundException,

    -- ** InvalidKeyUsageException
    _InvalidKeyUsageException,

    -- ** NotFoundException
    _NotFoundException,

    -- ** KMSInvalidStateException
    _KMSInvalidStateException,

    -- ** InvalidMarkerException
    _InvalidMarkerException,

    -- ** CloudHSMClusterNotFoundException
    _CloudHSMClusterNotFoundException,

    -- ** IncorrectKeyException
    _IncorrectKeyException,

    -- ** InvalidCiphertextException
    _InvalidCiphertextException,

    -- ** InvalidARNException
    _InvalidARNException,

    -- ** CloudHSMClusterInvalidConfigurationException
    _CloudHSMClusterInvalidConfigurationException,

    -- ** CustomKeyStoreHasCMKsException
    _CustomKeyStoreHasCMKsException,

    -- ** CloudHSMClusterNotRelatedException
    _CloudHSMClusterNotRelatedException,

    -- ** CustomKeyStoreInvalidStateException
    _CustomKeyStoreInvalidStateException,

    -- ** DisabledException
    _DisabledException,

    -- ** UnsupportedOperationException
    _UnsupportedOperationException,

    -- ** KMSInvalidSignatureException
    _KMSInvalidSignatureException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** AlreadyExistsException
    _AlreadyExistsException,

    -- ** ExpiredImportTokenException
    _ExpiredImportTokenException,

    -- ** CloudHSMClusterInUseException
    _CloudHSMClusterInUseException,

    -- ** CloudHSMClusterNotActiveException
    _CloudHSMClusterNotActiveException,

    -- ** InvalidGrantTokenException
    _InvalidGrantTokenException,

    -- ** DependencyTimeoutException
    _DependencyTimeoutException,

    -- ** IncorrectTrustAnchorException
    _IncorrectTrustAnchorException,

    -- ** InvalidImportTokenException
    _InvalidImportTokenException,

    -- ** TagException
    _TagException,

    -- ** KMSInternalException
    _KMSInternalException,

    -- ** InvalidGrantIdException
    _InvalidGrantIdException,

    -- ** IncorrectKeyMaterialException
    _IncorrectKeyMaterialException,

    -- ** KeyUnavailableException
    _KeyUnavailableException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DisableKeyRotation
    module Network.AWS.KMS.DisableKeyRotation,

    -- ** DeleteAlias
    module Network.AWS.KMS.DeleteAlias,

    -- ** ListGrants (Paginated)
    module Network.AWS.KMS.ListGrants,

    -- ** Verify
    module Network.AWS.KMS.Verify,

    -- ** CreateCustomKeyStore
    module Network.AWS.KMS.CreateCustomKeyStore,

    -- ** UpdateAlias
    module Network.AWS.KMS.UpdateAlias,

    -- ** GenerateDataKey
    module Network.AWS.KMS.GenerateDataKey,

    -- ** DeleteImportedKeyMaterial
    module Network.AWS.KMS.DeleteImportedKeyMaterial,

    -- ** ImportKeyMaterial
    module Network.AWS.KMS.ImportKeyMaterial,

    -- ** GetKeyRotationStatus
    module Network.AWS.KMS.GetKeyRotationStatus,

    -- ** ListResourceTags
    module Network.AWS.KMS.ListResourceTags,

    -- ** PutKeyPolicy
    module Network.AWS.KMS.PutKeyPolicy,

    -- ** ListKeyPolicies (Paginated)
    module Network.AWS.KMS.ListKeyPolicies,

    -- ** DisableKey
    module Network.AWS.KMS.DisableKey,

    -- ** UntagResource
    module Network.AWS.KMS.UntagResource,

    -- ** DisconnectCustomKeyStore
    module Network.AWS.KMS.DisconnectCustomKeyStore,

    -- ** GenerateRandom
    module Network.AWS.KMS.GenerateRandom,

    -- ** GetPublicKey
    module Network.AWS.KMS.GetPublicKey,

    -- ** ReEncrypt
    module Network.AWS.KMS.ReEncrypt,

    -- ** TagResource
    module Network.AWS.KMS.TagResource,

    -- ** ListRetirableGrants
    module Network.AWS.KMS.ListRetirableGrants,

    -- ** ConnectCustomKeyStore
    module Network.AWS.KMS.ConnectCustomKeyStore,

    -- ** GetParametersForImport
    module Network.AWS.KMS.GetParametersForImport,

    -- ** DescribeKey
    module Network.AWS.KMS.DescribeKey,

    -- ** DeleteCustomKeyStore
    module Network.AWS.KMS.DeleteCustomKeyStore,

    -- ** UpdateCustomKeyStore
    module Network.AWS.KMS.UpdateCustomKeyStore,

    -- ** GenerateDataKeyWithoutPlaintext
    module Network.AWS.KMS.GenerateDataKeyWithoutPlaintext,

    -- ** Encrypt
    module Network.AWS.KMS.Encrypt,

    -- ** GetKeyPolicy
    module Network.AWS.KMS.GetKeyPolicy,

    -- ** ListKeys (Paginated)
    module Network.AWS.KMS.ListKeys,

    -- ** RevokeGrant
    module Network.AWS.KMS.RevokeGrant,

    -- ** ScheduleKeyDeletion
    module Network.AWS.KMS.ScheduleKeyDeletion,

    -- ** EnableKey
    module Network.AWS.KMS.EnableKey,

    -- ** GenerateDataKeyPair
    module Network.AWS.KMS.GenerateDataKeyPair,

    -- ** RetireGrant
    module Network.AWS.KMS.RetireGrant,

    -- ** CreateKey
    module Network.AWS.KMS.CreateKey,

    -- ** Sign
    module Network.AWS.KMS.Sign,

    -- ** UpdateKeyDescription
    module Network.AWS.KMS.UpdateKeyDescription,

    -- ** CancelKeyDeletion
    module Network.AWS.KMS.CancelKeyDeletion,

    -- ** GenerateDataKeyPairWithoutPlaintext
    module Network.AWS.KMS.GenerateDataKeyPairWithoutPlaintext,

    -- ** DescribeCustomKeyStores
    module Network.AWS.KMS.DescribeCustomKeyStores,

    -- ** Decrypt
    module Network.AWS.KMS.Decrypt,

    -- ** CreateAlias
    module Network.AWS.KMS.CreateAlias,

    -- ** EnableKeyRotation
    module Network.AWS.KMS.EnableKeyRotation,

    -- ** ListAliases (Paginated)
    module Network.AWS.KMS.ListAliases,

    -- ** CreateGrant
    module Network.AWS.KMS.CreateGrant,

    -- * Types

    -- ** AlgorithmSpec
    AlgorithmSpec (..),

    -- ** ConnectionErrorCodeType
    ConnectionErrorCodeType (..),

    -- ** ConnectionStateType
    ConnectionStateType (..),

    -- ** CustomerMasterKeySpec
    CustomerMasterKeySpec (..),

    -- ** DataKeyPairSpec
    DataKeyPairSpec (..),

    -- ** DataKeySpec
    DataKeySpec (..),

    -- ** EncryptionAlgorithmSpec
    EncryptionAlgorithmSpec (..),

    -- ** ExpirationModelType
    ExpirationModelType (..),

    -- ** GrantOperation
    GrantOperation (..),

    -- ** KeyManagerType
    KeyManagerType (..),

    -- ** KeyState
    KeyState (..),

    -- ** KeyUsageType
    KeyUsageType (..),

    -- ** MessageType
    MessageType (..),

    -- ** OriginType
    OriginType (..),

    -- ** SigningAlgorithmSpec
    SigningAlgorithmSpec (..),

    -- ** WrappingKeySpec
    WrappingKeySpec (..),

    -- ** AliasListEntry
    AliasListEntry,
    aliasListEntry,
    aleLastUpdatedDate,
    aleCreationDate,
    aleAliasName,
    aleAliasARN,
    aleTargetKeyId,

    -- ** CustomKeyStoresListEntry
    CustomKeyStoresListEntry,
    customKeyStoresListEntry,
    cksleCustomKeyStoreName,
    cksleConnectionState,
    cksleCustomKeyStoreId,
    cksleCloudHSMClusterId,
    cksleTrustAnchorCertificate,
    cksleCreationDate,
    cksleConnectionErrorCode,

    -- ** GrantConstraints
    GrantConstraints,
    grantConstraints,
    gcEncryptionContextEquals,
    gcEncryptionContextSubset,

    -- ** GrantListEntry
    GrantListEntry,
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

    -- ** KeyListEntry
    KeyListEntry,
    keyListEntry,
    kleKeyARN,
    kleKeyId,

    -- ** KeyMetadata
    KeyMetadata,
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

    -- ** ListGrantsResponse
    ListGrantsResponse,
    listGrantsResponse,
    lgrNextMarker,
    lgrGrants,
    lgrTruncated,

    -- ** Tag
    Tag,
    tag,
    tagTagKey,
    tagTagValue,
  )
where

import Network.AWS.KMS.CancelKeyDeletion
import Network.AWS.KMS.ConnectCustomKeyStore
import Network.AWS.KMS.CreateAlias
import Network.AWS.KMS.CreateCustomKeyStore
import Network.AWS.KMS.CreateGrant
import Network.AWS.KMS.CreateKey
import Network.AWS.KMS.Decrypt
import Network.AWS.KMS.DeleteAlias
import Network.AWS.KMS.DeleteCustomKeyStore
import Network.AWS.KMS.DeleteImportedKeyMaterial
import Network.AWS.KMS.DescribeCustomKeyStores
import Network.AWS.KMS.DescribeKey
import Network.AWS.KMS.DisableKey
import Network.AWS.KMS.DisableKeyRotation
import Network.AWS.KMS.DisconnectCustomKeyStore
import Network.AWS.KMS.EnableKey
import Network.AWS.KMS.EnableKeyRotation
import Network.AWS.KMS.Encrypt
import Network.AWS.KMS.GenerateDataKey
import Network.AWS.KMS.GenerateDataKeyPair
import Network.AWS.KMS.GenerateDataKeyPairWithoutPlaintext
import Network.AWS.KMS.GenerateDataKeyWithoutPlaintext
import Network.AWS.KMS.GenerateRandom
import Network.AWS.KMS.GetKeyPolicy
import Network.AWS.KMS.GetKeyRotationStatus
import Network.AWS.KMS.GetParametersForImport
import Network.AWS.KMS.GetPublicKey
import Network.AWS.KMS.ImportKeyMaterial
import Network.AWS.KMS.ListAliases
import Network.AWS.KMS.ListGrants
import Network.AWS.KMS.ListKeyPolicies
import Network.AWS.KMS.ListKeys
import Network.AWS.KMS.ListResourceTags
import Network.AWS.KMS.ListRetirableGrants
import Network.AWS.KMS.PutKeyPolicy
import Network.AWS.KMS.ReEncrypt
import Network.AWS.KMS.RetireGrant
import Network.AWS.KMS.RevokeGrant
import Network.AWS.KMS.ScheduleKeyDeletion
import Network.AWS.KMS.Sign
import Network.AWS.KMS.TagResource
import Network.AWS.KMS.Types
import Network.AWS.KMS.UntagResource
import Network.AWS.KMS.UpdateAlias
import Network.AWS.KMS.UpdateCustomKeyStore
import Network.AWS.KMS.UpdateKeyDescription
import Network.AWS.KMS.Verify
import Network.AWS.KMS.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'KMS'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
