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
-- Module      : Network.AWS.SSM.UpdateMaintenanceWindow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing maintenance window. Only specified parameters are modified.
module Network.AWS.SSM.UpdateMaintenanceWindow
  ( -- * Creating a Request
    updateMaintenanceWindow,
    UpdateMaintenanceWindow,

    -- * Request Lenses
    umwStartDate,
    umwDuration,
    umwScheduleOffset,
    umwEnabled,
    umwCutoff,
    umwName,
    umwReplace,
    umwDescription,
    umwScheduleTimezone,
    umwEndDate,
    umwAllowUnassociatedTargets,
    umwSchedule,
    umwWindowId,

    -- * Destructuring the Response
    updateMaintenanceWindowResponse,
    UpdateMaintenanceWindowResponse,

    -- * Response Lenses
    umwrrsStartDate,
    umwrrsDuration,
    umwrrsScheduleOffset,
    umwrrsEnabled,
    umwrrsCutoff,
    umwrrsName,
    umwrrsWindowId,
    umwrrsDescription,
    umwrrsScheduleTimezone,
    umwrrsEndDate,
    umwrrsAllowUnassociatedTargets,
    umwrrsSchedule,
    umwrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'updateMaintenanceWindow' smart constructor.
data UpdateMaintenanceWindow = UpdateMaintenanceWindow'
  { _umwStartDate ::
      !(Maybe Text),
    _umwDuration ::
      !(Maybe Nat),
    _umwScheduleOffset ::
      !(Maybe Nat),
    _umwEnabled ::
      !(Maybe Bool),
    _umwCutoff ::
      !(Maybe Nat),
    _umwName ::
      !(Maybe Text),
    _umwReplace ::
      !(Maybe Bool),
    _umwDescription ::
      !( Maybe
           (Sensitive Text)
       ),
    _umwScheduleTimezone ::
      !(Maybe Text),
    _umwEndDate ::
      !(Maybe Text),
    _umwAllowUnassociatedTargets ::
      !(Maybe Bool),
    _umwSchedule ::
      !(Maybe Text),
    _umwWindowId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateMaintenanceWindow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umwStartDate' - The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
--
-- * 'umwDuration' - The duration of the maintenance window in hours.
--
-- * 'umwScheduleOffset' - The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. For example, the following cron expression schedules a maintenance window to run the third Tuesday of every month at 11:30 PM. @cron(30 23 ? * TUE#3 *)@  If the schedule offset is @2@ , the maintenance window won't run until two days later.
--
-- * 'umwEnabled' - Whether the maintenance window is enabled.
--
-- * 'umwCutoff' - The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
--
-- * 'umwName' - The name of the maintenance window.
--
-- * 'umwReplace' - If True, then all fields that are required by the CreateMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
--
-- * 'umwDescription' - An optional description for the update request.
--
-- * 'umwScheduleTimezone' - The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
--
-- * 'umwEndDate' - The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.
--
-- * 'umwAllowUnassociatedTargets' - Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
--
-- * 'umwSchedule' - The schedule of the maintenance window in the form of a cron or rate expression.
--
-- * 'umwWindowId' - The ID of the maintenance window to update.
updateMaintenanceWindow ::
  -- | 'umwWindowId'
  Text ->
  UpdateMaintenanceWindow
updateMaintenanceWindow pWindowId_ =
  UpdateMaintenanceWindow'
    { _umwStartDate = Nothing,
      _umwDuration = Nothing,
      _umwScheduleOffset = Nothing,
      _umwEnabled = Nothing,
      _umwCutoff = Nothing,
      _umwName = Nothing,
      _umwReplace = Nothing,
      _umwDescription = Nothing,
      _umwScheduleTimezone = Nothing,
      _umwEndDate = Nothing,
      _umwAllowUnassociatedTargets = Nothing,
      _umwSchedule = Nothing,
      _umwWindowId = pWindowId_
    }

-- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
umwStartDate :: Lens' UpdateMaintenanceWindow (Maybe Text)
umwStartDate = lens _umwStartDate (\s a -> s {_umwStartDate = a})

-- | The duration of the maintenance window in hours.
umwDuration :: Lens' UpdateMaintenanceWindow (Maybe Natural)
umwDuration = lens _umwDuration (\s a -> s {_umwDuration = a}) . mapping _Nat

-- | The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. For example, the following cron expression schedules a maintenance window to run the third Tuesday of every month at 11:30 PM. @cron(30 23 ? * TUE#3 *)@  If the schedule offset is @2@ , the maintenance window won't run until two days later.
umwScheduleOffset :: Lens' UpdateMaintenanceWindow (Maybe Natural)
umwScheduleOffset = lens _umwScheduleOffset (\s a -> s {_umwScheduleOffset = a}) . mapping _Nat

-- | Whether the maintenance window is enabled.
umwEnabled :: Lens' UpdateMaintenanceWindow (Maybe Bool)
umwEnabled = lens _umwEnabled (\s a -> s {_umwEnabled = a})

-- | The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
umwCutoff :: Lens' UpdateMaintenanceWindow (Maybe Natural)
umwCutoff = lens _umwCutoff (\s a -> s {_umwCutoff = a}) . mapping _Nat

-- | The name of the maintenance window.
umwName :: Lens' UpdateMaintenanceWindow (Maybe Text)
umwName = lens _umwName (\s a -> s {_umwName = a})

-- | If True, then all fields that are required by the CreateMaintenanceWindow action are also required for this API request. Optional fields that are not specified are set to null.
umwReplace :: Lens' UpdateMaintenanceWindow (Maybe Bool)
umwReplace = lens _umwReplace (\s a -> s {_umwReplace = a})

-- | An optional description for the update request.
umwDescription :: Lens' UpdateMaintenanceWindow (Maybe Text)
umwDescription = lens _umwDescription (\s a -> s {_umwDescription = a}) . mapping _Sensitive

-- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
umwScheduleTimezone :: Lens' UpdateMaintenanceWindow (Maybe Text)
umwScheduleTimezone = lens _umwScheduleTimezone (\s a -> s {_umwScheduleTimezone = a})

-- | The date and time, in ISO-8601 Extended format, for when you want the maintenance window to become inactive. EndDate allows you to set a date and time in the future when the maintenance window will no longer run.
umwEndDate :: Lens' UpdateMaintenanceWindow (Maybe Text)
umwEndDate = lens _umwEndDate (\s a -> s {_umwEndDate = a})

-- | Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
umwAllowUnassociatedTargets :: Lens' UpdateMaintenanceWindow (Maybe Bool)
umwAllowUnassociatedTargets = lens _umwAllowUnassociatedTargets (\s a -> s {_umwAllowUnassociatedTargets = a})

-- | The schedule of the maintenance window in the form of a cron or rate expression.
umwSchedule :: Lens' UpdateMaintenanceWindow (Maybe Text)
umwSchedule = lens _umwSchedule (\s a -> s {_umwSchedule = a})

-- | The ID of the maintenance window to update.
umwWindowId :: Lens' UpdateMaintenanceWindow Text
umwWindowId = lens _umwWindowId (\s a -> s {_umwWindowId = a})

instance AWSRequest UpdateMaintenanceWindow where
  type
    Rs UpdateMaintenanceWindow =
      UpdateMaintenanceWindowResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          UpdateMaintenanceWindowResponse'
            <$> (x .?> "StartDate")
            <*> (x .?> "Duration")
            <*> (x .?> "ScheduleOffset")
            <*> (x .?> "Enabled")
            <*> (x .?> "Cutoff")
            <*> (x .?> "Name")
            <*> (x .?> "WindowId")
            <*> (x .?> "Description")
            <*> (x .?> "ScheduleTimezone")
            <*> (x .?> "EndDate")
            <*> (x .?> "AllowUnassociatedTargets")
            <*> (x .?> "Schedule")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateMaintenanceWindow

instance NFData UpdateMaintenanceWindow

instance ToHeaders UpdateMaintenanceWindow where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.UpdateMaintenanceWindow" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateMaintenanceWindow where
  toJSON UpdateMaintenanceWindow' {..} =
    object
      ( catMaybes
          [ ("StartDate" .=) <$> _umwStartDate,
            ("Duration" .=) <$> _umwDuration,
            ("ScheduleOffset" .=) <$> _umwScheduleOffset,
            ("Enabled" .=) <$> _umwEnabled,
            ("Cutoff" .=) <$> _umwCutoff,
            ("Name" .=) <$> _umwName,
            ("Replace" .=) <$> _umwReplace,
            ("Description" .=) <$> _umwDescription,
            ("ScheduleTimezone" .=) <$> _umwScheduleTimezone,
            ("EndDate" .=) <$> _umwEndDate,
            ("AllowUnassociatedTargets" .=)
              <$> _umwAllowUnassociatedTargets,
            ("Schedule" .=) <$> _umwSchedule,
            Just ("WindowId" .= _umwWindowId)
          ]
      )

instance ToPath UpdateMaintenanceWindow where
  toPath = const "/"

instance ToQuery UpdateMaintenanceWindow where
  toQuery = const mempty

-- | /See:/ 'updateMaintenanceWindowResponse' smart constructor.
data UpdateMaintenanceWindowResponse = UpdateMaintenanceWindowResponse'
  { _umwrrsStartDate ::
      !( Maybe
           Text
       ),
    _umwrrsDuration ::
      !( Maybe
           Nat
       ),
    _umwrrsScheduleOffset ::
      !( Maybe
           Nat
       ),
    _umwrrsEnabled ::
      !( Maybe
           Bool
       ),
    _umwrrsCutoff ::
      !( Maybe
           Nat
       ),
    _umwrrsName ::
      !( Maybe
           Text
       ),
    _umwrrsWindowId ::
      !( Maybe
           Text
       ),
    _umwrrsDescription ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _umwrrsScheduleTimezone ::
      !( Maybe
           Text
       ),
    _umwrrsEndDate ::
      !( Maybe
           Text
       ),
    _umwrrsAllowUnassociatedTargets ::
      !( Maybe
           Bool
       ),
    _umwrrsSchedule ::
      !( Maybe
           Text
       ),
    _umwrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateMaintenanceWindowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umwrrsStartDate' - The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become active. The maintenance window will not run before this specified time.
--
-- * 'umwrrsDuration' - The duration of the maintenance window in hours.
--
-- * 'umwrrsScheduleOffset' - The number of days to wait to run a maintenance window after the scheduled CRON expression date and time.
--
-- * 'umwrrsEnabled' - Whether the maintenance window is enabled.
--
-- * 'umwrrsCutoff' - The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
--
-- * 'umwrrsName' - The name of the maintenance window.
--
-- * 'umwrrsWindowId' - The ID of the created maintenance window.
--
-- * 'umwrrsDescription' - An optional description of the update.
--
-- * 'umwrrsScheduleTimezone' - The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
--
-- * 'umwrrsEndDate' - The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become inactive. The maintenance window will not run after this specified time.
--
-- * 'umwrrsAllowUnassociatedTargets' - Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
--
-- * 'umwrrsSchedule' - The schedule of the maintenance window in the form of a cron or rate expression.
--
-- * 'umwrrsResponseStatus' - -- | The response status code.
updateMaintenanceWindowResponse ::
  -- | 'umwrrsResponseStatus'
  Int ->
  UpdateMaintenanceWindowResponse
updateMaintenanceWindowResponse pResponseStatus_ =
  UpdateMaintenanceWindowResponse'
    { _umwrrsStartDate =
        Nothing,
      _umwrrsDuration = Nothing,
      _umwrrsScheduleOffset = Nothing,
      _umwrrsEnabled = Nothing,
      _umwrrsCutoff = Nothing,
      _umwrrsName = Nothing,
      _umwrrsWindowId = Nothing,
      _umwrrsDescription = Nothing,
      _umwrrsScheduleTimezone = Nothing,
      _umwrrsEndDate = Nothing,
      _umwrrsAllowUnassociatedTargets = Nothing,
      _umwrrsSchedule = Nothing,
      _umwrrsResponseStatus = pResponseStatus_
    }

-- | The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become active. The maintenance window will not run before this specified time.
umwrrsStartDate :: Lens' UpdateMaintenanceWindowResponse (Maybe Text)
umwrrsStartDate = lens _umwrrsStartDate (\s a -> s {_umwrrsStartDate = a})

-- | The duration of the maintenance window in hours.
umwrrsDuration :: Lens' UpdateMaintenanceWindowResponse (Maybe Natural)
umwrrsDuration = lens _umwrrsDuration (\s a -> s {_umwrrsDuration = a}) . mapping _Nat

-- | The number of days to wait to run a maintenance window after the scheduled CRON expression date and time.
umwrrsScheduleOffset :: Lens' UpdateMaintenanceWindowResponse (Maybe Natural)
umwrrsScheduleOffset = lens _umwrrsScheduleOffset (\s a -> s {_umwrrsScheduleOffset = a}) . mapping _Nat

-- | Whether the maintenance window is enabled.
umwrrsEnabled :: Lens' UpdateMaintenanceWindowResponse (Maybe Bool)
umwrrsEnabled = lens _umwrrsEnabled (\s a -> s {_umwrrsEnabled = a})

-- | The number of hours before the end of the maintenance window that Systems Manager stops scheduling new tasks for execution.
umwrrsCutoff :: Lens' UpdateMaintenanceWindowResponse (Maybe Natural)
umwrrsCutoff = lens _umwrrsCutoff (\s a -> s {_umwrrsCutoff = a}) . mapping _Nat

-- | The name of the maintenance window.
umwrrsName :: Lens' UpdateMaintenanceWindowResponse (Maybe Text)
umwrrsName = lens _umwrrsName (\s a -> s {_umwrrsName = a})

-- | The ID of the created maintenance window.
umwrrsWindowId :: Lens' UpdateMaintenanceWindowResponse (Maybe Text)
umwrrsWindowId = lens _umwrrsWindowId (\s a -> s {_umwrrsWindowId = a})

-- | An optional description of the update.
umwrrsDescription :: Lens' UpdateMaintenanceWindowResponse (Maybe Text)
umwrrsDescription = lens _umwrrsDescription (\s a -> s {_umwrrsDescription = a}) . mapping _Sensitive

-- | The time zone that the scheduled maintenance window executions are based on, in Internet Assigned Numbers Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more information, see the <https://www.iana.org/time-zones Time Zone Database> on the IANA website.
umwrrsScheduleTimezone :: Lens' UpdateMaintenanceWindowResponse (Maybe Text)
umwrrsScheduleTimezone = lens _umwrrsScheduleTimezone (\s a -> s {_umwrrsScheduleTimezone = a})

-- | The date and time, in ISO-8601 Extended format, for when the maintenance window is scheduled to become inactive. The maintenance window will not run after this specified time.
umwrrsEndDate :: Lens' UpdateMaintenanceWindowResponse (Maybe Text)
umwrrsEndDate = lens _umwrrsEndDate (\s a -> s {_umwrrsEndDate = a})

-- | Whether targets must be registered with the maintenance window before tasks can be defined for those targets.
umwrrsAllowUnassociatedTargets :: Lens' UpdateMaintenanceWindowResponse (Maybe Bool)
umwrrsAllowUnassociatedTargets = lens _umwrrsAllowUnassociatedTargets (\s a -> s {_umwrrsAllowUnassociatedTargets = a})

-- | The schedule of the maintenance window in the form of a cron or rate expression.
umwrrsSchedule :: Lens' UpdateMaintenanceWindowResponse (Maybe Text)
umwrrsSchedule = lens _umwrrsSchedule (\s a -> s {_umwrrsSchedule = a})

-- | -- | The response status code.
umwrrsResponseStatus :: Lens' UpdateMaintenanceWindowResponse Int
umwrrsResponseStatus = lens _umwrrsResponseStatus (\s a -> s {_umwrrsResponseStatus = a})

instance NFData UpdateMaintenanceWindowResponse
