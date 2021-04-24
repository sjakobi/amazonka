{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.ApplicationInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.ApplicationInfo where

import Network.AWS.CodeDeploy.Types.ComputePlatform
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about an application.
--
--
--
-- /See:/ 'applicationInfo' smart constructor.
data ApplicationInfo = ApplicationInfo'
  { _aiApplicationId ::
      !(Maybe Text),
    _aiLinkedToGitHub :: !(Maybe Bool),
    _aiGitHubAccountName :: !(Maybe Text),
    _aiCreateTime :: !(Maybe POSIX),
    _aiApplicationName :: !(Maybe Text),
    _aiComputePlatform ::
      !(Maybe ComputePlatform)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ApplicationInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiApplicationId' - The application ID.
--
-- * 'aiLinkedToGitHub' - True if the user has authenticated with GitHub for the specified application. Otherwise, false.
--
-- * 'aiGitHubAccountName' - The name for a connection to a GitHub account.
--
-- * 'aiCreateTime' - The time at which the application was created.
--
-- * 'aiApplicationName' - The application name.
--
-- * 'aiComputePlatform' - The destination platform type for deployment of the application (@Lambda@ or @Server@ ).
applicationInfo ::
  ApplicationInfo
applicationInfo =
  ApplicationInfo'
    { _aiApplicationId = Nothing,
      _aiLinkedToGitHub = Nothing,
      _aiGitHubAccountName = Nothing,
      _aiCreateTime = Nothing,
      _aiApplicationName = Nothing,
      _aiComputePlatform = Nothing
    }

-- | The application ID.
aiApplicationId :: Lens' ApplicationInfo (Maybe Text)
aiApplicationId = lens _aiApplicationId (\s a -> s {_aiApplicationId = a})

-- | True if the user has authenticated with GitHub for the specified application. Otherwise, false.
aiLinkedToGitHub :: Lens' ApplicationInfo (Maybe Bool)
aiLinkedToGitHub = lens _aiLinkedToGitHub (\s a -> s {_aiLinkedToGitHub = a})

-- | The name for a connection to a GitHub account.
aiGitHubAccountName :: Lens' ApplicationInfo (Maybe Text)
aiGitHubAccountName = lens _aiGitHubAccountName (\s a -> s {_aiGitHubAccountName = a})

-- | The time at which the application was created.
aiCreateTime :: Lens' ApplicationInfo (Maybe UTCTime)
aiCreateTime = lens _aiCreateTime (\s a -> s {_aiCreateTime = a}) . mapping _Time

-- | The application name.
aiApplicationName :: Lens' ApplicationInfo (Maybe Text)
aiApplicationName = lens _aiApplicationName (\s a -> s {_aiApplicationName = a})

-- | The destination platform type for deployment of the application (@Lambda@ or @Server@ ).
aiComputePlatform :: Lens' ApplicationInfo (Maybe ComputePlatform)
aiComputePlatform = lens _aiComputePlatform (\s a -> s {_aiComputePlatform = a})

instance FromJSON ApplicationInfo where
  parseJSON =
    withObject
      "ApplicationInfo"
      ( \x ->
          ApplicationInfo'
            <$> (x .:? "applicationId")
            <*> (x .:? "linkedToGitHub")
            <*> (x .:? "gitHubAccountName")
            <*> (x .:? "createTime")
            <*> (x .:? "applicationName")
            <*> (x .:? "computePlatform")
      )

instance Hashable ApplicationInfo

instance NFData ApplicationInfo
