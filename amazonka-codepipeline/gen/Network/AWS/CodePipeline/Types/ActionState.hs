{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionState where

import Network.AWS.CodePipeline.Types.ActionExecution
import Network.AWS.CodePipeline.Types.ActionRevision
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents information about the state of an action.
--
--
--
-- /See:/ 'actionState' smart constructor.
data ActionState = ActionState'
  { _asActionName ::
      !(Maybe Text),
    _asLatestExecution :: !(Maybe ActionExecution),
    _asCurrentRevision :: !(Maybe ActionRevision),
    _asEntityURL :: !(Maybe Text),
    _asRevisionURL :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asActionName' - The name of the action.
--
-- * 'asLatestExecution' - Represents information about the run of an action.
--
-- * 'asCurrentRevision' - Represents information about the version (or revision) of an action.
--
-- * 'asEntityURL' - A URL link for more information about the state of the action, such as a deployment group details page.
--
-- * 'asRevisionURL' - A URL link for more information about the revision, such as a commit details page.
actionState ::
  ActionState
actionState =
  ActionState'
    { _asActionName = Nothing,
      _asLatestExecution = Nothing,
      _asCurrentRevision = Nothing,
      _asEntityURL = Nothing,
      _asRevisionURL = Nothing
    }

-- | The name of the action.
asActionName :: Lens' ActionState (Maybe Text)
asActionName = lens _asActionName (\s a -> s {_asActionName = a})

-- | Represents information about the run of an action.
asLatestExecution :: Lens' ActionState (Maybe ActionExecution)
asLatestExecution = lens _asLatestExecution (\s a -> s {_asLatestExecution = a})

-- | Represents information about the version (or revision) of an action.
asCurrentRevision :: Lens' ActionState (Maybe ActionRevision)
asCurrentRevision = lens _asCurrentRevision (\s a -> s {_asCurrentRevision = a})

-- | A URL link for more information about the state of the action, such as a deployment group details page.
asEntityURL :: Lens' ActionState (Maybe Text)
asEntityURL = lens _asEntityURL (\s a -> s {_asEntityURL = a})

-- | A URL link for more information about the revision, such as a commit details page.
asRevisionURL :: Lens' ActionState (Maybe Text)
asRevisionURL = lens _asRevisionURL (\s a -> s {_asRevisionURL = a})

instance FromJSON ActionState where
  parseJSON =
    withObject
      "ActionState"
      ( \x ->
          ActionState'
            <$> (x .:? "actionName")
            <*> (x .:? "latestExecution")
            <*> (x .:? "currentRevision")
            <*> (x .:? "entityUrl")
            <*> (x .:? "revisionUrl")
      )

instance Hashable ActionState

instance NFData ActionState
