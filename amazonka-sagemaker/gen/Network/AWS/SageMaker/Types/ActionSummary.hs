{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ActionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ActionSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.ActionSource
import Network.AWS.SageMaker.Types.ActionStatus

-- | Lists the properties of an /action/ . An action represents an action or activity. Some examples are a workflow step and a model deployment. Generally, an action involves at least one input artifact or output artifact.
--
--
--
-- /See:/ 'actionSummary' smart constructor.
data ActionSummary = ActionSummary'
  { _actStatus ::
      !(Maybe ActionStatus),
    _actCreationTime :: !(Maybe POSIX),
    _actActionName :: !(Maybe Text),
    _actActionType :: !(Maybe Text),
    _actActionARN :: !(Maybe Text),
    _actSource :: !(Maybe ActionSource),
    _actLastModifiedTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'actStatus' - The status of the action.
--
-- * 'actCreationTime' - When the action was created.
--
-- * 'actActionName' - The name of the action.
--
-- * 'actActionType' - The type of the action.
--
-- * 'actActionARN' - The Amazon Resource Name (ARN) of the action.
--
-- * 'actSource' - The source of the action.
--
-- * 'actLastModifiedTime' - When the action was last modified.
actionSummary ::
  ActionSummary
actionSummary =
  ActionSummary'
    { _actStatus = Nothing,
      _actCreationTime = Nothing,
      _actActionName = Nothing,
      _actActionType = Nothing,
      _actActionARN = Nothing,
      _actSource = Nothing,
      _actLastModifiedTime = Nothing
    }

-- | The status of the action.
actStatus :: Lens' ActionSummary (Maybe ActionStatus)
actStatus = lens _actStatus (\s a -> s {_actStatus = a})

-- | When the action was created.
actCreationTime :: Lens' ActionSummary (Maybe UTCTime)
actCreationTime = lens _actCreationTime (\s a -> s {_actCreationTime = a}) . mapping _Time

-- | The name of the action.
actActionName :: Lens' ActionSummary (Maybe Text)
actActionName = lens _actActionName (\s a -> s {_actActionName = a})

-- | The type of the action.
actActionType :: Lens' ActionSummary (Maybe Text)
actActionType = lens _actActionType (\s a -> s {_actActionType = a})

-- | The Amazon Resource Name (ARN) of the action.
actActionARN :: Lens' ActionSummary (Maybe Text)
actActionARN = lens _actActionARN (\s a -> s {_actActionARN = a})

-- | The source of the action.
actSource :: Lens' ActionSummary (Maybe ActionSource)
actSource = lens _actSource (\s a -> s {_actSource = a})

-- | When the action was last modified.
actLastModifiedTime :: Lens' ActionSummary (Maybe UTCTime)
actLastModifiedTime = lens _actLastModifiedTime (\s a -> s {_actLastModifiedTime = a}) . mapping _Time

instance FromJSON ActionSummary where
  parseJSON =
    withObject
      "ActionSummary"
      ( \x ->
          ActionSummary'
            <$> (x .:? "Status")
            <*> (x .:? "CreationTime")
            <*> (x .:? "ActionName")
            <*> (x .:? "ActionType")
            <*> (x .:? "ActionArn")
            <*> (x .:? "Source")
            <*> (x .:? "LastModifiedTime")
      )

instance Hashable ActionSummary

instance NFData ActionSummary
