{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- AWS Cloud Map lets you configure public DNS, private DNS, or HTTP namespaces that your microservice applications run in. When an instance of the service becomes available, you can call the AWS Cloud Map API to register the instance with AWS Cloud Map. For public or private DNS namespaces, AWS Cloud Map automatically creates DNS records and an optional health check. Clients that submit public or private DNS queries, or HTTP requests, for the service receive an answer that contains up to eight healthy records.
module Network.AWS.Route53AutoNaming
  ( -- * Service Configuration
    route53AutoNaming,

    -- * Errors
    -- $errors

    -- ** InvalidInput
    _InvalidInput,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** DuplicateRequest
    _DuplicateRequest,

    -- ** ResourceInUse
    _ResourceInUse,

    -- ** ServiceAlreadyExists
    _ServiceAlreadyExists,

    -- ** RequestLimitExceeded
    _RequestLimitExceeded,

    -- ** ResourceLimitExceeded
    _ResourceLimitExceeded,

    -- ** CustomHealthNotFound
    _CustomHealthNotFound,

    -- ** OperationNotFound
    _OperationNotFound,

    -- ** ServiceNotFound
    _ServiceNotFound,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** NamespaceNotFound
    _NamespaceNotFound,

    -- ** NamespaceAlreadyExists
    _NamespaceAlreadyExists,

    -- ** InstanceNotFound
    _InstanceNotFound,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreatePublicDNSNamespace
    module Network.AWS.Route53AutoNaming.CreatePublicDNSNamespace,

    -- ** ListServices (Paginated)
    module Network.AWS.Route53AutoNaming.ListServices,

    -- ** ListOperations (Paginated)
    module Network.AWS.Route53AutoNaming.ListOperations,

    -- ** CreateService
    module Network.AWS.Route53AutoNaming.CreateService,

    -- ** CreatePrivateDNSNamespace
    module Network.AWS.Route53AutoNaming.CreatePrivateDNSNamespace,

    -- ** UntagResource
    module Network.AWS.Route53AutoNaming.UntagResource,

    -- ** ListInstances (Paginated)
    module Network.AWS.Route53AutoNaming.ListInstances,

    -- ** TagResource
    module Network.AWS.Route53AutoNaming.TagResource,

    -- ** GetNamespace
    module Network.AWS.Route53AutoNaming.GetNamespace,

    -- ** ListNamespaces (Paginated)
    module Network.AWS.Route53AutoNaming.ListNamespaces,

    -- ** CreateHTTPNamespace
    module Network.AWS.Route53AutoNaming.CreateHTTPNamespace,

    -- ** GetInstance
    module Network.AWS.Route53AutoNaming.GetInstance,

    -- ** GetInstancesHealthStatus
    module Network.AWS.Route53AutoNaming.GetInstancesHealthStatus,

    -- ** DeleteService
    module Network.AWS.Route53AutoNaming.DeleteService,

    -- ** UpdateService
    module Network.AWS.Route53AutoNaming.UpdateService,

    -- ** DiscoverInstances
    module Network.AWS.Route53AutoNaming.DiscoverInstances,

    -- ** DeregisterInstance
    module Network.AWS.Route53AutoNaming.DeregisterInstance,

    -- ** GetOperation
    module Network.AWS.Route53AutoNaming.GetOperation,

    -- ** GetService
    module Network.AWS.Route53AutoNaming.GetService,

    -- ** UpdateInstanceCustomHealthStatus
    module Network.AWS.Route53AutoNaming.UpdateInstanceCustomHealthStatus,

    -- ** RegisterInstance
    module Network.AWS.Route53AutoNaming.RegisterInstance,

    -- ** ListTagsForResource
    module Network.AWS.Route53AutoNaming.ListTagsForResource,

    -- ** DeleteNamespace
    module Network.AWS.Route53AutoNaming.DeleteNamespace,

    -- * Types

    -- ** CustomHealthStatus
    CustomHealthStatus (..),

    -- ** FilterCondition
    FilterCondition (..),

    -- ** HealthCheckType
    HealthCheckType (..),

    -- ** HealthStatus
    HealthStatus (..),

    -- ** HealthStatusFilter
    HealthStatusFilter (..),

    -- ** NamespaceFilterName
    NamespaceFilterName (..),

    -- ** NamespaceType
    NamespaceType (..),

    -- ** OperationFilterName
    OperationFilterName (..),

    -- ** OperationStatus
    OperationStatus (..),

    -- ** OperationTargetType
    OperationTargetType (..),

    -- ** OperationType
    OperationType (..),

    -- ** RecordType
    RecordType (..),

    -- ** RoutingPolicy
    RoutingPolicy (..),

    -- ** ServiceFilterName
    ServiceFilterName (..),

    -- ** ServiceType
    ServiceType (..),

    -- ** ServiceTypeOption
    ServiceTypeOption (..),

    -- ** DNSConfig
    DNSConfig,
    dnsConfig,
    dcNamespaceId,
    dcRoutingPolicy,
    dcDNSRecords,

    -- ** DNSConfigChange
    DNSConfigChange,
    dnsConfigChange,
    dccDNSRecords,

    -- ** DNSProperties
    DNSProperties,
    dnsProperties,
    dpHostedZoneId,

    -- ** DNSRecord
    DNSRecord,
    dnsRecord,
    drType,
    drTTL,

    -- ** HTTPInstanceSummary
    HTTPInstanceSummary,
    hTTPInstanceSummary,
    httpisNamespaceName,
    httpisInstanceId,
    httpisServiceName,
    httpisAttributes,
    httpisHealthStatus,

    -- ** HTTPProperties
    HTTPProperties,
    hTTPProperties,
    httppHTTPName,

    -- ** HealthCheckConfig
    HealthCheckConfig,
    healthCheckConfig,
    hccFailureThreshold,
    hccResourcePath,
    hccType,

    -- ** HealthCheckCustomConfig
    HealthCheckCustomConfig,
    healthCheckCustomConfig,
    hcccFailureThreshold,

    -- ** Instance
    Instance,
    instance',
    iCreatorRequestId,
    iAttributes,
    iId,

    -- ** InstanceSummary
    InstanceSummary,
    instanceSummary,
    isId,
    isAttributes,

    -- ** Namespace
    Namespace,
    namespace,
    nCreateDate,
    nCreatorRequestId,
    nARN,
    nId,
    nName,
    nProperties,
    nServiceCount,
    nDescription,
    nType,

    -- ** NamespaceFilter
    NamespaceFilter,
    namespaceFilter,
    nfCondition,
    nfName,
    nfValues,

    -- ** NamespaceProperties
    NamespaceProperties,
    namespaceProperties,
    npHTTPProperties,
    npDNSProperties,

    -- ** NamespaceSummary
    NamespaceSummary,
    namespaceSummary,
    nsCreateDate,
    nsARN,
    nsId,
    nsName,
    nsProperties,
    nsServiceCount,
    nsDescription,
    nsType,

    -- ** Operation
    Operation,
    operation,
    oStatus,
    oCreateDate,
    oId,
    oTargets,
    oErrorMessage,
    oType,
    oErrorCode,
    oUpdateDate,

    -- ** OperationFilter
    OperationFilter,
    operationFilter,
    ofCondition,
    ofName,
    ofValues,

    -- ** OperationSummary
    OperationSummary,
    operationSummary,
    osStatus,
    osId,

    -- ** ServiceChange
    ServiceChange,
    serviceChange,
    scDNSConfig,
    scDescription,
    scHealthCheckConfig,

    -- ** ServiceFilter
    ServiceFilter,
    serviceFilter,
    sfCondition,
    sfName,
    sfValues,

    -- ** ServiceInfo
    ServiceInfo,
    serviceInfo,
    siNamespaceId,
    siDNSConfig,
    siCreateDate,
    siCreatorRequestId,
    siARN,
    siId,
    siName,
    siDescription,
    siHealthCheckCustomConfig,
    siType,
    siHealthCheckConfig,
    siInstanceCount,

    -- ** ServiceSummary
    ServiceSummary,
    serviceSummary,
    ssDNSConfig,
    ssCreateDate,
    ssARN,
    ssId,
    ssName,
    ssDescription,
    ssHealthCheckCustomConfig,
    ssType,
    ssHealthCheckConfig,
    ssInstanceCount,

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,
  )
where

import Network.AWS.Route53AutoNaming.CreateHTTPNamespace
import Network.AWS.Route53AutoNaming.CreatePrivateDNSNamespace
import Network.AWS.Route53AutoNaming.CreatePublicDNSNamespace
import Network.AWS.Route53AutoNaming.CreateService
import Network.AWS.Route53AutoNaming.DeleteNamespace
import Network.AWS.Route53AutoNaming.DeleteService
import Network.AWS.Route53AutoNaming.DeregisterInstance
import Network.AWS.Route53AutoNaming.DiscoverInstances
import Network.AWS.Route53AutoNaming.GetInstance
import Network.AWS.Route53AutoNaming.GetInstancesHealthStatus
import Network.AWS.Route53AutoNaming.GetNamespace
import Network.AWS.Route53AutoNaming.GetOperation
import Network.AWS.Route53AutoNaming.GetService
import Network.AWS.Route53AutoNaming.ListInstances
import Network.AWS.Route53AutoNaming.ListNamespaces
import Network.AWS.Route53AutoNaming.ListOperations
import Network.AWS.Route53AutoNaming.ListServices
import Network.AWS.Route53AutoNaming.ListTagsForResource
import Network.AWS.Route53AutoNaming.RegisterInstance
import Network.AWS.Route53AutoNaming.TagResource
import Network.AWS.Route53AutoNaming.Types
import Network.AWS.Route53AutoNaming.UntagResource
import Network.AWS.Route53AutoNaming.UpdateInstanceCustomHealthStatus
import Network.AWS.Route53AutoNaming.UpdateService
import Network.AWS.Route53AutoNaming.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'Route53AutoNaming'.

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
