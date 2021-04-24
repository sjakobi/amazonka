{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MachineLearning.Types.RealtimeEndpointInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.RealtimeEndpointInfo where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types.RealtimeEndpointStatus
import Network.AWS.Prelude

-- | Describes the real-time endpoint information for an @MLModel@ .
--
--
--
-- /See:/ 'realtimeEndpointInfo' smart constructor.
data RealtimeEndpointInfo = RealtimeEndpointInfo'
  { _reiCreatedAt ::
      !(Maybe POSIX),
    _reiPeakRequestsPerSecond ::
      !(Maybe Int),
    _reiEndpointStatus ::
      !( Maybe
           RealtimeEndpointStatus
       ),
    _reiEndpointURL ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RealtimeEndpointInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reiCreatedAt' - The time that the request to create the real-time endpoint for the @MLModel@ was received. The time is expressed in epoch time.
--
-- * 'reiPeakRequestsPerSecond' - The maximum processing rate for the real-time endpoint for @MLModel@ , measured in incoming requests per second.
--
-- * 'reiEndpointStatus' - The current status of the real-time endpoint for the @MLModel@ . This element can have one of the following values:      * @NONE@ - Endpoint does not exist or was previously deleted.    * @READY@ - Endpoint is ready to be used for real-time predictions.    * @UPDATING@ - Updating/creating the endpoint.
--
-- * 'reiEndpointURL' - The URI that specifies where to send real-time prediction requests for the @MLModel@ .
realtimeEndpointInfo ::
  RealtimeEndpointInfo
realtimeEndpointInfo =
  RealtimeEndpointInfo'
    { _reiCreatedAt = Nothing,
      _reiPeakRequestsPerSecond = Nothing,
      _reiEndpointStatus = Nothing,
      _reiEndpointURL = Nothing
    }

-- | The time that the request to create the real-time endpoint for the @MLModel@ was received. The time is expressed in epoch time.
reiCreatedAt :: Lens' RealtimeEndpointInfo (Maybe UTCTime)
reiCreatedAt = lens _reiCreatedAt (\s a -> s {_reiCreatedAt = a}) . mapping _Time

-- | The maximum processing rate for the real-time endpoint for @MLModel@ , measured in incoming requests per second.
reiPeakRequestsPerSecond :: Lens' RealtimeEndpointInfo (Maybe Int)
reiPeakRequestsPerSecond = lens _reiPeakRequestsPerSecond (\s a -> s {_reiPeakRequestsPerSecond = a})

-- | The current status of the real-time endpoint for the @MLModel@ . This element can have one of the following values:      * @NONE@ - Endpoint does not exist or was previously deleted.    * @READY@ - Endpoint is ready to be used for real-time predictions.    * @UPDATING@ - Updating/creating the endpoint.
reiEndpointStatus :: Lens' RealtimeEndpointInfo (Maybe RealtimeEndpointStatus)
reiEndpointStatus = lens _reiEndpointStatus (\s a -> s {_reiEndpointStatus = a})

-- | The URI that specifies where to send real-time prediction requests for the @MLModel@ .
reiEndpointURL :: Lens' RealtimeEndpointInfo (Maybe Text)
reiEndpointURL = lens _reiEndpointURL (\s a -> s {_reiEndpointURL = a})

instance FromJSON RealtimeEndpointInfo where
  parseJSON =
    withObject
      "RealtimeEndpointInfo"
      ( \x ->
          RealtimeEndpointInfo'
            <$> (x .:? "CreatedAt")
            <*> (x .:? "PeakRequestsPerSecond")
            <*> (x .:? "EndpointStatus")
            <*> (x .:? "EndpointUrl")
      )

instance Hashable RealtimeEndpointInfo

instance NFData RealtimeEndpointInfo
