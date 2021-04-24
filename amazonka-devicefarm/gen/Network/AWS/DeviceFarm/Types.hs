{-# LANGUAGE OverloadedStrings #-}

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
    deviceFarm,

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
    accountSettings,
    asAwsAccountNumber,
    asMaxSlots,
    asTrialMinutes,
    asSkipAppResign,
    asMaxJobTimeoutMinutes,
    asDefaultJobTimeoutMinutes,
    asUnmeteredDevices,
    asUnmeteredRemoteAccessDevices,

    -- * Artifact
    Artifact (..),
    artifact,
    aArn,
    aName,
    aExtension,
    aUrl,
    aType,

    -- * CPU
    CPU (..),
    cpu,
    cpuArchitecture,
    cpuFrequency,
    cpuClock,

    -- * Counters
    Counters (..),
    counters,
    cErrored,
    cWarned,
    cPassed,
    cTotal,
    cStopped,
    cFailed,
    cSkipped,

    -- * CreateRemoteAccessSessionConfiguration
    CreateRemoteAccessSessionConfiguration (..),
    createRemoteAccessSessionConfiguration,
    crascBillingMethod,
    crascVpceConfigurationARNs,

    -- * CustomerArtifactPaths
    CustomerArtifactPaths (..),
    customerArtifactPaths,
    capDeviceHostPaths,
    capIosPaths,
    capAndroidPaths,

    -- * Device
    Device (..),
    device,
    dManufacturer,
    dPlatform,
    dModel,
    dFleetName,
    dMemory,
    dAvailability,
    dFleetType,
    dFormFactor,
    dRemoteAccessEnabled,
    dArn,
    dInstances,
    dName,
    dImage,
    dCarrier,
    dOs,
    dHeapSize,
    dRadio,
    dResolution,
    dCpu,
    dRemoteDebugEnabled,
    dModelId,

    -- * DeviceFilter
    DeviceFilter (..),
    deviceFilter,
    dfOperator,
    dfValues,
    dfAttribute,

    -- * DeviceInstance
    DeviceInstance (..),
    deviceInstance,
    diUdid,
    diStatus,
    diDeviceARN,
    diArn,
    diLabels,
    diInstanceProfile,

    -- * DeviceMinutes
    DeviceMinutes (..),
    deviceMinutes,
    dmUnmetered,
    dmMetered,
    dmTotal,

    -- * DevicePool
    DevicePool (..),
    devicePool,
    dpRules,
    dpArn,
    dpName,
    dpMaxDevices,
    dpDescription,
    dpType,

    -- * DevicePoolCompatibilityResult
    DevicePoolCompatibilityResult (..),
    devicePoolCompatibilityResult,
    dpcrIncompatibilityMessages,
    dpcrCompatible,
    dpcrDevice,

    -- * DeviceSelectionConfiguration
    DeviceSelectionConfiguration (..),
    deviceSelectionConfiguration,
    dscFilters,
    dscMaxDevices,

    -- * DeviceSelectionResult
    DeviceSelectionResult (..),
    deviceSelectionResult,
    dsrMaxDevices,
    dsrFilters,
    dsrMatchedDevicesCount,

    -- * ExecutionConfiguration
    ExecutionConfiguration (..),
    executionConfiguration,
    ecAppPackagesCleanup,
    ecVideoCapture,
    ecSkipAppResign,
    ecJobTimeoutMinutes,
    ecAccountsCleanup,

    -- * IncompatibilityMessage
    IncompatibilityMessage (..),
    incompatibilityMessage,
    imMessage,
    imType,

    -- * InstanceProfile
    InstanceProfile (..),
    instanceProfile,
    ipExcludeAppPackagesFromCleanup,
    ipArn,
    ipName,
    ipDescription,
    ipRebootAfterUse,
    ipPackageCleanup,

    -- * Job
    Job (..),
    job,
    jobCounters,
    jobStatus,
    jobResult,
    jobStarted,
    jobMessage,
    jobDevice,
    jobVideoCapture,
    jobArn,
    jobVideoEndpoint,
    jobName,
    jobInstanceARN,
    jobStopped,
    jobCreated,
    jobType,
    jobDeviceMinutes,

    -- * Location
    Location (..),
    location,
    lLatitude,
    lLongitude,

    -- * MonetaryAmount
    MonetaryAmount (..),
    monetaryAmount,
    maAmount,
    maCurrencyCode,

    -- * NetworkProfile
    NetworkProfile (..),
    networkProfile,
    npUplinkJitterMs,
    npDownlinkDelayMs,
    npDownlinkBandwidthBits,
    npDownlinkJitterMs,
    npUplinkLossPercent,
    npArn,
    npDownlinkLossPercent,
    npName,
    npDescription,
    npUplinkDelayMs,
    npUplinkBandwidthBits,
    npType,

    -- * Offering
    Offering (..),
    offering,
    oPlatform,
    oId,
    oDescription,
    oRecurringCharges,
    oType,

    -- * OfferingPromotion
    OfferingPromotion (..),
    offeringPromotion,
    opId,
    opDescription,

    -- * OfferingStatus
    OfferingStatus (..),
    offeringStatus,
    osQuantity,
    osOffering,
    osEffectiveOn,
    osType,

    -- * OfferingTransaction
    OfferingTransaction (..),
    offeringTransaction,
    otOfferingStatus,
    otCreatedOn,
    otCost,
    otTransactionId,
    otOfferingPromotionId,

    -- * Problem
    Problem (..),
    problem,
    pJob,
    pResult,
    pMessage,
    pDevice,
    pRun,
    pTest,
    pSuite,

    -- * ProblemDetail
    ProblemDetail (..),
    problemDetail,
    pdArn,
    pdName,

    -- * Project
    Project (..),
    project,
    pArn,
    pName,
    pCreated,
    pDefaultJobTimeoutMinutes,

    -- * Radios
    Radios (..),
    radios,
    rGps,
    rWifi,
    rBluetooth,
    rNfc,

    -- * RecurringCharge
    RecurringCharge (..),
    recurringCharge,
    rcCost,
    rcFrequency,

    -- * RemoteAccessSession
    RemoteAccessSession (..),
    remoteAccessSession,
    rasDeviceUdid,
    rasClientId,
    rasStatus,
    rasResult,
    rasInteractionMode,
    rasStarted,
    rasMessage,
    rasDevice,
    rasArn,
    rasName,
    rasInstanceARN,
    rasBillingMethod,
    rasRemoteRecordEnabled,
    rasSkipAppResign,
    rasStopped,
    rasHostAddress,
    rasEndpoint,
    rasCreated,
    rasRemoteDebugEnabled,
    rasRemoteRecordAppARN,
    rasDeviceMinutes,

    -- * Resolution
    Resolution (..),
    resolution,
    rHeight,
    rWidth,

    -- * Rule
    Rule (..),
    rule,
    rOperator,
    rAttribute,
    rValue,

    -- * Run
    Run (..),
    run,
    runSeed,
    runEventCount,
    runCounters,
    runPlatform,
    runStatus,
    runResult,
    runDevicePoolARN,
    runDeviceSelectionResult,
    runStarted,
    runTestSpecARN,
    runMessage,
    runLocale,
    runArn,
    runNetworkProfile,
    runAppUpload,
    runRadios,
    runName,
    runBillingMethod,
    runCustomerArtifactPaths,
    runResultCode,
    runSkipAppResign,
    runCompletedJobs,
    runStopped,
    runJobTimeoutMinutes,
    runTotalJobs,
    runWebURL,
    runCreated,
    runType,
    runDeviceMinutes,
    runLocation,
    runParsingResultURL,

    -- * Sample
    Sample (..),
    sample,
    sArn,
    sUrl,
    sType,

    -- * ScheduleRunConfiguration
    ScheduleRunConfiguration (..),
    scheduleRunConfiguration,
    srcLocale,
    srcAuxiliaryApps,
    srcRadios,
    srcBillingMethod,
    srcCustomerArtifactPaths,
    srcVpceConfigurationARNs,
    srcNetworkProfileARN,
    srcLocation,
    srcExtraDataPackageARN,

    -- * ScheduleRunTest
    ScheduleRunTest (..),
    scheduleRunTest,
    srtTestPackageARN,
    srtTestSpecARN,
    srtFilter,
    srtParameters,
    srtType,

    -- * Suite
    Suite (..),
    suite,
    suiCounters,
    suiStatus,
    suiResult,
    suiStarted,
    suiMessage,
    suiArn,
    suiName,
    suiStopped,
    suiCreated,
    suiType,
    suiDeviceMinutes,

    -- * Tag
    Tag (..),
    tag,
    tagKey,
    tagValue,

    -- * Test
    Test (..),
    test,
    tCounters,
    tStatus,
    tResult,
    tStarted,
    tMessage,
    tArn,
    tName,
    tStopped,
    tCreated,
    tType,
    tDeviceMinutes,

    -- * TestGridProject
    TestGridProject (..),
    testGridProject,
    tgpArn,
    tgpName,
    tgpDescription,
    tgpCreated,

    -- * TestGridSession
    TestGridSession (..),
    testGridSession,
    tgsStatus,
    tgsArn,
    tgsSeleniumProperties,
    tgsBillingMinutes,
    tgsEnded,
    tgsCreated,

    -- * TestGridSessionAction
    TestGridSessionAction (..),
    testGridSessionAction,
    tgsaStarted,
    tgsaDuration,
    tgsaStatusCode,
    tgsaAction,
    tgsaRequestMethod,

    -- * TestGridSessionArtifact
    TestGridSessionArtifact (..),
    testGridSessionArtifact,
    tgsaFilename,
    tgsaUrl,
    tgsaType,

    -- * TrialMinutes
    TrialMinutes (..),
    trialMinutes,
    tmTotal,
    tmRemaining,

    -- * UniqueProblem
    UniqueProblem (..),
    uniqueProblem,
    upMessage,
    upProblems,

    -- * Upload
    Upload (..),
    upload,
    uStatus,
    uContentType,
    uMessage,
    uCategory,
    uMetadata,
    uArn,
    uName,
    uUrl,
    uCreated,
    uType,

    -- * VPCEConfiguration
    VPCEConfiguration (..),
    vpcEConfiguration,
    vecVpceConfigurationName,
    vecVpceConfigurationDescription,
    vecArn,
    vecServiceDNSName,
    vecVpceServiceName,
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
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | API version @2015-06-23@ of the Amazon Device Farm SDK configuration.
deviceFarm :: Service
deviceFarm =
  Service
    { _svcAbbrev = "DeviceFarm",
      _svcSigner = v4,
      _svcPrefix = "devicefarm",
      _svcVersion = "2015-06-23",
      _svcEndpoint = defaultEndpoint deviceFarm,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "DeviceFarm",
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

-- | Exception gets thrown when a user is not eligible to perform the specified transaction.
_NotEligibleException :: AsError a => Getting (First ServiceError) a ServiceError
_NotEligibleException =
  _MatchServiceError
    deviceFarm
    "NotEligibleException"

-- | An invalid argument was specified.
_ArgumentException :: AsError a => Getting (First ServiceError) a ServiceError
_ArgumentException =
  _MatchServiceError deviceFarm "ArgumentException"

-- | The specified entity was not found.
_NotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_NotFoundException =
  _MatchServiceError deviceFarm "NotFoundException"

-- | The list of tags on the repository is over the limit. The maximum number of tags that can be applied to a repository is 50.
_TooManyTagsException :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsException =
  _MatchServiceError
    deviceFarm
    "TooManyTagsException"

-- | There was an error with the update request, or you do not have sufficient permissions to update this VPC endpoint configuration.
_InvalidOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOperationException =
  _MatchServiceError
    deviceFarm
    "InvalidOperationException"

-- | There was a problem with the service account.
_ServiceAccountException :: AsError a => Getting (First ServiceError) a ServiceError
_ServiceAccountException =
  _MatchServiceError
    deviceFarm
    "ServiceAccountException"

-- | The operation was not successful. Try again.
_TagOperationException :: AsError a => Getting (First ServiceError) a ServiceError
_TagOperationException =
  _MatchServiceError
    deviceFarm
    "TagOperationException"

-- | An entity with the same name already exists.
_IdempotencyException :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotencyException =
  _MatchServiceError
    deviceFarm
    "IdempotencyException"

-- | An internal exception was raised in the service. Contact <mailto:aws-devicefarm-support@amazon.com aws-devicefarm-support@amazon.com> if you see this error.
_InternalServiceException :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServiceException =
  _MatchServiceError
    deviceFarm
    "InternalServiceException"

-- | The request doesn't comply with the AWS Identity and Access Management (IAM) tag policy. Correct your request and then retry it.
_TagPolicyException :: AsError a => Getting (First ServiceError) a ServiceError
_TagPolicyException =
  _MatchServiceError deviceFarm "TagPolicyException"

-- | The requested object could not be deleted.
_CannotDeleteException :: AsError a => Getting (First ServiceError) a ServiceError
_CannotDeleteException =
  _MatchServiceError
    deviceFarm
    "CannotDeleteException"

-- | A limit was exceeded.
_LimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_LimitExceededException =
  _MatchServiceError
    deviceFarm
    "LimitExceededException"
