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
-- Module      : Network.AWS.SSM.GetMaintenanceWindow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a maintenance window.
module Network.AWS.SSM.GetMaintenanceWindow
  ( -- * Creating a Request
    getMaintenanceWindow,
    GetMaintenanceWindow,

    -- * Request Lenses
    gmwWindowId,

    -- * Destructuring the Response
    getMaintenanceWindowResponse,
    GetMaintenanceWindowResponse,

    -- * Response Lenses
    gmwrrsCreatedDate,
    gmwrrsStartDate,
    gmwrrsDuration,
    gmwrrsScheduleOffset,
    gmwrrsEnabled,
    gmwrrsModifiedDate,
    gmwrrsCutoff,
    gmwrrsName,
    gmwrrsWindowId,
    gmwrrsDescription,
    gmwrrsScheduleTimezone,
    gmwrrsEndDate,
    gmwrrsNextExecutionTime,
    gmwrrsAllowUnassociatedTargets,
    gmwrrsSchedule,
    gmwrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getMaintenanceWindow' smart constructor.
newtype GetMaintenanceWindow = GetMaintenanceWindow'
  { _gmwWindowId ::
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

-- | Creates a value of 'GetMaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmwWindowId' - The ID of the maintenance window for which you want to retrieve information.
getMaintenanceWindow ::
  -- | 'gmwWindowId'
  Text ->
  GetMaintenanceWindow
getMaintenanceWindow pWindowId_ =
  GetMaintenanceWindow' {_gmwWindowId = pWindowId_}

-- | The ID of the maintenance window for which you want to retrieve information.
gmwWindowId :: Lens' GetMaintenanceWindow Text
gmwWindowId = lens _gmwWindowId (\s a -> s {_gmwWindowId = a})

instance AWSRequest GetMaintenanceWindow where
  type
    Rs GetMaintenanceWindow =
      GetMaintenanceWindowResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetMaintenanceWindowResponse'
            <$> (x .?> "CreatedDate")
            <*> (x .?> "StartDate")
            <*> (x .?> "Duration")
            <*> (x .?> "ScheduleOffset")
            <*> (x .?> "Enabled")
            <*> (x .?> "ModifiedDate")
            <*> (x .?> "Cutoff")
            <*> (x .?> "Name")
            <*> (x .?> "WindowId")
            <*> (x .?> "Description")
            <*> (x .?> "ScheduleTimezone")
            <*> (x .?> "EndDate")
            <*> (x .?> "NextExecutionTime")
            <*> (x .?> "AllowUnassociatedTargets")
            <*> (x .?> "Schedule")
            <*> (pure (fromEnum s))
      )

instance Hashable GetMaintenanceWindow

instance NFData GetMaintenanceWindow

instance ToHeaders GetMaintenanceWindow where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetMaintenanceWindow" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMaintenanceWindow where
  toJSON GetMaintenanceWindow' {..} =
    object
      (catMaybes [Just ("WindowId" .= _gmwWindowId)])

instance ToPath GetMaintenanceWindow where
  toPath = const "/"

instance ToQuery GetMaintenanceWindow where
  toQuery = const mempty

-- | /See:/ 'getMaintenanceWindowResponse' smart constructor.
data GetMaintenanceWindowResponse = GetMaintenanceWindowResponse'
  { _gmwrrsCreatedDate ::
      !( Maybe
           POSIX
       ),
    _gmwrrsStartDate ::
      !(Maybe Text),
    _gmwrrsDuration ::
      !(Maybe Nat),
    _gmwrrsScheduleOffset ::
      !(Maybe Nat),
    _gmwrrsEnabled ::
      !(Maybe Bool),
    _gmwrrsModifiedDate ::
      !( Maybe
           POSIX
       ),
    _gmwrrsCutoff ::
      !(Maybe Nat),
    _gmwrrsName ::
      !(Maybe Text),
    _gmwrrsWindowId ::
      !(Maybe Text),
    _gmwrrsDescription ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _gmwrrsScheduleTimezone ::
      !(Maybe Text),
    _gmwrrsEndDate ::
      !(Maybe Text),
    _gmwrrsNextExecutionTime ::
      !(Maybe Text),
    _gmwrrsAllowUnassociatedTargets ::
      !(Maybe Bool),
    _gmwrrsSchedule ::
      !(Maybe Text),
    _gmwrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMaintenanceWindowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmwrrsCreatedDate' - The date the maintenance window was created.
--
-- * 'gmwrrsStartDate' - The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become active. The maintenance window will not run before this specified time.
--
-- * 'gmwrrsDuration' - The duration of the maintenance window in hours.
--
-- * 'gmwrrsScheduleOffset' - The number of days to wait to run a maintenance window after the scheduled CRON expression date and time.
--
-- * 'gmwrrsEnabled' - Indicates whether the maintenance window is enabled.
--
-- * 'gmwrrsModifiedDate' - The date the maintenance window was last modified.
--
-- * 'gmwrrsCutoff' - The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
--
-- * 'gmwrrsName' - The name of the maintenance window.
--
-- * 'gmwrrsWindowId' - The ID of the created maintenance window.
--
-- * 'gmwrrsDescription' - The description of the maintenance window.
--
-- * 'gmwrrsScheduleTimezone' - The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
--
-- * 'gmwrrsEndDate' - The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become inactive. The maintenance window will not run after this specified time.
--
-- * 'gmwrrsNextExecutionTime' - The next time the maintenance window will actually run, taking into account any specified times for the maintenance window to become active or inactive.
--
-- * 'gmwrrsAllowUnassociatedTargets' - Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
--
-- * 'gmwrrsSchedule' - The schedule of the maintenance window in the form of a cron or rate expression.
--
-- * 'gmwrrsResponseStatus' - -- | The response status code.
getMaintenanceWindowResponse ::
  -- | 'gmwrrsResponseStatus'
  Int ->
  GetMaintenanceWindowResponse
getMaintenanceWindowResponse pResponseStatus_ =
  GetMaintenanceWindowResponse'
    { _gmwrrsCreatedDate =
        Nothing,
      _gmwrrsStartDate = Nothing,
      _gmwrrsDuration = Nothing,
      _gmwrrsScheduleOffset = Nothing,
      _gmwrrsEnabled = Nothing,
      _gmwrrsModifiedDate = Nothing,
      _gmwrrsCutoff = Nothing,
      _gmwrrsName = Nothing,
      _gmwrrsWindowId = Nothing,
      _gmwrrsDescription = Nothing,
      _gmwrrsScheduleTimezone = Nothing,
      _gmwrrsEndDate = Nothing,
      _gmwrrsNextExecutionTime = Nothing,
      _gmwrrsAllowUnassociatedTargets = Nothing,
      _gmwrrsSchedule = Nothing,
      _gmwrrsResponseStatus = pResponseStatus_
    }

-- | The date the maintenance window was created.
gmwrrsCreatedDate :: Lens' GetMaintenanceWindowResponse (Maybe UTCTime)
gmwrrsCreatedDate = lens _gmwrrsCreatedDate (\s a -> s {_gmwrrsCreatedDate = a}) . mapping _Time

-- | The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become active. The maintenance window will not run before this specified time.
gmwrrsStartDate :: Lens' GetMaintenanceWindowResponse (Maybe Text)
gmwrrsStartDate = lens _gmwrrsStartDate (\s a -> s {_gmwrrsStartDate = a})

-- | The duration of the maintenance window in hours.
gmwrrsDuration :: Lens' GetMaintenanceWindowResponse (Maybe Natural)
gmwrrsDuration = lens _gmwrrsDuration (\s a -> s {_gmwrrsDuration = a}) . mapping _Nat

-- | The number of days to wait to run a maintenance window after the scheduled CRON expression date and time.
gmwrrsScheduleOffset :: Lens' GetMaintenanceWindowResponse (Maybe Natural)
gmwrrsScheduleOffset = lens _gmwrrsScheduleOffset (\s a -> s {_gmwrrsScheduleOffset = a}) . mapping _Nat

-- | Indicates whether the maintenance window is enabled.
gmwrrsEnabled :: Lens' GetMaintenanceWindowResponse (Maybe Bool)
gmwrrsEnabled = lens _gmwrrsEnabled (\s a -> s {_gmwrrsEnabled = a})

-- | The date the maintenance window was last modified.
gmwrrsModifiedDate :: Lens' GetMaintenanceWindowResponse (Maybe UTCTime)
gmwrrsModifiedDate = lens _gmwrrsModifiedDate (\s a -> s {_gmwrrsModifiedDate = a}) . mapping _Time

-- | The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
gmwrrsCutoff :: Lens' GetMaintenanceWindowResponse (Maybe Natural)
gmwrrsCutoff = lens _gmwrrsCutoff (\s a -> s {_gmwrrsCutoff = a}) . mapping _Nat

-- | The name of the maintenance window.
gmwrrsName :: Lens' GetMaintenanceWindowResponse (Maybe Text)
gmwrrsName = lens _gmwrrsName (\s a -> s {_gmwrrsName = a})

-- | The ID of the created maintenance window.
gmwrrsWindowId :: Lens' GetMaintenanceWindowResponse (Maybe Text)
gmwrrsWindowId = lens _gmwrrsWindowId (\s a -> s {_gmwrrsWindowId = a})

-- | The description of the maintenance window.
gmwrrsDescription :: Lens' GetMaintenanceWindowResponse (Maybe Text)
gmwrrsDescription = lens _gmwrrsDescription (\s a -> s {_gmwrrsDescription = a}) . mapping _Sensitive

-- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
gmwrrsScheduleTimezone :: Lens' GetMaintenanceWindowResponse (Maybe Text)
gmwrrsScheduleTimezone = lens _gmwrrsScheduleTimezone (\s a -> s {_gmwrrsScheduleTimezone = a})

-- | The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become inactive. The maintenance window will not run after this specified time.
gmwrrsEndDate :: Lens' GetMaintenanceWindowResponse (Maybe Text)
gmwrrsEndDate = lens _gmwrrsEndDate (\s a -> s {_gmwrrsEndDate = a})

-- | The next time the maintenance window will actually run, taking into account any specified times for the maintenance window to become active or inactive.
gmwrrsNextExecutionTime :: Lens' GetMaintenanceWindowResponse (Maybe Text)
gmwrrsNextExecutionTime = lens _gmwrrsNextExecutionTime (\s a -> s {_gmwrrsNextExecutionTime = a})

-- | Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
gmwrrsAllowUnassociatedTargets :: Lens' GetMaintenanceWindowResponse (Maybe Bool)
gmwrrsAllowUnassociatedTargets = lens _gmwrrsAllowUnassociatedTargets (\s a -> s {_gmwrrsAllowUnassociatedTargets = a})

-- | The schedule of the maintenance window in the form of a cron or rate expression.
gmwrrsSchedule :: Lens' GetMaintenanceWindowResponse (Maybe Text)
gmwrrsSchedule = lens _gmwrrsSchedule (\s a -> s {_gmwrrsSchedule = a})

-- | -- | The response status code.
gmwrrsResponseStatus :: Lens' GetMaintenanceWindowResponse Int
gmwrrsResponseStatus = lens _gmwrrsResponseStatus (\s a -> s {_gmwrrsResponseStatus = a})

instance NFData GetMaintenanceWindowResponse
