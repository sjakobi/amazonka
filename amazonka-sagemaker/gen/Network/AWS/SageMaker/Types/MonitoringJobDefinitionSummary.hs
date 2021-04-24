{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringJobDefinitionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringJobDefinitionSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Summary information about a monitoring job.
--
--
--
-- /See:/ 'monitoringJobDefinitionSummary' smart constructor.
data MonitoringJobDefinitionSummary = MonitoringJobDefinitionSummary'
  { _mjdsMonitoringJobDefinitionName ::
      !Text,
    _mjdsMonitoringJobDefinitionARN ::
      !Text,
    _mjdsCreationTime ::
      !POSIX,
    _mjdsEndpointName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MonitoringJobDefinitionSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mjdsMonitoringJobDefinitionName' - The name of the monitoring job.
--
-- * 'mjdsMonitoringJobDefinitionARN' - The Amazon Resource Name (ARN) of the monitoring job.
--
-- * 'mjdsCreationTime' - The time that the monitoring job was created.
--
-- * 'mjdsEndpointName' - The name of the endpoint that the job monitors.
monitoringJobDefinitionSummary ::
  -- | 'mjdsMonitoringJobDefinitionName'
  Text ->
  -- | 'mjdsMonitoringJobDefinitionARN'
  Text ->
  -- | 'mjdsCreationTime'
  UTCTime ->
  -- | 'mjdsEndpointName'
  Text ->
  MonitoringJobDefinitionSummary
monitoringJobDefinitionSummary
  pMonitoringJobDefinitionName_
  pMonitoringJobDefinitionARN_
  pCreationTime_
  pEndpointName_ =
    MonitoringJobDefinitionSummary'
      { _mjdsMonitoringJobDefinitionName =
          pMonitoringJobDefinitionName_,
        _mjdsMonitoringJobDefinitionARN =
          pMonitoringJobDefinitionARN_,
        _mjdsCreationTime = _Time # pCreationTime_,
        _mjdsEndpointName = pEndpointName_
      }

-- | The name of the monitoring job.
mjdsMonitoringJobDefinitionName :: Lens' MonitoringJobDefinitionSummary Text
mjdsMonitoringJobDefinitionName = lens _mjdsMonitoringJobDefinitionName (\s a -> s {_mjdsMonitoringJobDefinitionName = a})

-- | The Amazon Resource Name (ARN) of the monitoring job.
mjdsMonitoringJobDefinitionARN :: Lens' MonitoringJobDefinitionSummary Text
mjdsMonitoringJobDefinitionARN = lens _mjdsMonitoringJobDefinitionARN (\s a -> s {_mjdsMonitoringJobDefinitionARN = a})

-- | The time that the monitoring job was created.
mjdsCreationTime :: Lens' MonitoringJobDefinitionSummary UTCTime
mjdsCreationTime = lens _mjdsCreationTime (\s a -> s {_mjdsCreationTime = a}) . _Time

-- | The name of the endpoint that the job monitors.
mjdsEndpointName :: Lens' MonitoringJobDefinitionSummary Text
mjdsEndpointName = lens _mjdsEndpointName (\s a -> s {_mjdsEndpointName = a})

instance FromJSON MonitoringJobDefinitionSummary where
  parseJSON =
    withObject
      "MonitoringJobDefinitionSummary"
      ( \x ->
          MonitoringJobDefinitionSummary'
            <$> (x .: "MonitoringJobDefinitionName")
            <*> (x .: "MonitoringJobDefinitionArn")
            <*> (x .: "CreationTime")
            <*> (x .: "EndpointName")
      )

instance Hashable MonitoringJobDefinitionSummary

instance NFData MonitoringJobDefinitionSummary
