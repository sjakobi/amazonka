{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.Endpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.Endpoint where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.DataCaptureConfigSummary
import Network.AWS.SageMaker.Types.EndpointStatus
import Network.AWS.SageMaker.Types.MonitoringSchedule
import Network.AWS.SageMaker.Types.ProductionVariantSummary
import Network.AWS.SageMaker.Types.Tag

-- | A hosted endpoint for real-time inference.
--
--
--
-- /See:/ 'endpoint' smart constructor.
data Endpoint = Endpoint'
  { _endProductionVariants ::
      !(Maybe (List1 ProductionVariantSummary)),
    _endMonitoringSchedules ::
      !(Maybe [MonitoringSchedule]),
    _endFailureReason :: !(Maybe Text),
    _endTags :: !(Maybe [Tag]),
    _endDataCaptureConfig ::
      !(Maybe DataCaptureConfigSummary),
    _endEndpointName :: !Text,
    _endEndpointARN :: !Text,
    _endEndpointConfigName :: !Text,
    _endEndpointStatus :: !EndpointStatus,
    _endCreationTime :: !POSIX,
    _endLastModifiedTime :: !POSIX
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Endpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'endProductionVariants' - A list of the production variants hosted on the endpoint. Each production variant is a model.
--
-- * 'endMonitoringSchedules' - A list of monitoring schedules for the endpoint. For information about model monitoring, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html Amazon SageMaker Model Monitor> .
--
-- * 'endFailureReason' - If the endpoint failed, the reason it failed.
--
-- * 'endTags' - A list of the tags associated with the endpoint. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
--
-- * 'endDataCaptureConfig' - Undocumented member.
--
-- * 'endEndpointName' - The name of the endpoint.
--
-- * 'endEndpointARN' - The Amazon Resource Name (ARN) of the endpoint.
--
-- * 'endEndpointConfigName' - The endpoint configuration associated with the endpoint.
--
-- * 'endEndpointStatus' - The status of the endpoint.
--
-- * 'endCreationTime' - The time that the endpoint was created.
--
-- * 'endLastModifiedTime' - The last time the endpoint was modified.
endpoint ::
  -- | 'endEndpointName'
  Text ->
  -- | 'endEndpointARN'
  Text ->
  -- | 'endEndpointConfigName'
  Text ->
  -- | 'endEndpointStatus'
  EndpointStatus ->
  -- | 'endCreationTime'
  UTCTime ->
  -- | 'endLastModifiedTime'
  UTCTime ->
  Endpoint
endpoint
  pEndpointName_
  pEndpointARN_
  pEndpointConfigName_
  pEndpointStatus_
  pCreationTime_
  pLastModifiedTime_ =
    Endpoint'
      { _endProductionVariants = Nothing,
        _endMonitoringSchedules = Nothing,
        _endFailureReason = Nothing,
        _endTags = Nothing,
        _endDataCaptureConfig = Nothing,
        _endEndpointName = pEndpointName_,
        _endEndpointARN = pEndpointARN_,
        _endEndpointConfigName = pEndpointConfigName_,
        _endEndpointStatus = pEndpointStatus_,
        _endCreationTime = _Time # pCreationTime_,
        _endLastModifiedTime = _Time # pLastModifiedTime_
      }

-- | A list of the production variants hosted on the endpoint. Each production variant is a model.
endProductionVariants :: Lens' Endpoint (Maybe (NonEmpty ProductionVariantSummary))
endProductionVariants = lens _endProductionVariants (\s a -> s {_endProductionVariants = a}) . mapping _List1

-- | A list of monitoring schedules for the endpoint. For information about model monitoring, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html Amazon SageMaker Model Monitor> .
endMonitoringSchedules :: Lens' Endpoint [MonitoringSchedule]
endMonitoringSchedules = lens _endMonitoringSchedules (\s a -> s {_endMonitoringSchedules = a}) . _Default . _Coerce

-- | If the endpoint failed, the reason it failed.
endFailureReason :: Lens' Endpoint (Maybe Text)
endFailureReason = lens _endFailureReason (\s a -> s {_endFailureReason = a})

-- | A list of the tags associated with the endpoint. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
endTags :: Lens' Endpoint [Tag]
endTags = lens _endTags (\s a -> s {_endTags = a}) . _Default . _Coerce

-- | Undocumented member.
endDataCaptureConfig :: Lens' Endpoint (Maybe DataCaptureConfigSummary)
endDataCaptureConfig = lens _endDataCaptureConfig (\s a -> s {_endDataCaptureConfig = a})

-- | The name of the endpoint.
endEndpointName :: Lens' Endpoint Text
endEndpointName = lens _endEndpointName (\s a -> s {_endEndpointName = a})

-- | The Amazon Resource Name (ARN) of the endpoint.
endEndpointARN :: Lens' Endpoint Text
endEndpointARN = lens _endEndpointARN (\s a -> s {_endEndpointARN = a})

-- | The endpoint configuration associated with the endpoint.
endEndpointConfigName :: Lens' Endpoint Text
endEndpointConfigName = lens _endEndpointConfigName (\s a -> s {_endEndpointConfigName = a})

-- | The status of the endpoint.
endEndpointStatus :: Lens' Endpoint EndpointStatus
endEndpointStatus = lens _endEndpointStatus (\s a -> s {_endEndpointStatus = a})

-- | The time that the endpoint was created.
endCreationTime :: Lens' Endpoint UTCTime
endCreationTime = lens _endCreationTime (\s a -> s {_endCreationTime = a}) . _Time

-- | The last time the endpoint was modified.
endLastModifiedTime :: Lens' Endpoint UTCTime
endLastModifiedTime = lens _endLastModifiedTime (\s a -> s {_endLastModifiedTime = a}) . _Time

instance FromJSON Endpoint where
  parseJSON =
    withObject
      "Endpoint"
      ( \x ->
          Endpoint'
            <$> (x .:? "ProductionVariants")
            <*> (x .:? "MonitoringSchedules" .!= mempty)
            <*> (x .:? "FailureReason")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "DataCaptureConfig")
            <*> (x .: "EndpointName")
            <*> (x .: "EndpointArn")
            <*> (x .: "EndpointConfigName")
            <*> (x .: "EndpointStatus")
            <*> (x .: "CreationTime")
            <*> (x .: "LastModifiedTime")
      )

instance Hashable Endpoint

instance NFData Endpoint
