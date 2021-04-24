{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.SendDataPoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.SendDataPoint where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents sending statistics data. Each @SendDataPoint@ contains statistics for a 15-minute period of sending activity.
--
--
--
-- /See:/ 'sendDataPoint' smart constructor.
data SendDataPoint = SendDataPoint'
  { _sdpBounces ::
      !(Maybe Integer),
    _sdpComplaints :: !(Maybe Integer),
    _sdpRejects :: !(Maybe Integer),
    _sdpTimestamp :: !(Maybe ISO8601),
    _sdpDeliveryAttempts :: !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SendDataPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdpBounces' - Number of emails that have bounced.
--
-- * 'sdpComplaints' - Number of unwanted emails that were rejected by recipients.
--
-- * 'sdpRejects' - Number of emails rejected by Amazon SES.
--
-- * 'sdpTimestamp' - Time of the data point.
--
-- * 'sdpDeliveryAttempts' - Number of emails that have been sent.
sendDataPoint ::
  SendDataPoint
sendDataPoint =
  SendDataPoint'
    { _sdpBounces = Nothing,
      _sdpComplaints = Nothing,
      _sdpRejects = Nothing,
      _sdpTimestamp = Nothing,
      _sdpDeliveryAttempts = Nothing
    }

-- | Number of emails that have bounced.
sdpBounces :: Lens' SendDataPoint (Maybe Integer)
sdpBounces = lens _sdpBounces (\s a -> s {_sdpBounces = a})

-- | Number of unwanted emails that were rejected by recipients.
sdpComplaints :: Lens' SendDataPoint (Maybe Integer)
sdpComplaints = lens _sdpComplaints (\s a -> s {_sdpComplaints = a})

-- | Number of emails rejected by Amazon SES.
sdpRejects :: Lens' SendDataPoint (Maybe Integer)
sdpRejects = lens _sdpRejects (\s a -> s {_sdpRejects = a})

-- | Time of the data point.
sdpTimestamp :: Lens' SendDataPoint (Maybe UTCTime)
sdpTimestamp = lens _sdpTimestamp (\s a -> s {_sdpTimestamp = a}) . mapping _Time

-- | Number of emails that have been sent.
sdpDeliveryAttempts :: Lens' SendDataPoint (Maybe Integer)
sdpDeliveryAttempts = lens _sdpDeliveryAttempts (\s a -> s {_sdpDeliveryAttempts = a})

instance FromXML SendDataPoint where
  parseXML x =
    SendDataPoint'
      <$> (x .@? "Bounces")
      <*> (x .@? "Complaints")
      <*> (x .@? "Rejects")
      <*> (x .@? "Timestamp")
      <*> (x .@? "DeliveryAttempts")

instance Hashable SendDataPoint

instance NFData SendDataPoint
