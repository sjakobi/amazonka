{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.JobProcessDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.JobProcessDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The job process details.
--
--
--
-- /See:/ 'jobProcessDetails' smart constructor.
data JobProcessDetails = JobProcessDetails'
  { _jpdProcessingTargets ::
      !(Maybe [Text]),
    _jpdNumberOfSucceededThings ::
      !(Maybe Int),
    _jpdNumberOfQueuedThings ::
      !(Maybe Int),
    _jpdNumberOfRemovedThings ::
      !(Maybe Int),
    _jpdNumberOfInProgressThings ::
      !(Maybe Int),
    _jpdNumberOfFailedThings ::
      !(Maybe Int),
    _jpdNumberOfRejectedThings ::
      !(Maybe Int),
    _jpdNumberOfCanceledThings ::
      !(Maybe Int),
    _jpdNumberOfTimedOutThings ::
      !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobProcessDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jpdProcessingTargets' - The target devices to which the job execution is being rolled out. This value will be null after the job execution has finished rolling out to all the target devices.
--
-- * 'jpdNumberOfSucceededThings' - The number of things which successfully completed the job.
--
-- * 'jpdNumberOfQueuedThings' - The number of things that are awaiting execution of the job.
--
-- * 'jpdNumberOfRemovedThings' - The number of things that are no longer scheduled to execute the job because they have been deleted or have been removed from the group that was a target of the job.
--
-- * 'jpdNumberOfInProgressThings' - The number of things currently executing the job.
--
-- * 'jpdNumberOfFailedThings' - The number of things that failed executing the job.
--
-- * 'jpdNumberOfRejectedThings' - The number of things that rejected the job.
--
-- * 'jpdNumberOfCanceledThings' - The number of things that cancelled the job.
--
-- * 'jpdNumberOfTimedOutThings' - The number of things whose job execution status is @TIMED_OUT@ .
jobProcessDetails ::
  JobProcessDetails
jobProcessDetails =
  JobProcessDetails'
    { _jpdProcessingTargets = Nothing,
      _jpdNumberOfSucceededThings = Nothing,
      _jpdNumberOfQueuedThings = Nothing,
      _jpdNumberOfRemovedThings = Nothing,
      _jpdNumberOfInProgressThings = Nothing,
      _jpdNumberOfFailedThings = Nothing,
      _jpdNumberOfRejectedThings = Nothing,
      _jpdNumberOfCanceledThings = Nothing,
      _jpdNumberOfTimedOutThings = Nothing
    }

-- | The target devices to which the job execution is being rolled out. This value will be null after the job execution has finished rolling out to all the target devices.
jpdProcessingTargets :: Lens' JobProcessDetails [Text]
jpdProcessingTargets = lens _jpdProcessingTargets (\s a -> s {_jpdProcessingTargets = a}) . _Default . _Coerce

-- | The number of things which successfully completed the job.
jpdNumberOfSucceededThings :: Lens' JobProcessDetails (Maybe Int)
jpdNumberOfSucceededThings = lens _jpdNumberOfSucceededThings (\s a -> s {_jpdNumberOfSucceededThings = a})

-- | The number of things that are awaiting execution of the job.
jpdNumberOfQueuedThings :: Lens' JobProcessDetails (Maybe Int)
jpdNumberOfQueuedThings = lens _jpdNumberOfQueuedThings (\s a -> s {_jpdNumberOfQueuedThings = a})

-- | The number of things that are no longer scheduled to execute the job because they have been deleted or have been removed from the group that was a target of the job.
jpdNumberOfRemovedThings :: Lens' JobProcessDetails (Maybe Int)
jpdNumberOfRemovedThings = lens _jpdNumberOfRemovedThings (\s a -> s {_jpdNumberOfRemovedThings = a})

-- | The number of things currently executing the job.
jpdNumberOfInProgressThings :: Lens' JobProcessDetails (Maybe Int)
jpdNumberOfInProgressThings = lens _jpdNumberOfInProgressThings (\s a -> s {_jpdNumberOfInProgressThings = a})

-- | The number of things that failed executing the job.
jpdNumberOfFailedThings :: Lens' JobProcessDetails (Maybe Int)
jpdNumberOfFailedThings = lens _jpdNumberOfFailedThings (\s a -> s {_jpdNumberOfFailedThings = a})

-- | The number of things that rejected the job.
jpdNumberOfRejectedThings :: Lens' JobProcessDetails (Maybe Int)
jpdNumberOfRejectedThings = lens _jpdNumberOfRejectedThings (\s a -> s {_jpdNumberOfRejectedThings = a})

-- | The number of things that cancelled the job.
jpdNumberOfCanceledThings :: Lens' JobProcessDetails (Maybe Int)
jpdNumberOfCanceledThings = lens _jpdNumberOfCanceledThings (\s a -> s {_jpdNumberOfCanceledThings = a})

-- | The number of things whose job execution status is @TIMED_OUT@ .
jpdNumberOfTimedOutThings :: Lens' JobProcessDetails (Maybe Int)
jpdNumberOfTimedOutThings = lens _jpdNumberOfTimedOutThings (\s a -> s {_jpdNumberOfTimedOutThings = a})

instance FromJSON JobProcessDetails where
  parseJSON =
    withObject
      "JobProcessDetails"
      ( \x ->
          JobProcessDetails'
            <$> (x .:? "processingTargets" .!= mempty)
            <*> (x .:? "numberOfSucceededThings")
            <*> (x .:? "numberOfQueuedThings")
            <*> (x .:? "numberOfRemovedThings")
            <*> (x .:? "numberOfInProgressThings")
            <*> (x .:? "numberOfFailedThings")
            <*> (x .:? "numberOfRejectedThings")
            <*> (x .:? "numberOfCanceledThings")
            <*> (x .:? "numberOfTimedOutThings")
      )

instance Hashable JobProcessDetails

instance NFData JobProcessDetails
