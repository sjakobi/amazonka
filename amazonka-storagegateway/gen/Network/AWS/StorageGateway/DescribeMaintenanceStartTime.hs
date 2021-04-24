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
-- Module      : Network.AWS.StorageGateway.DescribeMaintenanceStartTime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns your gateway's weekly maintenance start time including the day and time of the week. Note that values are in terms of the gateway's time zone.
module Network.AWS.StorageGateway.DescribeMaintenanceStartTime
  ( -- * Creating a Request
    describeMaintenanceStartTime,
    DescribeMaintenanceStartTime,

    -- * Request Lenses
    dmstGatewayARN,

    -- * Destructuring the Response
    describeMaintenanceStartTimeResponse,
    DescribeMaintenanceStartTimeResponse,

    -- * Response Lenses
    dmstrrsDayOfWeek,
    dmstrrsDayOfMonth,
    dmstrrsMinuteOfHour,
    dmstrrsTimezone,
    dmstrrsGatewayARN,
    dmstrrsHourOfDay,
    dmstrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the Amazon Resource Name (ARN) of the gateway.
--
--
--
-- /See:/ 'describeMaintenanceStartTime' smart constructor.
newtype DescribeMaintenanceStartTime = DescribeMaintenanceStartTime'
  { _dmstGatewayARN ::
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

-- | Creates a value of 'DescribeMaintenanceStartTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmstGatewayARN' - Undocumented member.
describeMaintenanceStartTime ::
  -- | 'dmstGatewayARN'
  Text ->
  DescribeMaintenanceStartTime
describeMaintenanceStartTime pGatewayARN_ =
  DescribeMaintenanceStartTime'
    { _dmstGatewayARN =
        pGatewayARN_
    }

-- | Undocumented member.
dmstGatewayARN :: Lens' DescribeMaintenanceStartTime Text
dmstGatewayARN = lens _dmstGatewayARN (\s a -> s {_dmstGatewayARN = a})

instance AWSRequest DescribeMaintenanceStartTime where
  type
    Rs DescribeMaintenanceStartTime =
      DescribeMaintenanceStartTimeResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeMaintenanceStartTimeResponse'
            <$> (x .?> "DayOfWeek")
            <*> (x .?> "DayOfMonth")
            <*> (x .?> "MinuteOfHour")
            <*> (x .?> "Timezone")
            <*> (x .?> "GatewayARN")
            <*> (x .?> "HourOfDay")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMaintenanceStartTime

instance NFData DescribeMaintenanceStartTime

instance ToHeaders DescribeMaintenanceStartTime where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeMaintenanceStartTime" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMaintenanceStartTime where
  toJSON DescribeMaintenanceStartTime' {..} =
    object
      (catMaybes [Just ("GatewayARN" .= _dmstGatewayARN)])

instance ToPath DescribeMaintenanceStartTime where
  toPath = const "/"

instance ToQuery DescribeMaintenanceStartTime where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--     * 'DescribeMaintenanceStartTimeOutput$DayOfMonth'
--
--     * 'DescribeMaintenanceStartTimeOutput$DayOfWeek'
--
--     * 'DescribeMaintenanceStartTimeOutput$HourOfDay'
--
--     * 'DescribeMaintenanceStartTimeOutput$MinuteOfHour'
--
--     * 'DescribeMaintenanceStartTimeOutput$Timezone'
--
--
--
--
-- /See:/ 'describeMaintenanceStartTimeResponse' smart constructor.
data DescribeMaintenanceStartTimeResponse = DescribeMaintenanceStartTimeResponse'
  { _dmstrrsDayOfWeek ::
      !( Maybe
           Nat
       ),
    _dmstrrsDayOfMonth ::
      !( Maybe
           Nat
       ),
    _dmstrrsMinuteOfHour ::
      !( Maybe
           Nat
       ),
    _dmstrrsTimezone ::
      !( Maybe
           Text
       ),
    _dmstrrsGatewayARN ::
      !( Maybe
           Text
       ),
    _dmstrrsHourOfDay ::
      !( Maybe
           Nat
       ),
    _dmstrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMaintenanceStartTimeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmstrrsDayOfWeek' - An ordinal number between 0 and 6 that represents the day of the week, where 0 represents Sunday and 6 represents Saturday. The day of week is in the time zone of the gateway.
--
-- * 'dmstrrsDayOfMonth' - The day of the month component of the maintenance start time represented as an ordinal number from 1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month.
--
-- * 'dmstrrsMinuteOfHour' - The minute component of the maintenance start time represented as /mm/ , where /mm/ is the minute (0 to 59). The minute of the hour is in the time zone of the gateway.
--
-- * 'dmstrrsTimezone' - A value that indicates the time zone that is set for the gateway. The start time and day of week specified should be in the time zone of the gateway.
--
-- * 'dmstrrsGatewayARN' - Undocumented member.
--
-- * 'dmstrrsHourOfDay' - The hour component of the maintenance start time represented as /hh/ , where /hh/ is the hour (0 to 23). The hour of the day is in the time zone of the gateway.
--
-- * 'dmstrrsResponseStatus' - -- | The response status code.
describeMaintenanceStartTimeResponse ::
  -- | 'dmstrrsResponseStatus'
  Int ->
  DescribeMaintenanceStartTimeResponse
describeMaintenanceStartTimeResponse pResponseStatus_ =
  DescribeMaintenanceStartTimeResponse'
    { _dmstrrsDayOfWeek =
        Nothing,
      _dmstrrsDayOfMonth = Nothing,
      _dmstrrsMinuteOfHour = Nothing,
      _dmstrrsTimezone = Nothing,
      _dmstrrsGatewayARN = Nothing,
      _dmstrrsHourOfDay = Nothing,
      _dmstrrsResponseStatus =
        pResponseStatus_
    }

-- | An ordinal number between 0 and 6 that represents the day of the week, where 0 represents Sunday and 6 represents Saturday. The day of week is in the time zone of the gateway.
dmstrrsDayOfWeek :: Lens' DescribeMaintenanceStartTimeResponse (Maybe Natural)
dmstrrsDayOfWeek = lens _dmstrrsDayOfWeek (\s a -> s {_dmstrrsDayOfWeek = a}) . mapping _Nat

-- | The day of the month component of the maintenance start time represented as an ordinal number from 1 to 28, where 1 represents the first day of the month and 28 represents the last day of the month.
dmstrrsDayOfMonth :: Lens' DescribeMaintenanceStartTimeResponse (Maybe Natural)
dmstrrsDayOfMonth = lens _dmstrrsDayOfMonth (\s a -> s {_dmstrrsDayOfMonth = a}) . mapping _Nat

-- | The minute component of the maintenance start time represented as /mm/ , where /mm/ is the minute (0 to 59). The minute of the hour is in the time zone of the gateway.
dmstrrsMinuteOfHour :: Lens' DescribeMaintenanceStartTimeResponse (Maybe Natural)
dmstrrsMinuteOfHour = lens _dmstrrsMinuteOfHour (\s a -> s {_dmstrrsMinuteOfHour = a}) . mapping _Nat

-- | A value that indicates the time zone that is set for the gateway. The start time and day of week specified should be in the time zone of the gateway.
dmstrrsTimezone :: Lens' DescribeMaintenanceStartTimeResponse (Maybe Text)
dmstrrsTimezone = lens _dmstrrsTimezone (\s a -> s {_dmstrrsTimezone = a})

-- | Undocumented member.
dmstrrsGatewayARN :: Lens' DescribeMaintenanceStartTimeResponse (Maybe Text)
dmstrrsGatewayARN = lens _dmstrrsGatewayARN (\s a -> s {_dmstrrsGatewayARN = a})

-- | The hour component of the maintenance start time represented as /hh/ , where /hh/ is the hour (0 to 23). The hour of the day is in the time zone of the gateway.
dmstrrsHourOfDay :: Lens' DescribeMaintenanceStartTimeResponse (Maybe Natural)
dmstrrsHourOfDay = lens _dmstrrsHourOfDay (\s a -> s {_dmstrrsHourOfDay = a}) . mapping _Nat

-- | -- | The response status code.
dmstrrsResponseStatus :: Lens' DescribeMaintenanceStartTimeResponse Int
dmstrrsResponseStatus = lens _dmstrrsResponseStatus (\s a -> s {_dmstrrsResponseStatus = a})

instance NFData DescribeMaintenanceStartTimeResponse
