{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.TaskStartFailedEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.TaskStartFailedEventDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about a task that failed to start during an execution.
--
--
--
-- /See:/ 'taskStartFailedEventDetails' smart constructor.
data TaskStartFailedEventDetails = TaskStartFailedEventDetails'
  { _tCause ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _tError ::
      !( Maybe
           ( Sensitive
               Text
           )
       ),
    _tResourceType ::
      !Text,
    _tResource ::
      !Text
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TaskStartFailedEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tCause' - A more detailed explanation of the cause of the failure.
--
-- * 'tError' - The error code of the failure.
--
-- * 'tResourceType' - The action of the resource called by a task state.
--
-- * 'tResource' - The service name of the resource in a task state.
taskStartFailedEventDetails ::
  -- | 'tResourceType'
  Text ->
  -- | 'tResource'
  Text ->
  TaskStartFailedEventDetails
taskStartFailedEventDetails pResourceType_ pResource_ =
  TaskStartFailedEventDetails'
    { _tCause = Nothing,
      _tError = Nothing,
      _tResourceType = pResourceType_,
      _tResource = pResource_
    }

-- | A more detailed explanation of the cause of the failure.
tCause :: Lens' TaskStartFailedEventDetails (Maybe Text)
tCause = lens _tCause (\s a -> s {_tCause = a}) . mapping _Sensitive

-- | The error code of the failure.
tError :: Lens' TaskStartFailedEventDetails (Maybe Text)
tError = lens _tError (\s a -> s {_tError = a}) . mapping _Sensitive

-- | The action of the resource called by a task state.
tResourceType :: Lens' TaskStartFailedEventDetails Text
tResourceType = lens _tResourceType (\s a -> s {_tResourceType = a})

-- | The service name of the resource in a task state.
tResource :: Lens' TaskStartFailedEventDetails Text
tResource = lens _tResource (\s a -> s {_tResource = a})

instance FromJSON TaskStartFailedEventDetails where
  parseJSON =
    withObject
      "TaskStartFailedEventDetails"
      ( \x ->
          TaskStartFailedEventDetails'
            <$> (x .:? "cause")
            <*> (x .:? "error")
            <*> (x .: "resourceType")
            <*> (x .: "resource")
      )

instance Hashable TaskStartFailedEventDetails

instance NFData TaskStartFailedEventDetails
