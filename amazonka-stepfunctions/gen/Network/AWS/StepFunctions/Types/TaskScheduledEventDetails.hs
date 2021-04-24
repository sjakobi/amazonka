{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.TaskScheduledEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.TaskScheduledEventDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about a task scheduled during an execution.
--
--
--
-- /See:/ 'taskScheduledEventDetails' smart constructor.
data TaskScheduledEventDetails = TaskScheduledEventDetails'
  { _tsedHeartbeatInSeconds ::
      !(Maybe Integer),
    _tsedTimeoutInSeconds ::
      !(Maybe Integer),
    _tsedResourceType ::
      !Text,
    _tsedResource ::
      !Text,
    _tsedRegion ::
      !Text,
    _tsedParameters ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TaskScheduledEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsedHeartbeatInSeconds' - The maximum allowed duration between two heartbeats for the task.
--
-- * 'tsedTimeoutInSeconds' - The maximum allowed duration of the task.
--
-- * 'tsedResourceType' - The action of the resource called by a task state.
--
-- * 'tsedResource' - The service name of the resource in a task state.
--
-- * 'tsedRegion' - The region of the scheduled task
--
-- * 'tsedParameters' - The JSON data passed to the resource referenced in a task state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
taskScheduledEventDetails ::
  -- | 'tsedResourceType'
  Text ->
  -- | 'tsedResource'
  Text ->
  -- | 'tsedRegion'
  Text ->
  -- | 'tsedParameters'
  Text ->
  TaskScheduledEventDetails
taskScheduledEventDetails
  pResourceType_
  pResource_
  pRegion_
  pParameters_ =
    TaskScheduledEventDetails'
      { _tsedHeartbeatInSeconds =
          Nothing,
        _tsedTimeoutInSeconds = Nothing,
        _tsedResourceType = pResourceType_,
        _tsedResource = pResource_,
        _tsedRegion = pRegion_,
        _tsedParameters = _Sensitive # pParameters_
      }

-- | The maximum allowed duration between two heartbeats for the task.
tsedHeartbeatInSeconds :: Lens' TaskScheduledEventDetails (Maybe Integer)
tsedHeartbeatInSeconds = lens _tsedHeartbeatInSeconds (\s a -> s {_tsedHeartbeatInSeconds = a})

-- | The maximum allowed duration of the task.
tsedTimeoutInSeconds :: Lens' TaskScheduledEventDetails (Maybe Integer)
tsedTimeoutInSeconds = lens _tsedTimeoutInSeconds (\s a -> s {_tsedTimeoutInSeconds = a})

-- | The action of the resource called by a task state.
tsedResourceType :: Lens' TaskScheduledEventDetails Text
tsedResourceType = lens _tsedResourceType (\s a -> s {_tsedResourceType = a})

-- | The service name of the resource in a task state.
tsedResource :: Lens' TaskScheduledEventDetails Text
tsedResource = lens _tsedResource (\s a -> s {_tsedResource = a})

-- | The region of the scheduled task
tsedRegion :: Lens' TaskScheduledEventDetails Text
tsedRegion = lens _tsedRegion (\s a -> s {_tsedRegion = a})

-- | The JSON data passed to the resource referenced in a task state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
tsedParameters :: Lens' TaskScheduledEventDetails Text
tsedParameters = lens _tsedParameters (\s a -> s {_tsedParameters = a}) . _Sensitive

instance FromJSON TaskScheduledEventDetails where
  parseJSON =
    withObject
      "TaskScheduledEventDetails"
      ( \x ->
          TaskScheduledEventDetails'
            <$> (x .:? "heartbeatInSeconds")
            <*> (x .:? "timeoutInSeconds")
            <*> (x .: "resourceType")
            <*> (x .: "resource")
            <*> (x .: "region")
            <*> (x .: "parameters")
      )

instance Hashable TaskScheduledEventDetails

instance NFData TaskScheduledEventDetails
