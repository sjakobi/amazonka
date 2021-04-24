{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.ManagedAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ManagedAction where

import Network.AWS.ElasticBeanstalk.Types.ActionStatus
import Network.AWS.ElasticBeanstalk.Types.ActionType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The record of an upcoming or in-progress managed action.
--
--
--
-- /See:/ 'managedAction' smart constructor.
data ManagedAction = ManagedAction'
  { _maStatus ::
      !(Maybe ActionStatus),
    _maActionType :: !(Maybe ActionType),
    _maActionId :: !(Maybe Text),
    _maActionDescription :: !(Maybe Text),
    _maWindowStartTime :: !(Maybe ISO8601)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagedAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maStatus' - The status of the managed action. If the action is @Scheduled@ , you can apply it immediately with 'ApplyEnvironmentManagedAction' .
--
-- * 'maActionType' - The type of managed action.
--
-- * 'maActionId' - A unique identifier for the managed action.
--
-- * 'maActionDescription' - A description of the managed action.
--
-- * 'maWindowStartTime' - The start time of the maintenance window in which the managed action will execute.
managedAction ::
  ManagedAction
managedAction =
  ManagedAction'
    { _maStatus = Nothing,
      _maActionType = Nothing,
      _maActionId = Nothing,
      _maActionDescription = Nothing,
      _maWindowStartTime = Nothing
    }

-- | The status of the managed action. If the action is @Scheduled@ , you can apply it immediately with 'ApplyEnvironmentManagedAction' .
maStatus :: Lens' ManagedAction (Maybe ActionStatus)
maStatus = lens _maStatus (\s a -> s {_maStatus = a})

-- | The type of managed action.
maActionType :: Lens' ManagedAction (Maybe ActionType)
maActionType = lens _maActionType (\s a -> s {_maActionType = a})

-- | A unique identifier for the managed action.
maActionId :: Lens' ManagedAction (Maybe Text)
maActionId = lens _maActionId (\s a -> s {_maActionId = a})

-- | A description of the managed action.
maActionDescription :: Lens' ManagedAction (Maybe Text)
maActionDescription = lens _maActionDescription (\s a -> s {_maActionDescription = a})

-- | The start time of the maintenance window in which the managed action will execute.
maWindowStartTime :: Lens' ManagedAction (Maybe UTCTime)
maWindowStartTime = lens _maWindowStartTime (\s a -> s {_maWindowStartTime = a}) . mapping _Time

instance FromXML ManagedAction where
  parseXML x =
    ManagedAction'
      <$> (x .@? "Status")
      <*> (x .@? "ActionType")
      <*> (x .@? "ActionId")
      <*> (x .@? "ActionDescription")
      <*> (x .@? "WindowStartTime")

instance Hashable ManagedAction

instance NFData ManagedAction
