{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Welcome to the AWS Device Farm API documentation, which contains APIs for:
--
--
--     * Testing on desktop browsers
--
-- Device Farm makes it possible for you to test your web applications on desktop browsers using Selenium. The APIs for desktop browser testing contain @TestGrid@ in their names. For more information, see <https://docs.aws.amazon.com/devicefarm/latest/testgrid/ Testing Web Applications on Selenium with Device Farm> .
--
--     * Testing on real mobile devices
--
-- Device Farm makes it possible for you to test apps on physical phones, tablets, and other devices in the cloud. For more information, see the <https://docs.aws.amazon.com/devicefarm/latest/developerguide/ Device Farm Developer Guide> .
module Network.AWS.DeviceFarm
  ( -- * Service Configuration
    deviceFarm,

    -- * Errors
    -- $errors

    -- ** NotEligibleException
    _NotEligibleException,

    -- ** ArgumentException
    _ArgumentException,

    -- ** NotFoundException
    _NotFoundException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** InvalidOperationException
    _InvalidOperationException,

    -- ** ServiceAccountException
    _ServiceAccountException,

    -- ** TagOperationException
    _TagOperationException,

    -- ** IdempotencyException
    _IdempotencyException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** TagPolicyException
    _TagPolicyException,

    -- ** CannotDeleteException
    _CannotDeleteException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreateUpload
    module Network.AWS.DeviceFarm.CreateUpload,

    -- ** ListTestGridSessionActions
    module Network.AWS.DeviceFarm.ListTestGridSessionActions,

    -- ** CreateTestGridProject
    module Network.AWS.DeviceFarm.CreateTestGridProject,

    -- ** ListSamples (Paginated)
    module Network.AWS.DeviceFarm.ListSamples,

    -- ** ListTestGridSessionArtifacts
    module Network.AWS.DeviceFarm.ListTestGridSessionArtifacts,

    -- ** ListNetworkProfiles (Paginated)
    module Network.AWS.DeviceFarm.ListNetworkProfiles,

    -- ** ScheduleRun
    module Network.AWS.DeviceFarm.ScheduleRun,

    -- ** UpdateNetworkProfile
    module Network.AWS.DeviceFarm.UpdateNetworkProfile,

    -- ** InstallToRemoteAccessSession
    module Network.AWS.DeviceFarm.InstallToRemoteAccessSession,

    -- ** DeleteNetworkProfile
    module Network.AWS.DeviceFarm.DeleteNetworkProfile,

    -- ** GetDevicePoolCompatibility
    module Network.AWS.DeviceFarm.GetDevicePoolCompatibility,

    -- ** CreateVPCEConfiguration
    module Network.AWS.DeviceFarm.CreateVPCEConfiguration,

    -- ** ListProjects (Paginated)
    module Network.AWS.DeviceFarm.ListProjects,

    -- ** CreateProject
    module Network.AWS.DeviceFarm.CreateProject,

    -- ** CreateTestGridURL
    module Network.AWS.DeviceFarm.CreateTestGridURL,

    -- ** ListOfferings (Paginated)
    module Network.AWS.DeviceFarm.ListOfferings,

    -- ** ListDevices (Paginated)
    module Network.AWS.DeviceFarm.ListDevices,

    -- ** StopRun
    module Network.AWS.DeviceFarm.StopRun,

    -- ** CreateNetworkProfile
    module Network.AWS.DeviceFarm.CreateNetworkProfile,

    -- ** GetJob
    module Network.AWS.DeviceFarm.GetJob,

    -- ** CreateInstanceProfile
    module Network.AWS.DeviceFarm.CreateInstanceProfile,

    -- ** GetDevice
    module Network.AWS.DeviceFarm.GetDevice,

    -- ** StopRemoteAccessSession
    module Network.AWS.DeviceFarm.StopRemoteAccessSession,

    -- ** UntagResource
    module Network.AWS.DeviceFarm.UntagResource,

    -- ** ListDeviceInstances (Paginated)
    module Network.AWS.DeviceFarm.ListDeviceInstances,

    -- ** UpdateDeviceInstance
    module Network.AWS.DeviceFarm.UpdateDeviceInstance,

    -- ** CreateDevicePool
    module Network.AWS.DeviceFarm.CreateDevicePool,

    -- ** TagResource
    module Network.AWS.DeviceFarm.TagResource,

    -- ** ListRuns (Paginated)
    module Network.AWS.DeviceFarm.ListRuns,

    -- ** GetUpload
    module Network.AWS.DeviceFarm.GetUpload,

    -- ** GetTestGridProject
    module Network.AWS.DeviceFarm.GetTestGridProject,

    -- ** ListDevicePools (Paginated)
    module Network.AWS.DeviceFarm.ListDevicePools,

    -- ** GetOfferingStatus (Paginated)
    module Network.AWS.DeviceFarm.GetOfferingStatus,

    -- ** DeleteUpload
    module Network.AWS.DeviceFarm.DeleteUpload,

    -- ** ListUploads (Paginated)
    module Network.AWS.DeviceFarm.ListUploads,

    -- ** CreateRemoteAccessSession
    module Network.AWS.DeviceFarm.CreateRemoteAccessSession,

    -- ** UpdateUpload
    module Network.AWS.DeviceFarm.UpdateUpload,

    -- ** ListTestGridProjects
    module Network.AWS.DeviceFarm.ListTestGridProjects,

    -- ** ListArtifacts (Paginated)
    module Network.AWS.DeviceFarm.ListArtifacts,

    -- ** ListRemoteAccessSessions (Paginated)
    module Network.AWS.DeviceFarm.ListRemoteAccessSessions,

    -- ** GetRun
    module Network.AWS.DeviceFarm.GetRun,

    -- ** GetDeviceInstance
    module Network.AWS.DeviceFarm.GetDeviceInstance,

    -- ** ListSuites (Paginated)
    module Network.AWS.DeviceFarm.ListSuites,

    -- ** StopJob
    module Network.AWS.DeviceFarm.StopJob,

    -- ** ListTests (Paginated)
    module Network.AWS.DeviceFarm.ListTests,

    -- ** DeleteRemoteAccessSession
    module Network.AWS.DeviceFarm.DeleteRemoteAccessSession,

    -- ** DeleteProject
    module Network.AWS.DeviceFarm.DeleteProject,

    -- ** GetInstanceProfile
    module Network.AWS.DeviceFarm.GetInstanceProfile,

    -- ** UpdateProject
    module Network.AWS.DeviceFarm.UpdateProject,

    -- ** ListTestGridSessions
    module Network.AWS.DeviceFarm.ListTestGridSessions,

    -- ** ListUniqueProblems (Paginated)
    module Network.AWS.DeviceFarm.ListUniqueProblems,

    -- ** DeleteVPCEConfiguration
    module Network.AWS.DeviceFarm.DeleteVPCEConfiguration,

    -- ** UpdateVPCEConfiguration
    module Network.AWS.DeviceFarm.UpdateVPCEConfiguration,

    -- ** ListVPCEConfigurations (Paginated)
    module Network.AWS.DeviceFarm.ListVPCEConfigurations,

    -- ** GetVPCEConfiguration
    module Network.AWS.DeviceFarm.GetVPCEConfiguration,

    -- ** ListJobs (Paginated)
    module Network.AWS.DeviceFarm.ListJobs,

    -- ** GetTestGridSession
    module Network.AWS.DeviceFarm.GetTestGridSession,

    -- ** PurchaseOffering
    module Network.AWS.DeviceFarm.PurchaseOffering,

    -- ** GetProject
    module Network.AWS.DeviceFarm.GetProject,

    -- ** ListInstanceProfiles (Paginated)
    module Network.AWS.DeviceFarm.ListInstanceProfiles,

    -- ** GetNetworkProfile
    module Network.AWS.DeviceFarm.GetNetworkProfile,

    -- ** UpdateInstanceProfile
    module Network.AWS.DeviceFarm.UpdateInstanceProfile,

    -- ** DeleteInstanceProfile
    module Network.AWS.DeviceFarm.DeleteInstanceProfile,

    -- ** RenewOffering
    module Network.AWS.DeviceFarm.RenewOffering,

    -- ** GetRemoteAccessSession
    module Network.AWS.DeviceFarm.GetRemoteAccessSession,

    -- ** GetSuite
    module Network.AWS.DeviceFarm.GetSuite,

    -- ** DeleteRun
    module Network.AWS.DeviceFarm.DeleteRun,

    -- ** GetTest
    module Network.AWS.DeviceFarm.GetTest,

    -- ** DeleteDevicePool
    module Network.AWS.DeviceFarm.DeleteDevicePool,

    -- ** ListOfferingTransactions (Paginated)
    module Network.AWS.DeviceFarm.ListOfferingTransactions,

    -- ** UpdateDevicePool
    module Network.AWS.DeviceFarm.UpdateDevicePool,

    -- ** UpdateTestGridProject
    module Network.AWS.DeviceFarm.UpdateTestGridProject,

    -- ** ListTagsForResource
    module Network.AWS.DeviceFarm.ListTagsForResource,

    -- ** DeleteTestGridProject
    module Network.AWS.DeviceFarm.DeleteTestGridProject,

    -- ** ListOfferingPromotions (Paginated)
    module Network.AWS.DeviceFarm.ListOfferingPromotions,

    -- ** GetDevicePool
    module Network.AWS.DeviceFarm.GetDevicePool,

    -- ** GetAccountSettings
    module Network.AWS.DeviceFarm.GetAccountSettings,

    -- * Types

    -- ** ArtifactCategory
    ArtifactCategory (..),

    -- ** ArtifactType
    ArtifactType (..),

    -- ** BillingMethod
    BillingMethod (..),

    -- ** CurrencyCode
    CurrencyCode (..),

    -- ** DeviceAttribute
    DeviceAttribute (..),

    -- ** DeviceAvailability
    DeviceAvailability (..),

    -- ** DeviceFilterAttribute
    DeviceFilterAttribute (..),

    -- ** DeviceFormFactor
    DeviceFormFactor (..),

    -- ** DevicePlatform
    DevicePlatform (..),

    -- ** DevicePoolType
    DevicePoolType (..),

    -- ** ExecutionResult
    ExecutionResult (..),

    -- ** ExecutionResultCode
    ExecutionResultCode (..),

    -- ** ExecutionStatus
    ExecutionStatus (..),

    -- ** InstanceStatus
    InstanceStatus (..),

    -- ** InteractionMode
    InteractionMode (..),

    -- ** NetworkProfileType
    NetworkProfileType (..),

    -- ** OfferingTransactionType
    OfferingTransactionType (..),

    -- ** OfferingType
    OfferingType (..),

    -- ** RecurringChargeFrequency
    RecurringChargeFrequency (..),

    -- ** RuleOperator
    RuleOperator (..),

    -- ** SampleType
    SampleType (..),

    -- ** TestGridSessionArtifactCategory
    TestGridSessionArtifactCategory (..),

    -- ** TestGridSessionArtifactType
    TestGridSessionArtifactType (..),

    -- ** TestGridSessionStatus
    TestGridSessionStatus (..),

    -- ** TestType
    TestType (..),

    -- ** UploadCategory
    UploadCategory (..),

    -- ** UploadStatus
    UploadStatus (..),

    -- ** UploadType
    UploadType (..),

    -- ** AccountSettings
    AccountSettings,
    accountSettings,
    asAwsAccountNumber,
    asMaxSlots,
    asTrialMinutes,
    asSkipAppResign,
    asMaxJobTimeoutMinutes,
    asDefaultJobTimeoutMinutes,
    asUnmeteredDevices,
    asUnmeteredRemoteAccessDevices,

    -- ** Artifact
    Artifact,
    artifact,
    aArn,
    aName,
    aExtension,
    aUrl,
    aType,

    -- ** CPU
    CPU,
    cpu,
    cpuArchitecture,
    cpuFrequency,
    cpuClock,

    -- ** Counters
    Counters,
    counters,
    cErrored,
    cWarned,
    cPassed,
    cTotal,
    cStopped,
    cFailed,
    cSkipped,

    -- ** CreateRemoteAccessSessionConfiguration
    CreateRemoteAccessSessionConfiguration,
    createRemoteAccessSessionConfiguration,
    crascBillingMethod,
    crascVpceConfigurationARNs,

    -- ** CustomerArtifactPaths
    CustomerArtifactPaths,
    customerArtifactPaths,
    capDeviceHostPaths,
    capIosPaths,
    capAndroidPaths,

    -- ** Device
    Device,
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

    -- ** DeviceFilter
    DeviceFilter,
    deviceFilter,
    dfOperator,
    dfValues,
    dfAttribute,

    -- ** DeviceInstance
    DeviceInstance,
    deviceInstance,
    diUdid,
    diStatus,
    diDeviceARN,
    diArn,
    diLabels,
    diInstanceProfile,

    -- ** DeviceMinutes
    DeviceMinutes,
    deviceMinutes,
    dmUnmetered,
    dmMetered,
    dmTotal,

    -- ** DevicePool
    DevicePool,
    devicePool,
    dpRules,
    dpArn,
    dpName,
    dpMaxDevices,
    dpDescription,
    dpType,

    -- ** DevicePoolCompatibilityResult
    DevicePoolCompatibilityResult,
    devicePoolCompatibilityResult,
    dpcrIncompatibilityMessages,
    dpcrCompatible,
    dpcrDevice,

    -- ** DeviceSelectionConfiguration
    DeviceSelectionConfiguration,
    deviceSelectionConfiguration,
    dscFilters,
    dscMaxDevices,

    -- ** DeviceSelectionResult
    DeviceSelectionResult,
    deviceSelectionResult,
    dsrMaxDevices,
    dsrFilters,
    dsrMatchedDevicesCount,

    -- ** ExecutionConfiguration
    ExecutionConfiguration,
    executionConfiguration,
    ecAppPackagesCleanup,
    ecVideoCapture,
    ecSkipAppResign,
    ecJobTimeoutMinutes,
    ecAccountsCleanup,

    -- ** IncompatibilityMessage
    IncompatibilityMessage,
    incompatibilityMessage,
    imMessage,
    imType,

    -- ** InstanceProfile
    InstanceProfile,
    instanceProfile,
    ipExcludeAppPackagesFromCleanup,
    ipArn,
    ipName,
    ipDescription,
    ipRebootAfterUse,
    ipPackageCleanup,

    -- ** Job
    Job,
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

    -- ** Location
    Location,
    location,
    lLatitude,
    lLongitude,

    -- ** MonetaryAmount
    MonetaryAmount,
    monetaryAmount,
    maAmount,
    maCurrencyCode,

    -- ** NetworkProfile
    NetworkProfile,
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

    -- ** Offering
    Offering,
    offering,
    oPlatform,
    oId,
    oDescription,
    oRecurringCharges,
    oType,

    -- ** OfferingPromotion
    OfferingPromotion,
    offeringPromotion,
    opId,
    opDescription,

    -- ** OfferingStatus
    OfferingStatus,
    offeringStatus,
    osQuantity,
    osOffering,
    osEffectiveOn,
    osType,

    -- ** OfferingTransaction
    OfferingTransaction,
    offeringTransaction,
    otOfferingStatus,
    otCreatedOn,
    otCost,
    otTransactionId,
    otOfferingPromotionId,

    -- ** Problem
    Problem,
    problem,
    pJob,
    pResult,
    pMessage,
    pDevice,
    pRun,
    pTest,
    pSuite,

    -- ** ProblemDetail
    ProblemDetail,
    problemDetail,
    pdArn,
    pdName,

    -- ** Project
    Project,
    project,
    pArn,
    pName,
    pCreated,
    pDefaultJobTimeoutMinutes,

    -- ** Radios
    Radios,
    radios,
    rGps,
    rWifi,
    rBluetooth,
    rNfc,

    -- ** RecurringCharge
    RecurringCharge,
    recurringCharge,
    rcCost,
    rcFrequency,

    -- ** RemoteAccessSession
    RemoteAccessSession,
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

    -- ** Resolution
    Resolution,
    resolution,
    rHeight,
    rWidth,

    -- ** Rule
    Rule,
    rule,
    rOperator,
    rAttribute,
    rValue,

    -- ** Run
    Run,
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

    -- ** Sample
    Sample,
    sample,
    sArn,
    sUrl,
    sType,

    -- ** ScheduleRunConfiguration
    ScheduleRunConfiguration,
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

    -- ** ScheduleRunTest
    ScheduleRunTest,
    scheduleRunTest,
    srtTestPackageARN,
    srtTestSpecARN,
    srtFilter,
    srtParameters,
    srtType,

    -- ** Suite
    Suite,
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

    -- ** Tag
    Tag,
    tag,
    tagKey,
    tagValue,

    -- ** Test
    Test,
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

    -- ** TestGridProject
    TestGridProject,
    testGridProject,
    tgpArn,
    tgpName,
    tgpDescription,
    tgpCreated,

    -- ** TestGridSession
    TestGridSession,
    testGridSession,
    tgsStatus,
    tgsArn,
    tgsSeleniumProperties,
    tgsBillingMinutes,
    tgsEnded,
    tgsCreated,

    -- ** TestGridSessionAction
    TestGridSessionAction,
    testGridSessionAction,
    tgsaStarted,
    tgsaDuration,
    tgsaStatusCode,
    tgsaAction,
    tgsaRequestMethod,

    -- ** TestGridSessionArtifact
    TestGridSessionArtifact,
    testGridSessionArtifact,
    tgsaFilename,
    tgsaUrl,
    tgsaType,

    -- ** TrialMinutes
    TrialMinutes,
    trialMinutes,
    tmTotal,
    tmRemaining,

    -- ** UniqueProblem
    UniqueProblem,
    uniqueProblem,
    upMessage,
    upProblems,

    -- ** Upload
    Upload,
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

    -- ** VPCEConfiguration
    VPCEConfiguration,
    vpcEConfiguration,
    vecVpceConfigurationName,
    vecVpceConfigurationDescription,
    vecArn,
    vecServiceDNSName,
    vecVpceServiceName,
  )
where

import Network.AWS.DeviceFarm.CreateDevicePool
import Network.AWS.DeviceFarm.CreateInstanceProfile
import Network.AWS.DeviceFarm.CreateNetworkProfile
import Network.AWS.DeviceFarm.CreateProject
import Network.AWS.DeviceFarm.CreateRemoteAccessSession
import Network.AWS.DeviceFarm.CreateTestGridProject
import Network.AWS.DeviceFarm.CreateTestGridURL
import Network.AWS.DeviceFarm.CreateUpload
import Network.AWS.DeviceFarm.CreateVPCEConfiguration
import Network.AWS.DeviceFarm.DeleteDevicePool
import Network.AWS.DeviceFarm.DeleteInstanceProfile
import Network.AWS.DeviceFarm.DeleteNetworkProfile
import Network.AWS.DeviceFarm.DeleteProject
import Network.AWS.DeviceFarm.DeleteRemoteAccessSession
import Network.AWS.DeviceFarm.DeleteRun
import Network.AWS.DeviceFarm.DeleteTestGridProject
import Network.AWS.DeviceFarm.DeleteUpload
import Network.AWS.DeviceFarm.DeleteVPCEConfiguration
import Network.AWS.DeviceFarm.GetAccountSettings
import Network.AWS.DeviceFarm.GetDevice
import Network.AWS.DeviceFarm.GetDeviceInstance
import Network.AWS.DeviceFarm.GetDevicePool
import Network.AWS.DeviceFarm.GetDevicePoolCompatibility
import Network.AWS.DeviceFarm.GetInstanceProfile
import Network.AWS.DeviceFarm.GetJob
import Network.AWS.DeviceFarm.GetNetworkProfile
import Network.AWS.DeviceFarm.GetOfferingStatus
import Network.AWS.DeviceFarm.GetProject
import Network.AWS.DeviceFarm.GetRemoteAccessSession
import Network.AWS.DeviceFarm.GetRun
import Network.AWS.DeviceFarm.GetSuite
import Network.AWS.DeviceFarm.GetTest
import Network.AWS.DeviceFarm.GetTestGridProject
import Network.AWS.DeviceFarm.GetTestGridSession
import Network.AWS.DeviceFarm.GetUpload
import Network.AWS.DeviceFarm.GetVPCEConfiguration
import Network.AWS.DeviceFarm.InstallToRemoteAccessSession
import Network.AWS.DeviceFarm.ListArtifacts
import Network.AWS.DeviceFarm.ListDeviceInstances
import Network.AWS.DeviceFarm.ListDevicePools
import Network.AWS.DeviceFarm.ListDevices
import Network.AWS.DeviceFarm.ListInstanceProfiles
import Network.AWS.DeviceFarm.ListJobs
import Network.AWS.DeviceFarm.ListNetworkProfiles
import Network.AWS.DeviceFarm.ListOfferingPromotions
import Network.AWS.DeviceFarm.ListOfferingTransactions
import Network.AWS.DeviceFarm.ListOfferings
import Network.AWS.DeviceFarm.ListProjects
import Network.AWS.DeviceFarm.ListRemoteAccessSessions
import Network.AWS.DeviceFarm.ListRuns
import Network.AWS.DeviceFarm.ListSamples
import Network.AWS.DeviceFarm.ListSuites
import Network.AWS.DeviceFarm.ListTagsForResource
import Network.AWS.DeviceFarm.ListTestGridProjects
import Network.AWS.DeviceFarm.ListTestGridSessionActions
import Network.AWS.DeviceFarm.ListTestGridSessionArtifacts
import Network.AWS.DeviceFarm.ListTestGridSessions
import Network.AWS.DeviceFarm.ListTests
import Network.AWS.DeviceFarm.ListUniqueProblems
import Network.AWS.DeviceFarm.ListUploads
import Network.AWS.DeviceFarm.ListVPCEConfigurations
import Network.AWS.DeviceFarm.PurchaseOffering
import Network.AWS.DeviceFarm.RenewOffering
import Network.AWS.DeviceFarm.ScheduleRun
import Network.AWS.DeviceFarm.StopJob
import Network.AWS.DeviceFarm.StopRemoteAccessSession
import Network.AWS.DeviceFarm.StopRun
import Network.AWS.DeviceFarm.TagResource
import Network.AWS.DeviceFarm.Types
import Network.AWS.DeviceFarm.UntagResource
import Network.AWS.DeviceFarm.UpdateDeviceInstance
import Network.AWS.DeviceFarm.UpdateDevicePool
import Network.AWS.DeviceFarm.UpdateInstanceProfile
import Network.AWS.DeviceFarm.UpdateNetworkProfile
import Network.AWS.DeviceFarm.UpdateProject
import Network.AWS.DeviceFarm.UpdateTestGridProject
import Network.AWS.DeviceFarm.UpdateUpload
import Network.AWS.DeviceFarm.UpdateVPCEConfiguration
import Network.AWS.DeviceFarm.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'DeviceFarm'.

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
