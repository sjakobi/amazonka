{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Types.ApplicationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Types.ApplicationState where

import Network.AWS.Lens
import Network.AWS.MigrationHub.Types.ApplicationStatus
import Network.AWS.Prelude

-- | The state of an application discovered through Migration Hub import, the AWS Agentless Discovery Connector, or the AWS Application Discovery Agent.
--
--
--
-- /See:/ 'applicationState' smart constructor.
data ApplicationState = ApplicationState'
  { _asApplicationId ::
      !(Maybe Text),
    _asApplicationStatus ::
      !(Maybe ApplicationStatus),
    _asLastUpdatedTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asApplicationId' - The configurationId from the Application Discovery Service that uniquely identifies an application.
--
-- * 'asApplicationStatus' - The current status of an application.
--
-- * 'asLastUpdatedTime' - The timestamp when the application status was last updated.
applicationState ::
  ApplicationState
applicationState =
  ApplicationState'
    { _asApplicationId = Nothing,
      _asApplicationStatus = Nothing,
      _asLastUpdatedTime = Nothing
    }

-- | The configurationId from the Application Discovery Service that uniquely identifies an application.
asApplicationId :: Lens' ApplicationState (Maybe Text)
asApplicationId = lens _asApplicationId (\s a -> s {_asApplicationId = a})

-- | The current status of an application.
asApplicationStatus :: Lens' ApplicationState (Maybe ApplicationStatus)
asApplicationStatus = lens _asApplicationStatus (\s a -> s {_asApplicationStatus = a})

-- | The timestamp when the application status was last updated.
asLastUpdatedTime :: Lens' ApplicationState (Maybe UTCTime)
asLastUpdatedTime = lens _asLastUpdatedTime (\s a -> s {_asLastUpdatedTime = a}) . mapping _Time

instance FromJSON ApplicationState where
  parseJSON =
    withObject
      "ApplicationState"
      ( \x ->
          ApplicationState'
            <$> (x .:? "ApplicationId")
            <*> (x .:? "ApplicationStatus")
            <*> (x .:? "LastUpdatedTime")
      )

instance Hashable ApplicationState

instance NFData ApplicationState
