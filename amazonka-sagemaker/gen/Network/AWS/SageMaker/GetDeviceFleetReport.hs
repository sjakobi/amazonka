{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.GetDeviceFleetReport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a fleet.
module Network.AWS.SageMaker.GetDeviceFleetReport
  ( -- * Creating a Request
    getDeviceFleetReport,
    GetDeviceFleetReport,

    -- * Request Lenses
    gdfrDeviceFleetName,

    -- * Destructuring the Response
    getDeviceFleetReportResponse,
    GetDeviceFleetReportResponse,

    -- * Response Lenses
    gdfrrrsModelStats,
    gdfrrrsOutputConfig,
    gdfrrrsReportGenerated,
    gdfrrrsDeviceStats,
    gdfrrrsDescription,
    gdfrrrsAgentVersions,
    gdfrrrsResponseStatus,
    gdfrrrsDeviceFleetARN,
    gdfrrrsDeviceFleetName,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'getDeviceFleetReport' smart constructor.
newtype GetDeviceFleetReport = GetDeviceFleetReport'
  { _gdfrDeviceFleetName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetDeviceFleetReport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdfrDeviceFleetName' - The name of the fleet.
getDeviceFleetReport ::
  -- | 'gdfrDeviceFleetName'
  Text ->
  GetDeviceFleetReport
getDeviceFleetReport pDeviceFleetName_ =
  GetDeviceFleetReport'
    { _gdfrDeviceFleetName =
        pDeviceFleetName_
    }

-- | The name of the fleet.
gdfrDeviceFleetName :: Lens' GetDeviceFleetReport Text
gdfrDeviceFleetName = lens _gdfrDeviceFleetName (\s a -> s {_gdfrDeviceFleetName = a})

instance AWSRequest GetDeviceFleetReport where
  type
    Rs GetDeviceFleetReport =
      GetDeviceFleetReportResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          GetDeviceFleetReportResponse'
            <$> (x .?> "ModelStats" .!@ mempty)
            <*> (x .?> "OutputConfig")
            <*> (x .?> "ReportGenerated")
            <*> (x .?> "DeviceStats")
            <*> (x .?> "Description")
            <*> (x .?> "AgentVersions" .!@ mempty)
            <*> (pure (fromEnum s))
            <*> (x .:> "DeviceFleetArn")
            <*> (x .:> "DeviceFleetName")
      )

instance Hashable GetDeviceFleetReport

instance NFData GetDeviceFleetReport

instance ToHeaders GetDeviceFleetReport where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.GetDeviceFleetReport" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDeviceFleetReport where
  toJSON GetDeviceFleetReport' {..} =
    object
      ( catMaybes
          [Just ("DeviceFleetName" .= _gdfrDeviceFleetName)]
      )

instance ToPath GetDeviceFleetReport where
  toPath = const "/"

instance ToQuery GetDeviceFleetReport where
  toQuery = const mempty

-- | /See:/ 'getDeviceFleetReportResponse' smart constructor.
data GetDeviceFleetReportResponse = GetDeviceFleetReportResponse'
  { _gdfrrrsModelStats ::
      !( Maybe
           [EdgeModelStat]
       ),
    _gdfrrrsOutputConfig ::
      !( Maybe
           EdgeOutputConfig
       ),
    _gdfrrrsReportGenerated ::
      !( Maybe
           POSIX
       ),
    _gdfrrrsDeviceStats ::
      !( Maybe
           DeviceStats
       ),
    _gdfrrrsDescription ::
      !(Maybe Text),
    _gdfrrrsAgentVersions ::
      !( Maybe
           [AgentVersion]
       ),
    _gdfrrrsResponseStatus ::
      !Int,
    _gdfrrrsDeviceFleetARN ::
      !Text,
    _gdfrrrsDeviceFleetName ::
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

-- | Creates a value of 'GetDeviceFleetReportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdfrrrsModelStats' - Status of model on device.
--
-- * 'gdfrrrsOutputConfig' - The output configuration for storing sample data collected by the fleet.
--
-- * 'gdfrrrsReportGenerated' - Timestamp of when the report was generated.
--
-- * 'gdfrrrsDeviceStats' - Status of devices.
--
-- * 'gdfrrrsDescription' - Description of the fleet.
--
-- * 'gdfrrrsAgentVersions' - The versions of Edge Manager agent deployed on the fleet.
--
-- * 'gdfrrrsResponseStatus' - -- | The response status code.
--
-- * 'gdfrrrsDeviceFleetARN' - The Amazon Resource Name (ARN) of the device.
--
-- * 'gdfrrrsDeviceFleetName' - The name of the fleet.
getDeviceFleetReportResponse ::
  -- | 'gdfrrrsResponseStatus'
  Int ->
  -- | 'gdfrrrsDeviceFleetARN'
  Text ->
  -- | 'gdfrrrsDeviceFleetName'
  Text ->
  GetDeviceFleetReportResponse
getDeviceFleetReportResponse
  pResponseStatus_
  pDeviceFleetARN_
  pDeviceFleetName_ =
    GetDeviceFleetReportResponse'
      { _gdfrrrsModelStats =
          Nothing,
        _gdfrrrsOutputConfig = Nothing,
        _gdfrrrsReportGenerated = Nothing,
        _gdfrrrsDeviceStats = Nothing,
        _gdfrrrsDescription = Nothing,
        _gdfrrrsAgentVersions = Nothing,
        _gdfrrrsResponseStatus = pResponseStatus_,
        _gdfrrrsDeviceFleetARN = pDeviceFleetARN_,
        _gdfrrrsDeviceFleetName = pDeviceFleetName_
      }

-- | Status of model on device.
gdfrrrsModelStats :: Lens' GetDeviceFleetReportResponse [EdgeModelStat]
gdfrrrsModelStats = lens _gdfrrrsModelStats (\s a -> s {_gdfrrrsModelStats = a}) . _Default . _Coerce

-- | The output configuration for storing sample data collected by the fleet.
gdfrrrsOutputConfig :: Lens' GetDeviceFleetReportResponse (Maybe EdgeOutputConfig)
gdfrrrsOutputConfig = lens _gdfrrrsOutputConfig (\s a -> s {_gdfrrrsOutputConfig = a})

-- | Timestamp of when the report was generated.
gdfrrrsReportGenerated :: Lens' GetDeviceFleetReportResponse (Maybe UTCTime)
gdfrrrsReportGenerated = lens _gdfrrrsReportGenerated (\s a -> s {_gdfrrrsReportGenerated = a}) . mapping _Time

-- | Status of devices.
gdfrrrsDeviceStats :: Lens' GetDeviceFleetReportResponse (Maybe DeviceStats)
gdfrrrsDeviceStats = lens _gdfrrrsDeviceStats (\s a -> s {_gdfrrrsDeviceStats = a})

-- | Description of the fleet.
gdfrrrsDescription :: Lens' GetDeviceFleetReportResponse (Maybe Text)
gdfrrrsDescription = lens _gdfrrrsDescription (\s a -> s {_gdfrrrsDescription = a})

-- | The versions of Edge Manager agent deployed on the fleet.
gdfrrrsAgentVersions :: Lens' GetDeviceFleetReportResponse [AgentVersion]
gdfrrrsAgentVersions = lens _gdfrrrsAgentVersions (\s a -> s {_gdfrrrsAgentVersions = a}) . _Default . _Coerce

-- | -- | The response status code.
gdfrrrsResponseStatus :: Lens' GetDeviceFleetReportResponse Int
gdfrrrsResponseStatus = lens _gdfrrrsResponseStatus (\s a -> s {_gdfrrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the device.
gdfrrrsDeviceFleetARN :: Lens' GetDeviceFleetReportResponse Text
gdfrrrsDeviceFleetARN = lens _gdfrrrsDeviceFleetARN (\s a -> s {_gdfrrrsDeviceFleetARN = a})

-- | The name of the fleet.
gdfrrrsDeviceFleetName :: Lens' GetDeviceFleetReportResponse Text
gdfrrrsDeviceFleetName = lens _gdfrrrsDeviceFleetName (\s a -> s {_gdfrrrsDeviceFleetName = a})

instance NFData GetDeviceFleetReportResponse
