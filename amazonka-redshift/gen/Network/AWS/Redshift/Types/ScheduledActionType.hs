{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ScheduledActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ScheduledActionType where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.PauseClusterMessage
import Network.AWS.Redshift.Types.ResizeClusterMessage
import Network.AWS.Redshift.Types.ResumeClusterMessage

-- | The action type that specifies an Amazon Redshift API operation that is supported by the Amazon Redshift scheduler.
--
--
--
-- /See:/ 'scheduledActionType' smart constructor.
data ScheduledActionType = ScheduledActionType'
  { _satResumeCluster ::
      !(Maybe ResumeClusterMessage),
    _satResizeCluster ::
      !(Maybe ResizeClusterMessage),
    _satPauseCluster ::
      !(Maybe PauseClusterMessage)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ScheduledActionType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'satResumeCluster' - An action that runs a @ResumeCluster@ API operation.
--
-- * 'satResizeCluster' - An action that runs a @ResizeCluster@ API operation.
--
-- * 'satPauseCluster' - An action that runs a @PauseCluster@ API operation.
scheduledActionType ::
  ScheduledActionType
scheduledActionType =
  ScheduledActionType'
    { _satResumeCluster = Nothing,
      _satResizeCluster = Nothing,
      _satPauseCluster = Nothing
    }

-- | An action that runs a @ResumeCluster@ API operation.
satResumeCluster :: Lens' ScheduledActionType (Maybe ResumeClusterMessage)
satResumeCluster = lens _satResumeCluster (\s a -> s {_satResumeCluster = a})

-- | An action that runs a @ResizeCluster@ API operation.
satResizeCluster :: Lens' ScheduledActionType (Maybe ResizeClusterMessage)
satResizeCluster = lens _satResizeCluster (\s a -> s {_satResizeCluster = a})

-- | An action that runs a @PauseCluster@ API operation.
satPauseCluster :: Lens' ScheduledActionType (Maybe PauseClusterMessage)
satPauseCluster = lens _satPauseCluster (\s a -> s {_satPauseCluster = a})

instance FromXML ScheduledActionType where
  parseXML x =
    ScheduledActionType'
      <$> (x .@? "ResumeCluster")
      <*> (x .@? "ResizeCluster")
      <*> (x .@? "PauseCluster")

instance Hashable ScheduledActionType

instance NFData ScheduledActionType

instance ToQuery ScheduledActionType where
  toQuery ScheduledActionType' {..} =
    mconcat
      [ "ResumeCluster" =: _satResumeCluster,
        "ResizeCluster" =: _satResizeCluster,
        "PauseCluster" =: _satPauseCluster
      ]
