{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is the /ACM Private CA API Reference/ . It provides descriptions, syntax, and usage examples for each of the actions and data types involved in creating and managing private certificate authorities (CA) for your organization.
--
--
-- The documentation for each action shows the Query API request parameters and the XML response. Alternatively, you can use one of the AWS SDKs to access an API that's tailored to the programming language or platform that you're using. For more information, see <https://aws.amazon.com/tools/#SDKs AWS SDKs> .
module Network.AWS.CertificateManagerPCA
  ( -- * Service Configuration
    certificateManagerPCA,

    -- * Errors
    -- $errors

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** InvalidStateException
    _InvalidStateException,

    -- ** InvalidArgsException
    _InvalidArgsException,

    -- ** InvalidPolicyException
    _InvalidPolicyException,

    -- ** InvalidARNException
    _InvalidARNException,

    -- ** MalformedCertificateException
    _MalformedCertificateException,

    -- ** RequestAlreadyProcessedException
    _RequestAlreadyProcessedException,

    -- ** ConcurrentModificationException
    _ConcurrentModificationException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** PermissionAlreadyExistsException
    _PermissionAlreadyExistsException,

    -- ** InvalidRequestException
    _InvalidRequestException,

    -- ** InvalidTagException
    _InvalidTagException,

    -- ** RequestInProgressException
    _RequestInProgressException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** CertificateMismatchException
    _CertificateMismatchException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** RequestFailedException
    _RequestFailedException,

    -- ** LockoutPreventedException
    _LockoutPreventedException,

    -- ** MalformedCSRException
    _MalformedCSRException,

    -- * Waiters
    -- $waiters

    -- ** AuditReportCreated
    auditReportCreated,

    -- ** CertificateAuthorityCSRCreated
    certificateAuthorityCSRCreated,

    -- ** CertificateIssued
    certificateIssued,

    -- * Operations
    -- $operations

    -- ** CreatePermission
    module Network.AWS.CertificateManagerPCA.CreatePermission,

    -- ** RestoreCertificateAuthority
    module Network.AWS.CertificateManagerPCA.RestoreCertificateAuthority,

    -- ** DeletePolicy
    module Network.AWS.CertificateManagerPCA.DeletePolicy,

    -- ** DescribeCertificateAuthority
    module Network.AWS.CertificateManagerPCA.DescribeCertificateAuthority,

    -- ** TagCertificateAuthority
    module Network.AWS.CertificateManagerPCA.TagCertificateAuthority,

    -- ** CreateCertificateAuthorityAuditReport
    module Network.AWS.CertificateManagerPCA.CreateCertificateAuthorityAuditReport,

    -- ** GetCertificate
    module Network.AWS.CertificateManagerPCA.GetCertificate,

    -- ** CreateCertificateAuthority
    module Network.AWS.CertificateManagerPCA.CreateCertificateAuthority,

    -- ** GetCertificateAuthorityCSR
    module Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCSR,

    -- ** ListCertificateAuthorities (Paginated)
    module Network.AWS.CertificateManagerPCA.ListCertificateAuthorities,

    -- ** RevokeCertificate
    module Network.AWS.CertificateManagerPCA.RevokeCertificate,

    -- ** DeletePermission
    module Network.AWS.CertificateManagerPCA.DeletePermission,

    -- ** ListPermissions (Paginated)
    module Network.AWS.CertificateManagerPCA.ListPermissions,

    -- ** GetCertificateAuthorityCertificate
    module Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCertificate,

    -- ** IssueCertificate
    module Network.AWS.CertificateManagerPCA.IssueCertificate,

    -- ** ImportCertificateAuthorityCertificate
    module Network.AWS.CertificateManagerPCA.ImportCertificateAuthorityCertificate,

    -- ** PutPolicy
    module Network.AWS.CertificateManagerPCA.PutPolicy,

    -- ** GetPolicy
    module Network.AWS.CertificateManagerPCA.GetPolicy,

    -- ** ListTags (Paginated)
    module Network.AWS.CertificateManagerPCA.ListTags,

    -- ** DeleteCertificateAuthority
    module Network.AWS.CertificateManagerPCA.DeleteCertificateAuthority,

    -- ** UpdateCertificateAuthority
    module Network.AWS.CertificateManagerPCA.UpdateCertificateAuthority,

    -- ** UntagCertificateAuthority
    module Network.AWS.CertificateManagerPCA.UntagCertificateAuthority,

    -- ** DescribeCertificateAuthorityAuditReport
    module Network.AWS.CertificateManagerPCA.DescribeCertificateAuthorityAuditReport,

    -- * Types

    -- ** AccessMethodType
    AccessMethodType (..),

    -- ** ActionType
    ActionType (..),

    -- ** AuditReportResponseFormat
    AuditReportResponseFormat (..),

    -- ** AuditReportStatus
    AuditReportStatus (..),

    -- ** CertificateAuthorityStatus
    CertificateAuthorityStatus (..),

    -- ** CertificateAuthorityType
    CertificateAuthorityType (..),

    -- ** ExtendedKeyUsageType
    ExtendedKeyUsageType (..),

    -- ** FailureReason
    FailureReason (..),

    -- ** KeyAlgorithm
    KeyAlgorithm (..),

    -- ** PolicyQualifierId
    PolicyQualifierId (..),

    -- ** ResourceOwner
    ResourceOwner (..),

    -- ** RevocationReason
    RevocationReason (..),

    -- ** SigningAlgorithm
    SigningAlgorithm (..),

    -- ** ValidityPeriodType
    ValidityPeriodType (..),

    -- ** APIPassthrough
    APIPassthrough,
    apiPassthrough,
    apExtensions,
    apSubject,

    -- ** ASN1Subject
    ASN1Subject,
    asn1Subject,
    asLocality,
    asGenerationQualifier,
    asSurname,
    asTitle,
    asOrganizationalUnit,
    asInitials,
    asPseudonym,
    asCommonName,
    asState,
    asGivenName,
    asOrganization,
    asDistinguishedNameQualifier,
    asSerialNumber,
    asCountry,

    -- ** AccessDescription
    AccessDescription,
    accessDescription,
    adAccessMethod,
    adAccessLocation,

    -- ** AccessMethod
    AccessMethod,
    accessMethod,
    amAccessMethodType,
    amCustomObjectIdentifier,

    -- ** CertificateAuthority
    CertificateAuthority,
    certificateAuthority,
    caStatus,
    caNotBefore,
    caRevocationConfiguration,
    caSerial,
    caARN,
    caCreatedAt,
    caCertificateAuthorityConfiguration,
    caFailureReason,
    caNotAfter,
    caLastStateChangeAt,
    caType,
    caOwnerAccount,
    caRestorableUntil,

    -- ** CertificateAuthorityConfiguration
    CertificateAuthorityConfiguration,
    certificateAuthorityConfiguration,
    cacCsrExtensions,
    cacKeyAlgorithm,
    cacSigningAlgorithm,
    cacSubject,

    -- ** CrlConfiguration
    CrlConfiguration,
    crlConfiguration,
    ccCustomCname,
    ccS3BucketName,
    ccExpirationInDays,
    ccEnabled,

    -- ** CsrExtensions
    CsrExtensions,
    csrExtensions,
    ceSubjectInformationAccess,
    ceKeyUsage,

    -- ** EdiPartyName
    EdiPartyName,
    ediPartyName,
    epnNameAssigner,
    epnPartyName,

    -- ** ExtendedKeyUsage
    ExtendedKeyUsage,
    extendedKeyUsage,
    ekuExtendedKeyUsageObjectIdentifier,
    ekuExtendedKeyUsageType,

    -- ** Extensions
    Extensions,
    extensions,
    eCertificatePolicies,
    eExtendedKeyUsage,
    eSubjectAlternativeNames,
    eKeyUsage,

    -- ** GeneralName
    GeneralName,
    generalName,
    gnEdiPartyName,
    gnOtherName,
    gnUniformResourceIdentifier,
    gnIPAddress,
    gnDNSName,
    gnDirectoryName,
    gnRfc822Name,
    gnRegisteredId,

    -- ** KeyUsage
    KeyUsage,
    keyUsage,
    kuDataEncipherment,
    kuKeyCertSign,
    kuCRLSign,
    kuKeyEncipherment,
    kuEncipherOnly,
    kuKeyAgreement,
    kuDigitalSignature,
    kuDecipherOnly,
    kuNonRepudiation,

    -- ** OtherName
    OtherName,
    otherName,
    onTypeId,
    onValue,

    -- ** Permission
    Permission,
    permission,
    pCertificateAuthorityARN,
    pCreatedAt,
    pActions,
    pPrincipal,
    pSourceAccount,
    pPolicy,

    -- ** PolicyInformation
    PolicyInformation,
    policyInformation,
    piPolicyQualifiers,
    piCertPolicyId,

    -- ** PolicyQualifierInfo
    PolicyQualifierInfo,
    policyQualifierInfo,
    pqiPolicyQualifierId,
    pqiQualifier,

    -- ** Qualifier
    Qualifier,
    qualifier,
    qCpsURI,

    -- ** RevocationConfiguration
    RevocationConfiguration,
    revocationConfiguration,
    rcCrlConfiguration,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** Validity
    Validity,
    validity,
    vValue,
    vType,
  )
where

import Network.AWS.CertificateManagerPCA.CreateCertificateAuthority
import Network.AWS.CertificateManagerPCA.CreateCertificateAuthorityAuditReport
import Network.AWS.CertificateManagerPCA.CreatePermission
import Network.AWS.CertificateManagerPCA.DeleteCertificateAuthority
import Network.AWS.CertificateManagerPCA.DeletePermission
import Network.AWS.CertificateManagerPCA.DeletePolicy
import Network.AWS.CertificateManagerPCA.DescribeCertificateAuthority
import Network.AWS.CertificateManagerPCA.DescribeCertificateAuthorityAuditReport
import Network.AWS.CertificateManagerPCA.GetCertificate
import Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCSR
import Network.AWS.CertificateManagerPCA.GetCertificateAuthorityCertificate
import Network.AWS.CertificateManagerPCA.GetPolicy
import Network.AWS.CertificateManagerPCA.ImportCertificateAuthorityCertificate
import Network.AWS.CertificateManagerPCA.IssueCertificate
import Network.AWS.CertificateManagerPCA.ListCertificateAuthorities
import Network.AWS.CertificateManagerPCA.ListPermissions
import Network.AWS.CertificateManagerPCA.ListTags
import Network.AWS.CertificateManagerPCA.PutPolicy
import Network.AWS.CertificateManagerPCA.RestoreCertificateAuthority
import Network.AWS.CertificateManagerPCA.RevokeCertificate
import Network.AWS.CertificateManagerPCA.TagCertificateAuthority
import Network.AWS.CertificateManagerPCA.Types
import Network.AWS.CertificateManagerPCA.UntagCertificateAuthority
import Network.AWS.CertificateManagerPCA.UpdateCertificateAuthority
import Network.AWS.CertificateManagerPCA.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CertificateManagerPCA'.

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
