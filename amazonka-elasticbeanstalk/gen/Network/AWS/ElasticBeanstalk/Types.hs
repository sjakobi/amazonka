{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _TooManyPlatformsException,
    _TooManyTagsException,
    _TooManyApplicationsException,
    _ResourceTypeNotSupportedException,
    _TooManyEnvironmentsException,
    _InsufficientPrivilegesException,
    _TooManyConfigurationTemplatesException,
    _OperationInProgressException,
    _TooManyBucketsException,
    _S3SubscriptionRequiredException,
    _SourceBundleDeletionException,
    _InvalidRequestException,
    _ElasticBeanstalkServiceException,
    _ResourceNotFoundException,
    _CodeBuildNotInServiceRegionException,
    _PlatformVersionStillReferencedException,
    _TooManyApplicationVersionsException,
    _S3LocationNotInServiceRegionException,
    _ManagedActionInvalidStateException,

    -- * ActionHistoryStatus
    ActionHistoryStatus (..),

    -- * ActionStatus
    ActionStatus (..),

    -- * ActionType
    ActionType (..),

    -- * ApplicationVersionStatus
    ApplicationVersionStatus (..),

    -- * ComputeType
    ComputeType (..),

    -- * ConfigurationDeploymentStatus
    ConfigurationDeploymentStatus (..),

    -- * ConfigurationOptionValueType
    ConfigurationOptionValueType (..),

    -- * EnvironmentHealth
    EnvironmentHealth (..),

    -- * EnvironmentHealthAttribute
    EnvironmentHealthAttribute (..),

    -- * EnvironmentHealthStatus
    EnvironmentHealthStatus (..),

    -- * EnvironmentInfoType
    EnvironmentInfoType (..),

    -- * EnvironmentStatus
    EnvironmentStatus (..),

    -- * EventSeverity
    EventSeverity (..),

    -- * FailureType
    FailureType (..),

    -- * InstancesHealthAttribute
    InstancesHealthAttribute (..),

    -- * PlatformStatus
    PlatformStatus (..),

    -- * SourceRepository
    SourceRepository (..),

    -- * SourceType
    SourceType (..),

    -- * ValidationSeverity
    ValidationSeverity (..),

    -- * ApplicationDescription
    ApplicationDescription (..),
    newApplicationDescription,

    -- * ApplicationDescriptionMessage
    ApplicationDescriptionMessage (..),
    newApplicationDescriptionMessage,

    -- * ApplicationMetrics
    ApplicationMetrics (..),
    newApplicationMetrics,

    -- * ApplicationResourceLifecycleConfig
    ApplicationResourceLifecycleConfig (..),
    newApplicationResourceLifecycleConfig,

    -- * ApplicationVersionDescription
    ApplicationVersionDescription (..),
    newApplicationVersionDescription,

    -- * ApplicationVersionDescriptionMessage
    ApplicationVersionDescriptionMessage (..),
    newApplicationVersionDescriptionMessage,

    -- * ApplicationVersionLifecycleConfig
    ApplicationVersionLifecycleConfig (..),
    newApplicationVersionLifecycleConfig,

    -- * AutoScalingGroup
    AutoScalingGroup (..),
    newAutoScalingGroup,

    -- * BuildConfiguration
    BuildConfiguration (..),
    newBuildConfiguration,

    -- * Builder
    Builder (..),
    newBuilder,

    -- * CPUUtilization
    CPUUtilization (..),
    newCPUUtilization,

    -- * ConfigurationOptionDescription
    ConfigurationOptionDescription (..),
    newConfigurationOptionDescription,

    -- * ConfigurationOptionSetting
    ConfigurationOptionSetting (..),
    newConfigurationOptionSetting,

    -- * ConfigurationSettingsDescription
    ConfigurationSettingsDescription (..),
    newConfigurationSettingsDescription,

    -- * CustomAmi
    CustomAmi (..),
    newCustomAmi,

    -- * Deployment
    Deployment (..),
    newDeployment,

    -- * EnvironmentDescription
    EnvironmentDescription (..),
    newEnvironmentDescription,

    -- * EnvironmentDescriptionsMessage
    EnvironmentDescriptionsMessage (..),
    newEnvironmentDescriptionsMessage,

    -- * EnvironmentInfoDescription
    EnvironmentInfoDescription (..),
    newEnvironmentInfoDescription,

    -- * EnvironmentLink
    EnvironmentLink (..),
    newEnvironmentLink,

    -- * EnvironmentResourceDescription
    EnvironmentResourceDescription (..),
    newEnvironmentResourceDescription,

    -- * EnvironmentResourcesDescription
    EnvironmentResourcesDescription (..),
    newEnvironmentResourcesDescription,

    -- * EnvironmentTier
    EnvironmentTier (..),
    newEnvironmentTier,

    -- * EventDescription
    EventDescription (..),
    newEventDescription,

    -- * Instance
    Instance (..),
    newInstance,

    -- * InstanceHealthSummary
    InstanceHealthSummary (..),
    newInstanceHealthSummary,

    -- * Latency
    Latency (..),
    newLatency,

    -- * LaunchConfiguration
    LaunchConfiguration (..),
    newLaunchConfiguration,

    -- * LaunchTemplate
    LaunchTemplate (..),
    newLaunchTemplate,

    -- * Listener
    Listener (..),
    newListener,

    -- * LoadBalancer
    LoadBalancer (..),
    newLoadBalancer,

    -- * LoadBalancerDescription
    LoadBalancerDescription (..),
    newLoadBalancerDescription,

    -- * ManagedAction
    ManagedAction (..),
    newManagedAction,

    -- * ManagedActionHistoryItem
    ManagedActionHistoryItem (..),
    newManagedActionHistoryItem,

    -- * MaxAgeRule
    MaxAgeRule (..),
    newMaxAgeRule,

    -- * MaxCountRule
    MaxCountRule (..),
    newMaxCountRule,

    -- * OptionRestrictionRegex
    OptionRestrictionRegex (..),
    newOptionRestrictionRegex,

    -- * OptionSpecification
    OptionSpecification (..),
    newOptionSpecification,

    -- * PlatformBranchSummary
    PlatformBranchSummary (..),
    newPlatformBranchSummary,

    -- * PlatformDescription
    PlatformDescription (..),
    newPlatformDescription,

    -- * PlatformFilter
    PlatformFilter (..),
    newPlatformFilter,

    -- * PlatformFramework
    PlatformFramework (..),
    newPlatformFramework,

    -- * PlatformProgrammingLanguage
    PlatformProgrammingLanguage (..),
    newPlatformProgrammingLanguage,

    -- * PlatformSummary
    PlatformSummary (..),
    newPlatformSummary,

    -- * Queue
    Queue (..),
    newQueue,

    -- * ResourceQuota
    ResourceQuota (..),
    newResourceQuota,

    -- * ResourceQuotas
    ResourceQuotas (..),
    newResourceQuotas,

    -- * S3Location
    S3Location (..),
    newS3Location,

    -- * SearchFilter
    SearchFilter (..),
    newSearchFilter,

    -- * SingleInstanceHealth
    SingleInstanceHealth (..),
    newSingleInstanceHealth,

    -- * SolutionStackDescription
    SolutionStackDescription (..),
    newSolutionStackDescription,

    -- * SourceBuildInformation
    SourceBuildInformation (..),
    newSourceBuildInformation,

    -- * SourceConfiguration
    SourceConfiguration (..),
    newSourceConfiguration,

    -- * StatusCodes
    StatusCodes (..),
    newStatusCodes,

    -- * SystemStatus
    SystemStatus (..),
    newSystemStatus,

    -- * Tag
    Tag (..),
    newTag,

    -- * Trigger
    Trigger (..),
    newTrigger,

    -- * ValidationMessage
    ValidationMessage (..),
    newValidationMessage,
  )
where

import Network.AWS.ElasticBeanstalk.Types.ActionHistoryStatus
import Network.AWS.ElasticBeanstalk.Types.ActionStatus
import Network.AWS.ElasticBeanstalk.Types.ActionType
import Network.AWS.ElasticBeanstalk.Types.ApplicationDescription
import Network.AWS.ElasticBeanstalk.Types.ApplicationDescriptionMessage
import Network.AWS.ElasticBeanstalk.Types.ApplicationMetrics
import Network.AWS.ElasticBeanstalk.Types.ApplicationResourceLifecycleConfig
import Network.AWS.ElasticBeanstalk.Types.ApplicationVersionDescription
import Network.AWS.ElasticBeanstalk.Types.ApplicationVersionDescriptionMessage
import Network.AWS.ElasticBeanstalk.Types.ApplicationVersionLifecycleConfig
import Network.AWS.ElasticBeanstalk.Types.ApplicationVersionStatus
import Network.AWS.ElasticBeanstalk.Types.AutoScalingGroup
import Network.AWS.ElasticBeanstalk.Types.BuildConfiguration
import Network.AWS.ElasticBeanstalk.Types.Builder
import Network.AWS.ElasticBeanstalk.Types.CPUUtilization
import Network.AWS.ElasticBeanstalk.Types.ComputeType
import Network.AWS.ElasticBeanstalk.Types.ConfigurationDeploymentStatus
import Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionDescription
import Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionSetting
import Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionValueType
import Network.AWS.ElasticBeanstalk.Types.ConfigurationSettingsDescription
import Network.AWS.ElasticBeanstalk.Types.CustomAmi
import Network.AWS.ElasticBeanstalk.Types.Deployment
import Network.AWS.ElasticBeanstalk.Types.EnvironmentDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentDescriptionsMessage
import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealth
import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthAttribute
import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthStatus
import Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoType
import Network.AWS.ElasticBeanstalk.Types.EnvironmentLink
import Network.AWS.ElasticBeanstalk.Types.EnvironmentResourceDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentResourcesDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentStatus
import Network.AWS.ElasticBeanstalk.Types.EnvironmentTier
import Network.AWS.ElasticBeanstalk.Types.EventDescription
import Network.AWS.ElasticBeanstalk.Types.EventSeverity
import Network.AWS.ElasticBeanstalk.Types.FailureType
import Network.AWS.ElasticBeanstalk.Types.Instance
import Network.AWS.ElasticBeanstalk.Types.InstanceHealthSummary
import Network.AWS.ElasticBeanstalk.Types.InstancesHealthAttribute
import Network.AWS.ElasticBeanstalk.Types.Latency
import Network.AWS.ElasticBeanstalk.Types.LaunchConfiguration
import Network.AWS.ElasticBeanstalk.Types.LaunchTemplate
import Network.AWS.ElasticBeanstalk.Types.Listener
import Network.AWS.ElasticBeanstalk.Types.LoadBalancer
import Network.AWS.ElasticBeanstalk.Types.LoadBalancerDescription
import Network.AWS.ElasticBeanstalk.Types.ManagedAction
import Network.AWS.ElasticBeanstalk.Types.ManagedActionHistoryItem
import Network.AWS.ElasticBeanstalk.Types.MaxAgeRule
import Network.AWS.ElasticBeanstalk.Types.MaxCountRule
import Network.AWS.ElasticBeanstalk.Types.OptionRestrictionRegex
import Network.AWS.ElasticBeanstalk.Types.OptionSpecification
import Network.AWS.ElasticBeanstalk.Types.PlatformBranchSummary
import Network.AWS.ElasticBeanstalk.Types.PlatformDescription
import Network.AWS.ElasticBeanstalk.Types.PlatformFilter
import Network.AWS.ElasticBeanstalk.Types.PlatformFramework
import Network.AWS.ElasticBeanstalk.Types.PlatformProgrammingLanguage
import Network.AWS.ElasticBeanstalk.Types.PlatformStatus
import Network.AWS.ElasticBeanstalk.Types.PlatformSummary
import Network.AWS.ElasticBeanstalk.Types.Queue
import Network.AWS.ElasticBeanstalk.Types.ResourceQuota
import Network.AWS.ElasticBeanstalk.Types.ResourceQuotas
import Network.AWS.ElasticBeanstalk.Types.S3Location
import Network.AWS.ElasticBeanstalk.Types.SearchFilter
import Network.AWS.ElasticBeanstalk.Types.SingleInstanceHealth
import Network.AWS.ElasticBeanstalk.Types.SolutionStackDescription
import Network.AWS.ElasticBeanstalk.Types.SourceBuildInformation
import Network.AWS.ElasticBeanstalk.Types.SourceConfiguration
import Network.AWS.ElasticBeanstalk.Types.SourceRepository
import Network.AWS.ElasticBeanstalk.Types.SourceType
import Network.AWS.ElasticBeanstalk.Types.StatusCodes
import Network.AWS.ElasticBeanstalk.Types.SystemStatus
import Network.AWS.ElasticBeanstalk.Types.Tag
import Network.AWS.ElasticBeanstalk.Types.Trigger
import Network.AWS.ElasticBeanstalk.Types.ValidationMessage
import Network.AWS.ElasticBeanstalk.Types.ValidationSeverity
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2010-12-01@ of the Amazon Elastic Beanstalk SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "ElasticBeanstalk",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "elasticbeanstalk",
      Prelude._svcVersion = "2010-12-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseXMLError "ElasticBeanstalk",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | You have exceeded the maximum number of allowed platforms associated
-- with the account.
_TooManyPlatformsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyPlatformsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyPlatformsException"
    Prelude.. Prelude.hasStatus 400

-- | The number of tags in the resource would exceed the number of tags that
-- each resource can have.
--
-- To calculate this, the operation considers both the number of tags the
-- resource already has and the tags this operation would add if it
-- succeeded.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsException"
    Prelude.. Prelude.hasStatus 400

-- | The specified account has reached its limit of applications.
_TooManyApplicationsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyApplicationsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyApplicationsException"
    Prelude.. Prelude.hasStatus 400

-- | The type of the specified Amazon Resource Name (ARN) isn\'t supported
-- for this operation.
_ResourceTypeNotSupportedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceTypeNotSupportedException =
  Prelude._MatchServiceError
    defaultService
    "ResourceTypeNotSupportedException"
    Prelude.. Prelude.hasStatus 400

-- | The specified account has reached its limit of environments.
_TooManyEnvironmentsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyEnvironmentsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyEnvironmentsException"
    Prelude.. Prelude.hasStatus 400

-- | The specified account does not have sufficient privileges for one or
-- more AWS services.
_InsufficientPrivilegesException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientPrivilegesException =
  Prelude._MatchServiceError
    defaultService
    "InsufficientPrivilegesException"
    Prelude.. Prelude.hasStatus 403

-- | The specified account has reached its limit of configuration templates.
_TooManyConfigurationTemplatesException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyConfigurationTemplatesException =
  Prelude._MatchServiceError
    defaultService
    "TooManyConfigurationTemplatesException"
    Prelude.. Prelude.hasStatus 400

-- | Unable to perform the specified operation because another operation that
-- effects an element in this activity is already in progress.
_OperationInProgressException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationInProgressException =
  Prelude._MatchServiceError
    defaultService
    "OperationInProgressFailure"
    Prelude.. Prelude.hasStatus 400

-- | The specified account has reached its limit of Amazon S3 buckets.
_TooManyBucketsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyBucketsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyBucketsException"
    Prelude.. Prelude.hasStatus 400

-- | The specified account does not have a subscription to Amazon S3.
_S3SubscriptionRequiredException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_S3SubscriptionRequiredException =
  Prelude._MatchServiceError
    defaultService
    "S3SubscriptionRequiredException"
    Prelude.. Prelude.hasStatus 400

-- | Unable to delete the Amazon S3 source bundle associated with the
-- application version. The application version was deleted successfully.
_SourceBundleDeletionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SourceBundleDeletionException =
  Prelude._MatchServiceError
    defaultService
    "SourceBundleDeletionFailure"
    Prelude.. Prelude.hasStatus 400

-- | One or more input parameters is not valid. Please correct the input
-- parameters and try the operation again.
_InvalidRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRequestException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRequestException"
    Prelude.. Prelude.hasStatus 400

-- | A generic service exception has occurred.
_ElasticBeanstalkServiceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ElasticBeanstalkServiceException =
  Prelude._MatchServiceError
    defaultService
    "ElasticBeanstalkServiceException"

-- | A resource doesn\'t exist for the specified Amazon Resource Name (ARN).
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Prelude.hasStatus 400

-- | AWS CodeBuild is not available in the specified region.
_CodeBuildNotInServiceRegionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CodeBuildNotInServiceRegionException =
  Prelude._MatchServiceError
    defaultService
    "CodeBuildNotInServiceRegionException"
    Prelude.. Prelude.hasStatus 400

-- | You cannot delete the platform version because there are still
-- environments running on it.
_PlatformVersionStillReferencedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PlatformVersionStillReferencedException =
  Prelude._MatchServiceError
    defaultService
    "PlatformVersionStillReferencedException"
    Prelude.. Prelude.hasStatus 400

-- | The specified account has reached its limit of application versions.
_TooManyApplicationVersionsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyApplicationVersionsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyApplicationVersionsException"

-- | The specified S3 bucket does not belong to the S3 region in which the
-- service is running. The following regions are supported:
--
-- -   IAD\/us-east-1
--
-- -   PDX\/us-west-2
--
-- -   DUB\/eu-west-1
_S3LocationNotInServiceRegionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_S3LocationNotInServiceRegionException =
  Prelude._MatchServiceError
    defaultService
    "S3LocationNotInServiceRegionException"
    Prelude.. Prelude.hasStatus 400

-- | Cannot modify the managed action in its current state.
_ManagedActionInvalidStateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ManagedActionInvalidStateException =
  Prelude._MatchServiceError
    defaultService
    "ManagedActionInvalidStateException"
    Prelude.. Prelude.hasStatus 400
