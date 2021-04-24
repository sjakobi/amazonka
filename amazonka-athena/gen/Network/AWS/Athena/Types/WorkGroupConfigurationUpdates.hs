{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.WorkGroupConfigurationUpdates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.WorkGroupConfigurationUpdates where

import Network.AWS.Athena.Types.EngineVersion
import Network.AWS.Athena.Types.ResultConfigurationUpdates
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The configuration information that will be updated for this workgroup, which includes the location in Amazon S3 where query results are stored, the encryption option, if any, used for query results, whether the Amazon CloudWatch Metrics are enabled for the workgroup, whether the workgroup settings override the client-side settings, and the data usage limit for the amount of bytes scanned per query, if it is specified.
--
--
--
-- /See:/ 'workGroupConfigurationUpdates' smart constructor.
data WorkGroupConfigurationUpdates = WorkGroupConfigurationUpdates'
  { _wgcuBytesScannedCutoffPerQuery ::
      !( Maybe
           Nat
       ),
    _wgcuResultConfigurationUpdates ::
      !( Maybe
           ResultConfigurationUpdates
       ),
    _wgcuPublishCloudWatchMetricsEnabled ::
      !( Maybe
           Bool
       ),
    _wgcuEnforceWorkGroupConfiguration ::
      !( Maybe
           Bool
       ),
    _wgcuRequesterPaysEnabled ::
      !( Maybe
           Bool
       ),
    _wgcuRemoveBytesScannedCutoffPerQuery ::
      !( Maybe
           Bool
       ),
    _wgcuEngineVersion ::
      !( Maybe
           EngineVersion
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'WorkGroupConfigurationUpdates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wgcuBytesScannedCutoffPerQuery' - The upper limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan.
--
-- * 'wgcuResultConfigurationUpdates' - The result configuration information about the queries in this workgroup that will be updated. Includes the updated results location and an updated option for encrypting query results.
--
-- * 'wgcuPublishCloudWatchMetricsEnabled' - Indicates whether this workgroup enables publishing metrics to Amazon CloudWatch.
--
-- * 'wgcuEnforceWorkGroupConfiguration' - If set to "true", the settings for the workgroup override client-side settings. If set to "false" client-side settings are used. For more information, see <https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html Workgroup Settings Override Client-Side Settings> .
--
-- * 'wgcuRequesterPaysEnabled' - If set to @true@ , allows members assigned to a workgroup to specify Amazon S3 Requester Pays buckets in queries. If set to @false@ , workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error. The default is @false@ . For more information about Requester Pays buckets, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html Requester Pays Buckets> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- * 'wgcuRemoveBytesScannedCutoffPerQuery' - Indicates that the data usage control limit per query is removed. 'WorkGroupConfiguration$BytesScannedCutoffPerQuery'
--
-- * 'wgcuEngineVersion' - The engine version requested when a workgroup is updated. After the update, all queries on the workgroup run on the requested engine version. If no value was previously set, the default is Auto. Queries on the @AmazonAthenaPreviewFunctionality@ workgroup run on the preview engine regardless of this setting.
workGroupConfigurationUpdates ::
  WorkGroupConfigurationUpdates
workGroupConfigurationUpdates =
  WorkGroupConfigurationUpdates'
    { _wgcuBytesScannedCutoffPerQuery =
        Nothing,
      _wgcuResultConfigurationUpdates = Nothing,
      _wgcuPublishCloudWatchMetricsEnabled =
        Nothing,
      _wgcuEnforceWorkGroupConfiguration = Nothing,
      _wgcuRequesterPaysEnabled = Nothing,
      _wgcuRemoveBytesScannedCutoffPerQuery =
        Nothing,
      _wgcuEngineVersion = Nothing
    }

-- | The upper limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan.
wgcuBytesScannedCutoffPerQuery :: Lens' WorkGroupConfigurationUpdates (Maybe Natural)
wgcuBytesScannedCutoffPerQuery = lens _wgcuBytesScannedCutoffPerQuery (\s a -> s {_wgcuBytesScannedCutoffPerQuery = a}) . mapping _Nat

-- | The result configuration information about the queries in this workgroup that will be updated. Includes the updated results location and an updated option for encrypting query results.
wgcuResultConfigurationUpdates :: Lens' WorkGroupConfigurationUpdates (Maybe ResultConfigurationUpdates)
wgcuResultConfigurationUpdates = lens _wgcuResultConfigurationUpdates (\s a -> s {_wgcuResultConfigurationUpdates = a})

-- | Indicates whether this workgroup enables publishing metrics to Amazon CloudWatch.
wgcuPublishCloudWatchMetricsEnabled :: Lens' WorkGroupConfigurationUpdates (Maybe Bool)
wgcuPublishCloudWatchMetricsEnabled = lens _wgcuPublishCloudWatchMetricsEnabled (\s a -> s {_wgcuPublishCloudWatchMetricsEnabled = a})

-- | If set to "true", the settings for the workgroup override client-side settings. If set to "false" client-side settings are used. For more information, see <https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html Workgroup Settings Override Client-Side Settings> .
wgcuEnforceWorkGroupConfiguration :: Lens' WorkGroupConfigurationUpdates (Maybe Bool)
wgcuEnforceWorkGroupConfiguration = lens _wgcuEnforceWorkGroupConfiguration (\s a -> s {_wgcuEnforceWorkGroupConfiguration = a})

-- | If set to @true@ , allows members assigned to a workgroup to specify Amazon S3 Requester Pays buckets in queries. If set to @false@ , workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error. The default is @false@ . For more information about Requester Pays buckets, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html Requester Pays Buckets> in the /Amazon Simple Storage Service Developer Guide/ .
wgcuRequesterPaysEnabled :: Lens' WorkGroupConfigurationUpdates (Maybe Bool)
wgcuRequesterPaysEnabled = lens _wgcuRequesterPaysEnabled (\s a -> s {_wgcuRequesterPaysEnabled = a})

-- | Indicates that the data usage control limit per query is removed. 'WorkGroupConfiguration$BytesScannedCutoffPerQuery'
wgcuRemoveBytesScannedCutoffPerQuery :: Lens' WorkGroupConfigurationUpdates (Maybe Bool)
wgcuRemoveBytesScannedCutoffPerQuery = lens _wgcuRemoveBytesScannedCutoffPerQuery (\s a -> s {_wgcuRemoveBytesScannedCutoffPerQuery = a})

-- | The engine version requested when a workgroup is updated. After the update, all queries on the workgroup run on the requested engine version. If no value was previously set, the default is Auto. Queries on the @AmazonAthenaPreviewFunctionality@ workgroup run on the preview engine regardless of this setting.
wgcuEngineVersion :: Lens' WorkGroupConfigurationUpdates (Maybe EngineVersion)
wgcuEngineVersion = lens _wgcuEngineVersion (\s a -> s {_wgcuEngineVersion = a})

instance Hashable WorkGroupConfigurationUpdates

instance NFData WorkGroupConfigurationUpdates

instance ToJSON WorkGroupConfigurationUpdates where
  toJSON WorkGroupConfigurationUpdates' {..} =
    object
      ( catMaybes
          [ ("BytesScannedCutoffPerQuery" .=)
              <$> _wgcuBytesScannedCutoffPerQuery,
            ("ResultConfigurationUpdates" .=)
              <$> _wgcuResultConfigurationUpdates,
            ("PublishCloudWatchMetricsEnabled" .=)
              <$> _wgcuPublishCloudWatchMetricsEnabled,
            ("EnforceWorkGroupConfiguration" .=)
              <$> _wgcuEnforceWorkGroupConfiguration,
            ("RequesterPaysEnabled" .=)
              <$> _wgcuRequesterPaysEnabled,
            ("RemoveBytesScannedCutoffPerQuery" .=)
              <$> _wgcuRemoveBytesScannedCutoffPerQuery,
            ("EngineVersion" .=) <$> _wgcuEngineVersion
          ]
      )
