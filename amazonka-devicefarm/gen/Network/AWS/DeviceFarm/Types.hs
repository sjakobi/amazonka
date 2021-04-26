{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _NotEligibleException,
    _ArgumentException,
    _NotFoundException,
    _TooManyTagsException,
    _InvalidOperationException,
    _ServiceAccountException,
    _TagOperationException,
    _IdempotencyException,
    _InternalServiceException,
    _TagPolicyException,
    _CannotDeleteException,
    _LimitExceededException,

    -- * ArtifactCategory
    ArtifactCategory (..),

    -- * ArtifactType
    ArtifactType (..),

    -- * BillingMethod
    BillingMethod (..),

    -- * CurrencyCode
    CurrencyCode (..),

    -- * DeviceAttribute
    DeviceAttribute (..),

    -- * DeviceAvailability
    DeviceAvailability (..),

    -- * DeviceFilterAttribute
    DeviceFilterAttribute (..),

    -- * DeviceFormFactor
    DeviceFormFactor (..),

    -- * DevicePlatform
    DevicePlatform (..),

    -- * DevicePoolType
    DevicePoolType (..),

    -- * ExecutionResult
    ExecutionResult (..),

    -- * ExecutionResultCode
    ExecutionResultCode (..),

    -- * ExecutionStatus
    ExecutionStatus (..),

    -- * InstanceStatus
    InstanceStatus (..),

    -- * InteractionMode
    InteractionMode (..),

    -- * NetworkProfileType
    NetworkProfileType (..),

    -- * OfferingTransactionType
    OfferingTransactionType (..),

    -- * OfferingType
    OfferingType (..),

    -- * RecurringChargeFrequency
    RecurringChargeFrequency (..),

    -- * RuleOperator
    RuleOperator (..),

    -- * SampleType
    SampleType (..),

    -- * TestGridSessionArtifactCategory
    TestGridSessionArtifactCategory (..),

    -- * TestGridSessionArtifactType
    TestGridSessionArtifactType (..),

    -- * TestGridSessionStatus
    TestGridSessionStatus (..),

    -- * TestType
    TestType (..),

    -- * UploadCategory
    UploadCategory (..),

    -- * UploadStatus
    UploadStatus (..),

    -- * UploadType
    UploadType (..),

    -- * AccountSettings
    AccountSettings (..),
    newAccountSettings,

    -- * Artifact
    Artifact (..),
    newArtifact,

    -- * CPU
    CPU (..),
    newCPU,

    -- * Counters
    Counters (..),
    newCounters,

    -- * CreateRemoteAccessSessionConfiguration
    CreateRemoteAccessSessionConfiguration (..),
    newCreateRemoteAccessSessionConfiguration,

    -- * CustomerArtifactPaths
    CustomerArtifactPaths (..),
    newCustomerArtifactPaths,

    -- * Device
    Device (..),
    newDevice,

    -- * DeviceFilter
    DeviceFilter (..),
    newDeviceFilter,

    -- * DeviceInstance
    DeviceInstance (..),
    newDeviceInstance,

    -- * DeviceMinutes
    DeviceMinutes (..),
    newDeviceMinutes,

    -- * DevicePool
    DevicePool (..),
    newDevicePool,

    -- * DevicePoolCompatibilityResult
    DevicePoolCompatibilityResult (..),
    newDevicePoolCompatibilityResult,

    -- * DeviceSelectionConfiguration
    DeviceSelectionConfiguration (..),
    newDeviceSelectionConfiguration,

    -- * DeviceSelectionResult
    DeviceSelectionResult (..),
    newDeviceSelectionResult,

    -- * ExecutionConfiguration
    ExecutionConfiguration (..),
    newExecutionConfiguration,

    -- * IncompatibilityMessage
    IncompatibilityMessage (..),
    newIncompatibilityMessage,

    -- * InstanceProfile
    InstanceProfile (..),
    newInstanceProfile,

    -- * Job
    Job (..),
    newJob,

    -- * Location
    Location (..),
    newLocation,

    -- * MonetaryAmount
    MonetaryAmount (..),
    newMonetaryAmount,

    -- * NetworkProfile
    NetworkProfile (..),
    newNetworkProfile,

    -- * Offering
    Offering (..),
    newOffering,

    -- * OfferingPromotion
    OfferingPromotion (..),
    newOfferingPromotion,

    -- * OfferingStatus
    OfferingStatus (..),
    newOfferingStatus,

    -- * OfferingTransaction
    OfferingTransaction (..),
    newOfferingTransaction,

    -- * Problem
    Problem (..),
    newProblem,

    -- * ProblemDetail
    ProblemDetail (..),
    newProblemDetail,

    -- * Project
    Project (..),
    newProject,

    -- * Radios
    Radios (..),
    newRadios,

    -- * RecurringCharge
    RecurringCharge (..),
    newRecurringCharge,

    -- * RemoteAccessSession
    RemoteAccessSession (..),
    newRemoteAccessSession,

    -- * Resolution
    Resolution (..),
    newResolution,

    -- * Rule
    Rule (..),
    newRule,

    -- * Run
    Run (..),
    newRun,

    -- * Sample
    Sample (..),
    newSample,

    -- * ScheduleRunConfiguration
    ScheduleRunConfiguration (..),
    newScheduleRunConfiguration,

    -- * ScheduleRunTest
    ScheduleRunTest (..),
    newScheduleRunTest,

    -- * Suite
    Suite (..),
    newSuite,

    -- * Tag
    Tag (..),
    newTag,

    -- * Test
    Test (..),
    newTest,

    -- * TestGridProject
    TestGridProject (..),
    newTestGridProject,

    -- * TestGridSession
    TestGridSession (..),
    newTestGridSession,

    -- * TestGridSessionAction
    TestGridSessionAction (..),
    newTestGridSessionAction,

    -- * TestGridSessionArtifact
    TestGridSessionArtifact (..),
    newTestGridSessionArtifact,

    -- * TrialMinutes
    TrialMinutes (..),
    newTrialMinutes,

    -- * UniqueProblem
    UniqueProblem (..),
    newUniqueProblem,

    -- * Upload
    Upload (..),
    newUpload,

    -- * VPCEConfiguration
    VPCEConfiguration (..),
    newVPCEConfiguration,
  )
where

import Network.AWS.DeviceFarm.Types.AccountSettings
import Network.AWS.DeviceFarm.Types.Artifact
import Network.AWS.DeviceFarm.Types.ArtifactCategory
import Network.AWS.DeviceFarm.Types.ArtifactType
import Network.AWS.DeviceFarm.Types.BillingMethod
import Network.AWS.DeviceFarm.Types.CPU
import Network.AWS.DeviceFarm.Types.Counters
import Network.AWS.DeviceFarm.Types.CreateRemoteAccessSessionConfiguration
import Network.AWS.DeviceFarm.Types.CurrencyCode
import Network.AWS.DeviceFarm.Types.CustomerArtifactPaths
import Network.AWS.DeviceFarm.Types.Device
import Network.AWS.DeviceFarm.Types.DeviceAttribute
import Network.AWS.DeviceFarm.Types.DeviceAvailability
import Network.AWS.DeviceFarm.Types.DeviceFilter
import Network.AWS.DeviceFarm.Types.DeviceFilterAttribute
import Network.AWS.DeviceFarm.Types.DeviceFormFactor
import Network.AWS.DeviceFarm.Types.DeviceInstance
import Network.AWS.DeviceFarm.Types.DeviceMinutes
import Network.AWS.DeviceFarm.Types.DevicePlatform
import Network.AWS.DeviceFarm.Types.DevicePool
import Network.AWS.DeviceFarm.Types.DevicePoolCompatibilityResult
import Network.AWS.DeviceFarm.Types.DevicePoolType
import Network.AWS.DeviceFarm.Types.DeviceSelectionConfiguration
import Network.AWS.DeviceFarm.Types.DeviceSelectionResult
import Network.AWS.DeviceFarm.Types.ExecutionConfiguration
import Network.AWS.DeviceFarm.Types.ExecutionResult
import Network.AWS.DeviceFarm.Types.ExecutionResultCode
import Network.AWS.DeviceFarm.Types.ExecutionStatus
import Network.AWS.DeviceFarm.Types.IncompatibilityMessage
import Network.AWS.DeviceFarm.Types.InstanceProfile
import Network.AWS.DeviceFarm.Types.InstanceStatus
import Network.AWS.DeviceFarm.Types.InteractionMode
import Network.AWS.DeviceFarm.Types.Job
import Network.AWS.DeviceFarm.Types.Location
import Network.AWS.DeviceFarm.Types.MonetaryAmount
import Network.AWS.DeviceFarm.Types.NetworkProfile
import Network.AWS.DeviceFarm.Types.NetworkProfileType
import Network.AWS.DeviceFarm.Types.Offering
import Network.AWS.DeviceFarm.Types.OfferingPromotion
import Network.AWS.DeviceFarm.Types.OfferingStatus
import Network.AWS.DeviceFarm.Types.OfferingTransaction
import Network.AWS.DeviceFarm.Types.OfferingTransactionType
import Network.AWS.DeviceFarm.Types.OfferingType
import Network.AWS.DeviceFarm.Types.Problem
import Network.AWS.DeviceFarm.Types.ProblemDetail
import Network.AWS.DeviceFarm.Types.Project
import Network.AWS.DeviceFarm.Types.Radios
import Network.AWS.DeviceFarm.Types.RecurringCharge
import Network.AWS.DeviceFarm.Types.RecurringChargeFrequency
import Network.AWS.DeviceFarm.Types.RemoteAccessSession
import Network.AWS.DeviceFarm.Types.Resolution
import Network.AWS.DeviceFarm.Types.Rule
import Network.AWS.DeviceFarm.Types.RuleOperator
import Network.AWS.DeviceFarm.Types.Run
import Network.AWS.DeviceFarm.Types.Sample
import Network.AWS.DeviceFarm.Types.SampleType
import Network.AWS.DeviceFarm.Types.ScheduleRunConfiguration
import Network.AWS.DeviceFarm.Types.ScheduleRunTest
import Network.AWS.DeviceFarm.Types.Suite
import Network.AWS.DeviceFarm.Types.Tag
import Network.AWS.DeviceFarm.Types.Test
import Network.AWS.DeviceFarm.Types.TestGridProject
import Network.AWS.DeviceFarm.Types.TestGridSession
import Network.AWS.DeviceFarm.Types.TestGridSessionAction
import Network.AWS.DeviceFarm.Types.TestGridSessionArtifact
import Network.AWS.DeviceFarm.Types.TestGridSessionArtifactCategory
import Network.AWS.DeviceFarm.Types.TestGridSessionArtifactType
import Network.AWS.DeviceFarm.Types.TestGridSessionStatus
import Network.AWS.DeviceFarm.Types.TestType
import Network.AWS.DeviceFarm.Types.TrialMinutes
import Network.AWS.DeviceFarm.Types.UniqueProblem
import Network.AWS.DeviceFarm.Types.Upload
import Network.AWS.DeviceFarm.Types.UploadCategory
import Network.AWS.DeviceFarm.Types.UploadStatus
import Network.AWS.DeviceFarm.Types.UploadType
import Network.AWS.DeviceFarm.Types.VPCEConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-06-23@ of the Amazon Device Farm SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "DeviceFarm",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "devicefarm",
      Prelude._svcVersion = "2015-06-23",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "DeviceFarm",
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

-- | Exception gets thrown when a user is not eligible to perform the
-- specified transaction.
_NotEligibleException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotEligibleException =
  Prelude._MatchServiceError
    defaultService
    "NotEligibleException"

-- | An invalid argument was specified.
_ArgumentException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ArgumentException =
  Prelude._MatchServiceError
    defaultService
    "ArgumentException"

-- | The specified entity was not found.
_NotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotFoundException =
  Prelude._MatchServiceError
    defaultService
    "NotFoundException"

-- | The list of tags on the repository is over the limit. The maximum number
-- of tags that can be applied to a repository is 50.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | There was an error with the update request, or you do not have
-- sufficient permissions to update this VPC endpoint configuration.
_InvalidOperationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidOperationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidOperationException"

-- | There was a problem with the service account.
_ServiceAccountException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceAccountException =
  Prelude._MatchServiceError
    defaultService
    "ServiceAccountException"

-- | The operation was not successful. Try again.
_TagOperationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TagOperationException =
  Prelude._MatchServiceError
    defaultService
    "TagOperationException"

-- | An entity with the same name already exists.
_IdempotencyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IdempotencyException =
  Prelude._MatchServiceError
    defaultService
    "IdempotencyException"

-- | An internal exception was raised in the service. Contact
-- <mailto:aws-devicefarm-support@amazon.com aws-devicefarm-support\@amazon.com>
-- if you see this error.
_InternalServiceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServiceException =
  Prelude._MatchServiceError
    defaultService
    "InternalServiceException"

-- | The request doesn\'t comply with the AWS Identity and Access Management
-- (IAM) tag policy. Correct your request and then retry it.
_TagPolicyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TagPolicyException =
  Prelude._MatchServiceError
    defaultService
    "TagPolicyException"

-- | The requested object could not be deleted.
_CannotDeleteException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CannotDeleteException =
  Prelude._MatchServiceError
    defaultService
    "CannotDeleteException"

-- | A limit was exceeded.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"
