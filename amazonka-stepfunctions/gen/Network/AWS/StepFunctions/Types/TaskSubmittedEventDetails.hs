{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.TaskSubmittedEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.TaskSubmittedEventDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.StepFunctions.Types.HistoryEventExecutionDataDetails

-- | Contains details about a task submitted to a resource .
--
--
--
-- /See:/ 'taskSubmittedEventDetails' smart constructor.
data TaskSubmittedEventDetails = TaskSubmittedEventDetails'
  { _tasOutput ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _tasOutputDetails ::
      !( Maybe
           HistoryEventExecutionDataDetails
       ),
    _tasResourceType ::
      !Text,
    _tasResource ::
      !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TaskSubmittedEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasOutput' - The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
--
-- * 'tasOutputDetails' - Contains details about the output of an execution history event.
--
-- * 'tasResourceType' - The action of the resource called by a task state.
--
-- * 'tasResource' - The service name of the resource in a task state.
taskSubmittedEventDetails ::
  -- | 'tasResourceType'
  Text ->
  -- | 'tasResource'
  Text ->
  TaskSubmittedEventDetails
taskSubmittedEventDetails pResourceType_ pResource_ =
  TaskSubmittedEventDetails'
    { _tasOutput = Nothing,
      _tasOutputDetails = Nothing,
      _tasResourceType = pResourceType_,
      _tasResource = pResource_
    }

-- | The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.
tasOutput :: Lens' TaskSubmittedEventDetails (Maybe Text)
tasOutput = lens _tasOutput (\s a -> s {_tasOutput = a}) . mapping _Sensitive

-- | Contains details about the output of an execution history event.
tasOutputDetails :: Lens' TaskSubmittedEventDetails (Maybe HistoryEventExecutionDataDetails)
tasOutputDetails = lens _tasOutputDetails (\s a -> s {_tasOutputDetails = a})

-- | The action of the resource called by a task state.
tasResourceType :: Lens' TaskSubmittedEventDetails Text
tasResourceType = lens _tasResourceType (\s a -> s {_tasResourceType = a})

-- | The service name of the resource in a task state.
tasResource :: Lens' TaskSubmittedEventDetails Text
tasResource = lens _tasResource (\s a -> s {_tasResource = a})

instance FromJSON TaskSubmittedEventDetails where
  parseJSON =
    withObject
      "TaskSubmittedEventDetails"
      ( \x ->
          TaskSubmittedEventDetails'
            <$> (x .:? "output")
            <*> (x .:? "outputDetails")
            <*> (x .: "resourceType")
            <*> (x .: "resource")
      )

instance Hashable TaskSubmittedEventDetails

instance NFData TaskSubmittedEventDetails
