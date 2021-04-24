{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.TaskStartedEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.TaskStartedEventDetails where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about the start of a task during an execution.
--
--
--
-- /See:/ 'taskStartedEventDetails' smart constructor.
data TaskStartedEventDetails = TaskStartedEventDetails'
  { _ttResourceType ::
      !Text,
    _ttResource :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TaskStartedEventDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttResourceType' - The action of the resource called by a task state.
--
-- * 'ttResource' - The service name of the resource in a task state.
taskStartedEventDetails ::
  -- | 'ttResourceType'
  Text ->
  -- | 'ttResource'
  Text ->
  TaskStartedEventDetails
taskStartedEventDetails pResourceType_ pResource_ =
  TaskStartedEventDetails'
    { _ttResourceType =
        pResourceType_,
      _ttResource = pResource_
    }

-- | The action of the resource called by a task state.
ttResourceType :: Lens' TaskStartedEventDetails Text
ttResourceType = lens _ttResourceType (\s a -> s {_ttResourceType = a})

-- | The service name of the resource in a task state.
ttResource :: Lens' TaskStartedEventDetails Text
ttResource = lens _ttResource (\s a -> s {_ttResource = a})

instance FromJSON TaskStartedEventDetails where
  parseJSON =
    withObject
      "TaskStartedEventDetails"
      ( \x ->
          TaskStartedEventDetails'
            <$> (x .: "resourceType") <*> (x .: "resource")
      )

instance Hashable TaskStartedEventDetails

instance NFData TaskStartedEventDetails
