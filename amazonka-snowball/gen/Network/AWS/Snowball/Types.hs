{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types
  ( -- * Service Configuration
    snowball,

    -- * Errors
    _InvalidResourceException,
    _InvalidInputCombinationException,
    _ClusterLimitExceededException,
    _InvalidAddressException,
    _InvalidNextTokenException,
    _ReturnShippingLabelAlreadyExistsException,
    _UnsupportedAddressException,
    _ConflictException,
    _EC2RequestFailedException,
    _InvalidJobStateException,
    _KMSRequestFailedException,

    -- * ClusterState
    ClusterState (..),

    -- * JobState
    JobState (..),

    -- * JobType
    JobType (..),

    -- * ShipmentState
    ShipmentState (..),

    -- * ShippingLabelStatus
    ShippingLabelStatus (..),

    -- * ShippingOption
    ShippingOption (..),

    -- * SnowballCapacity
    SnowballCapacity (..),

    -- * SnowballType
    SnowballType (..),

    -- * Address
    Address (..),
    address,
    aPhoneNumber,
    aCompany,
    aIsRestricted,
    aPostalCode,
    aStreet1,
    aLandmark,
    aCity,
    aName,
    aAddressId,
    aStreet2,
    aStateOrProvince,
    aCountry,
    aPrefectureOrDistrict,
    aStreet3,

    -- * ClusterListEntry
    ClusterListEntry (..),
    clusterListEntry,
    cleClusterId,
    cleCreationDate,
    cleDescription,
    cleClusterState,

    -- * ClusterMetadata
    ClusterMetadata (..),
    clusterMetadata,
    cmClusterId,
    cmRoleARN,
    cmShippingOption,
    cmCreationDate,
    cmKMSKeyARN,
    cmJobType,
    cmResources,
    cmTaxDocuments,
    cmSnowballType,
    cmDescription,
    cmAddressId,
    cmForwardingAddressId,
    cmNotification,
    cmClusterState,

    -- * CompatibleImage
    CompatibleImage (..),
    compatibleImage,
    ciAMIId,
    ciName,

    -- * DataTransfer
    DataTransfer (..),
    dataTransfer,
    dtTotalObjects,
    dtBytesTransferred,
    dtTotalBytes,
    dtObjectsTransferred,

    -- * DeviceConfiguration
    DeviceConfiguration (..),
    deviceConfiguration,
    dcSnowconeDeviceConfiguration,

    -- * EC2AMIResource
    EC2AMIResource (..),
    ec2AMIResource,
    earSnowballAMIId,
    earAMIId,

    -- * EventTriggerDefinition
    EventTriggerDefinition (..),
    eventTriggerDefinition,
    etdEventResourceARN,

    -- * INDTaxDocuments
    INDTaxDocuments (..),
    iNDTaxDocuments,
    indtdGSTIN,

    -- * JobListEntry
    JobListEntry (..),
    jobListEntry,
    jleIsMaster,
    jleJobState,
    jleCreationDate,
    jleJobType,
    jleSnowballType,
    jleDescription,
    jleJobId,

    -- * JobLogs
    JobLogs (..),
    jobLogs,
    jlJobCompletionReportURI,
    jlJobSuccessLogURI,
    jlJobFailureLogURI,

    -- * JobMetadata
    JobMetadata (..),
    jobMetadata,
    jmClusterId,
    jmRoleARN,
    jmJobState,
    jmDeviceConfiguration,
    jmCreationDate,
    jmKMSKeyARN,
    jmJobType,
    jmResources,
    jmTaxDocuments,
    jmSnowballCapacityPreference,
    jmSnowballType,
    jmDataTransferProgress,
    jmDescription,
    jmAddressId,
    jmForwardingAddressId,
    jmShippingDetails,
    jmNotification,
    jmJobLogInfo,
    jmJobId,

    -- * JobResource
    JobResource (..),
    jobResource,
    jrS3Resources,
    jrEC2AMIResources,
    jrLambdaResources,

    -- * KeyRange
    KeyRange (..),
    keyRange,
    krEndMarker,
    krBeginMarker,

    -- * LambdaResource
    LambdaResource (..),
    lambdaResource,
    lrEventTriggers,
    lrLambdaARN,

    -- * Notification
    Notification (..),
    notification,
    nJobStatesToNotify,
    nNotifyAll,
    nSNSTopicARN,

    -- * S3Resource
    S3Resource (..),
    s3Resource,
    srBucketARN,
    srKeyRange,

    -- * Shipment
    Shipment (..),
    shipment,
    sTrackingNumber,
    sStatus,

    -- * ShippingDetails
    ShippingDetails (..),
    shippingDetails,
    sdShippingOption,
    sdOutboundShipment,
    sdInboundShipment,

    -- * SnowconeDeviceConfiguration
    SnowconeDeviceConfiguration (..),
    snowconeDeviceConfiguration,
    sdcWirelessConnection,

    -- * TaxDocuments
    TaxDocuments (..),
    taxDocuments,
    tdIND,

    -- * WirelessConnection
    WirelessConnection (..),
    wirelessConnection,
    wcIsWifiEnabled,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Sign.V4
import Network.AWS.Snowball.Types.Address
import Network.AWS.Snowball.Types.ClusterListEntry
import Network.AWS.Snowball.Types.ClusterMetadata
import Network.AWS.Snowball.Types.ClusterState
import Network.AWS.Snowball.Types.CompatibleImage
import Network.AWS.Snowball.Types.DataTransfer
import Network.AWS.Snowball.Types.DeviceConfiguration
import Network.AWS.Snowball.Types.EC2AMIResource
import Network.AWS.Snowball.Types.EventTriggerDefinition
import Network.AWS.Snowball.Types.INDTaxDocuments
import Network.AWS.Snowball.Types.JobListEntry
import Network.AWS.Snowball.Types.JobLogs
import Network.AWS.Snowball.Types.JobMetadata
import Network.AWS.Snowball.Types.JobResource
import Network.AWS.Snowball.Types.JobState
import Network.AWS.Snowball.Types.JobType
import Network.AWS.Snowball.Types.KeyRange
import Network.AWS.Snowball.Types.LambdaResource
import Network.AWS.Snowball.Types.Notification
import Network.AWS.Snowball.Types.S3Resource
import Network.AWS.Snowball.Types.Shipment
import Network.AWS.Snowball.Types.ShipmentState
import Network.AWS.Snowball.Types.ShippingDetails
import Network.AWS.Snowball.Types.ShippingLabelStatus
import Network.AWS.Snowball.Types.ShippingOption
import Network.AWS.Snowball.Types.SnowballCapacity
import Network.AWS.Snowball.Types.SnowballType
import Network.AWS.Snowball.Types.SnowconeDeviceConfiguration
import Network.AWS.Snowball.Types.TaxDocuments
import Network.AWS.Snowball.Types.WirelessConnection

-- | API version @2016-06-30@ of the Amazon Import/Export Snowball SDK configuration.
snowball :: Service
snowball =
  Service
    { _svcAbbrev = "Snowball",
      _svcSigner = v4,
      _svcPrefix = "snowball",
      _svcVersion = "2016-06-30",
      _svcEndpoint = defaultEndpoint snowball,
      _svcTimeout = Just 70,
      _svcCheck = statusSuccess,
      _svcError = parseJSONError "Snowball",
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

-- | The specified resource can't be found. Check the information you provided in your last request, and try again.
_InvalidResourceException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceException =
  _MatchServiceError
    snowball
    "InvalidResourceException"

-- | Job or cluster creation failed. One or more inputs were invalid. Confirm that the 'CreateClusterRequest$SnowballType' value supports your 'CreateJobRequest$JobType' , and try again.
_InvalidInputCombinationException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInputCombinationException =
  _MatchServiceError
    snowball
    "InvalidInputCombinationException"

-- | Job creation failed. Currently, clusters support five nodes. If you have less than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five notes.
_ClusterLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ClusterLimitExceededException =
  _MatchServiceError
    snowball
    "ClusterLimitExceededException"

-- | The address provided was invalid. Check the address with your region's carrier, and try again.
_InvalidAddressException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAddressException =
  _MatchServiceError
    snowball
    "InvalidAddressException"

-- | The @NextToken@ string was altered unexpectedly, and the operation has stopped. Run the operation without changing the @NextToken@ string, and try again.
_InvalidNextTokenException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextTokenException =
  _MatchServiceError
    snowball
    "InvalidNextTokenException"

-- | You get this exception if you call @CreateReturnShippingLabel@ and a valid return shipping label already exists. In this case, use @DescribeReturnShippingLabel@ to get the url.
_ReturnShippingLabelAlreadyExistsException :: AsError a => Getting (First ServiceError) a ServiceError
_ReturnShippingLabelAlreadyExistsException =
  _MatchServiceError
    snowball
    "ReturnShippingLabelAlreadyExistsException"

-- | The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact AWS Support.
_UnsupportedAddressException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedAddressException =
  _MatchServiceError
    snowball
    "UnsupportedAddressException"

-- | You get this exception when you call @CreateReturnShippingLabel@ more than once when other requests are not completed.
_ConflictException :: AsError a => Getting (First ServiceError) a ServiceError
_ConflictException =
  _MatchServiceError snowball "ConflictException"

-- | Your IAM user lacks the necessary Amazon EC2 permissions to perform the attempted action.
_EC2RequestFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_EC2RequestFailedException =
  _MatchServiceError
    snowball
    "Ec2RequestFailedException"

-- | The action can't be performed because the job's current state doesn't allow that action to be performed.
_InvalidJobStateException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidJobStateException =
  _MatchServiceError
    snowball
    "InvalidJobStateException"

-- | The provided AWS Key Management Service key lacks the permissions to perform the specified 'CreateJob' or 'UpdateJob' action.
_KMSRequestFailedException :: AsError a => Getting (First ServiceError) a ServiceError
_KMSRequestFailedException =
  _MatchServiceError
    snowball
    "KMSRequestFailedException"
