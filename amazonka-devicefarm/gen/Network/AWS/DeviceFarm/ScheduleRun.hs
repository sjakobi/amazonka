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
-- Module      : Network.AWS.DeviceFarm.ScheduleRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules a run.
module Network.AWS.DeviceFarm.ScheduleRun
  ( -- * Creating a Request
    scheduleRun,
    ScheduleRun,

    -- * Request Lenses
    srDevicePoolARN,
    srDeviceSelectionConfiguration,
    srConfiguration,
    srExecutionConfiguration,
    srName,
    srAppARN,
    srProjectARN,
    srTest,

    -- * Destructuring the Response
    scheduleRunResponse,
    ScheduleRunResponse,

    -- * Response Lenses
    srrrsRun,
    srrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the schedule run operation.
--
--
--
-- /See:/ 'scheduleRun' smart constructor.
data ScheduleRun = ScheduleRun'
  { _srDevicePoolARN ::
      !(Maybe Text),
    _srDeviceSelectionConfiguration ::
      !(Maybe DeviceSelectionConfiguration),
    _srConfiguration ::
      !(Maybe ScheduleRunConfiguration),
    _srExecutionConfiguration ::
      !(Maybe ExecutionConfiguration),
    _srName :: !(Maybe Text),
    _srAppARN :: !(Maybe Text),
    _srProjectARN :: !Text,
    _srTest :: !ScheduleRunTest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ScheduleRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srDevicePoolARN' - The ARN of the device pool for the run to be scheduled.
--
-- * 'srDeviceSelectionConfiguration' - The filter criteria used to dynamically select a set of devices for a test run and the maximum number of devices to be included in the run. Either __@devicePoolArn@ __ or __@deviceSelectionConfiguration@ __ is required in a request.
--
-- * 'srConfiguration' - Information about the settings for the run to be scheduled.
--
-- * 'srExecutionConfiguration' - Specifies configuration information about a test run, such as the execution timeout (in minutes).
--
-- * 'srName' - The name for the run to be scheduled.
--
-- * 'srAppARN' - The ARN of an application package to run tests against, created with 'CreateUpload' . See 'ListUploads' .
--
-- * 'srProjectARN' - The ARN of the project for the run to be scheduled.
--
-- * 'srTest' - Information about the test for the run to be scheduled.
scheduleRun ::
  -- | 'srProjectARN'
  Text ->
  -- | 'srTest'
  ScheduleRunTest ->
  ScheduleRun
scheduleRun pProjectARN_ pTest_ =
  ScheduleRun'
    { _srDevicePoolARN = Nothing,
      _srDeviceSelectionConfiguration = Nothing,
      _srConfiguration = Nothing,
      _srExecutionConfiguration = Nothing,
      _srName = Nothing,
      _srAppARN = Nothing,
      _srProjectARN = pProjectARN_,
      _srTest = pTest_
    }

-- | The ARN of the device pool for the run to be scheduled.
srDevicePoolARN :: Lens' ScheduleRun (Maybe Text)
srDevicePoolARN = lens _srDevicePoolARN (\s a -> s {_srDevicePoolARN = a})

-- | The filter criteria used to dynamically select a set of devices for a test run and the maximum number of devices to be included in the run. Either __@devicePoolArn@ __ or __@deviceSelectionConfiguration@ __ is required in a request.
srDeviceSelectionConfiguration :: Lens' ScheduleRun (Maybe DeviceSelectionConfiguration)
srDeviceSelectionConfiguration = lens _srDeviceSelectionConfiguration (\s a -> s {_srDeviceSelectionConfiguration = a})

-- | Information about the settings for the run to be scheduled.
srConfiguration :: Lens' ScheduleRun (Maybe ScheduleRunConfiguration)
srConfiguration = lens _srConfiguration (\s a -> s {_srConfiguration = a})

-- | Specifies configuration information about a test run, such as the execution timeout (in minutes).
srExecutionConfiguration :: Lens' ScheduleRun (Maybe ExecutionConfiguration)
srExecutionConfiguration = lens _srExecutionConfiguration (\s a -> s {_srExecutionConfiguration = a})

-- | The name for the run to be scheduled.
srName :: Lens' ScheduleRun (Maybe Text)
srName = lens _srName (\s a -> s {_srName = a})

-- | The ARN of an application package to run tests against, created with 'CreateUpload' . See 'ListUploads' .
srAppARN :: Lens' ScheduleRun (Maybe Text)
srAppARN = lens _srAppARN (\s a -> s {_srAppARN = a})

-- | The ARN of the project for the run to be scheduled.
srProjectARN :: Lens' ScheduleRun Text
srProjectARN = lens _srProjectARN (\s a -> s {_srProjectARN = a})

-- | Information about the test for the run to be scheduled.
srTest :: Lens' ScheduleRun ScheduleRunTest
srTest = lens _srTest (\s a -> s {_srTest = a})

instance AWSRequest ScheduleRun where
  type Rs ScheduleRun = ScheduleRunResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ScheduleRunResponse'
            <$> (x .?> "run") <*> (pure (fromEnum s))
      )

instance Hashable ScheduleRun

instance NFData ScheduleRun

instance ToHeaders ScheduleRun where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.ScheduleRun" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ScheduleRun where
  toJSON ScheduleRun' {..} =
    object
      ( catMaybes
          [ ("devicePoolArn" .=) <$> _srDevicePoolARN,
            ("deviceSelectionConfiguration" .=)
              <$> _srDeviceSelectionConfiguration,
            ("configuration" .=) <$> _srConfiguration,
            ("executionConfiguration" .=)
              <$> _srExecutionConfiguration,
            ("name" .=) <$> _srName,
            ("appArn" .=) <$> _srAppARN,
            Just ("projectArn" .= _srProjectARN),
            Just ("test" .= _srTest)
          ]
      )

instance ToPath ScheduleRun where
  toPath = const "/"

instance ToQuery ScheduleRun where
  toQuery = const mempty

-- | Represents the result of a schedule run request.
--
--
--
-- /See:/ 'scheduleRunResponse' smart constructor.
data ScheduleRunResponse = ScheduleRunResponse'
  { _srrrsRun ::
      !(Maybe Run),
    _srrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ScheduleRunResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrrsRun' - Information about the scheduled run.
--
-- * 'srrrsResponseStatus' - -- | The response status code.
scheduleRunResponse ::
  -- | 'srrrsResponseStatus'
  Int ->
  ScheduleRunResponse
scheduleRunResponse pResponseStatus_ =
  ScheduleRunResponse'
    { _srrrsRun = Nothing,
      _srrrsResponseStatus = pResponseStatus_
    }

-- | Information about the scheduled run.
srrrsRun :: Lens' ScheduleRunResponse (Maybe Run)
srrrsRun = lens _srrrsRun (\s a -> s {_srrrsRun = a})

-- | -- | The response status code.
srrrsResponseStatus :: Lens' ScheduleRunResponse Int
srrrsResponseStatus = lens _srrrsResponseStatus (\s a -> s {_srrrsResponseStatus = a})

instance NFData ScheduleRunResponse
