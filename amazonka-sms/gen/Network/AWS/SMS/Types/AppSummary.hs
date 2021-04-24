{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.AppLaunchConfigurationStatus
import Network.AWS.SMS.Types.AppLaunchStatus
import Network.AWS.SMS.Types.AppReplicationConfigurationStatus
import Network.AWS.SMS.Types.AppReplicationStatus
import Network.AWS.SMS.Types.AppStatus
import Network.AWS.SMS.Types.LaunchDetails

-- | Information about the application.
--
--
--
-- /See:/ 'appSummary' smart constructor.
data AppSummary = AppSummary'
  { _asStatusMessage ::
      !(Maybe Text),
    _asAppId :: !(Maybe Text),
    _asStatus :: !(Maybe AppStatus),
    _asCreationTime :: !(Maybe POSIX),
    _asTotalServers :: !(Maybe Int),
    _asLaunchStatus :: !(Maybe AppLaunchStatus),
    _asReplicationStatusMessage :: !(Maybe Text),
    _asRoleName :: !(Maybe Text),
    _asReplicationStatus ::
      !(Maybe AppReplicationStatus),
    _asImportedAppId :: !(Maybe Text),
    _asReplicationConfigurationStatus ::
      !(Maybe AppReplicationConfigurationStatus),
    _asLatestReplicationTime :: !(Maybe POSIX),
    _asLaunchDetails :: !(Maybe LaunchDetails),
    _asName :: !(Maybe Text),
    _asLaunchConfigurationStatus ::
      !(Maybe AppLaunchConfigurationStatus),
    _asDescription :: !(Maybe Text),
    _asLastModified :: !(Maybe POSIX),
    _asTotalServerGroups :: !(Maybe Int),
    _asLaunchStatusMessage :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asStatusMessage' - A message related to the status of the application
--
-- * 'asAppId' - The unique ID of the application.
--
-- * 'asStatus' - Status of the application.
--
-- * 'asCreationTime' - The creation time of the application.
--
-- * 'asTotalServers' - The number of servers present in the application.
--
-- * 'asLaunchStatus' - The launch status of the application.
--
-- * 'asReplicationStatusMessage' - A message related to the replication status of the application.
--
-- * 'asRoleName' - The name of the service role in the customer's account used by AWS SMS.
--
-- * 'asReplicationStatus' - The replication status of the application.
--
-- * 'asImportedAppId' - The ID of the application.
--
-- * 'asReplicationConfigurationStatus' - Status of the replication configuration.
--
-- * 'asLatestReplicationTime' - The timestamp of the application's most recent successful replication.
--
-- * 'asLaunchDetails' - Details about the latest launch of the application.
--
-- * 'asName' - The name of the application.
--
-- * 'asLaunchConfigurationStatus' - Status of the launch configuration.
--
-- * 'asDescription' - The description of the application.
--
-- * 'asLastModified' - The last modified time of the application.
--
-- * 'asTotalServerGroups' - The number of server groups present in the application.
--
-- * 'asLaunchStatusMessage' - A message related to the launch status of the application.
appSummary ::
  AppSummary
appSummary =
  AppSummary'
    { _asStatusMessage = Nothing,
      _asAppId = Nothing,
      _asStatus = Nothing,
      _asCreationTime = Nothing,
      _asTotalServers = Nothing,
      _asLaunchStatus = Nothing,
      _asReplicationStatusMessage = Nothing,
      _asRoleName = Nothing,
      _asReplicationStatus = Nothing,
      _asImportedAppId = Nothing,
      _asReplicationConfigurationStatus = Nothing,
      _asLatestReplicationTime = Nothing,
      _asLaunchDetails = Nothing,
      _asName = Nothing,
      _asLaunchConfigurationStatus = Nothing,
      _asDescription = Nothing,
      _asLastModified = Nothing,
      _asTotalServerGroups = Nothing,
      _asLaunchStatusMessage = Nothing
    }

-- | A message related to the status of the application
asStatusMessage :: Lens' AppSummary (Maybe Text)
asStatusMessage = lens _asStatusMessage (\s a -> s {_asStatusMessage = a})

-- | The unique ID of the application.
asAppId :: Lens' AppSummary (Maybe Text)
asAppId = lens _asAppId (\s a -> s {_asAppId = a})

-- | Status of the application.
asStatus :: Lens' AppSummary (Maybe AppStatus)
asStatus = lens _asStatus (\s a -> s {_asStatus = a})

-- | The creation time of the application.
asCreationTime :: Lens' AppSummary (Maybe UTCTime)
asCreationTime = lens _asCreationTime (\s a -> s {_asCreationTime = a}) . mapping _Time

-- | The number of servers present in the application.
asTotalServers :: Lens' AppSummary (Maybe Int)
asTotalServers = lens _asTotalServers (\s a -> s {_asTotalServers = a})

-- | The launch status of the application.
asLaunchStatus :: Lens' AppSummary (Maybe AppLaunchStatus)
asLaunchStatus = lens _asLaunchStatus (\s a -> s {_asLaunchStatus = a})

-- | A message related to the replication status of the application.
asReplicationStatusMessage :: Lens' AppSummary (Maybe Text)
asReplicationStatusMessage = lens _asReplicationStatusMessage (\s a -> s {_asReplicationStatusMessage = a})

-- | The name of the service role in the customer's account used by AWS SMS.
asRoleName :: Lens' AppSummary (Maybe Text)
asRoleName = lens _asRoleName (\s a -> s {_asRoleName = a})

-- | The replication status of the application.
asReplicationStatus :: Lens' AppSummary (Maybe AppReplicationStatus)
asReplicationStatus = lens _asReplicationStatus (\s a -> s {_asReplicationStatus = a})

-- | The ID of the application.
asImportedAppId :: Lens' AppSummary (Maybe Text)
asImportedAppId = lens _asImportedAppId (\s a -> s {_asImportedAppId = a})

-- | Status of the replication configuration.
asReplicationConfigurationStatus :: Lens' AppSummary (Maybe AppReplicationConfigurationStatus)
asReplicationConfigurationStatus = lens _asReplicationConfigurationStatus (\s a -> s {_asReplicationConfigurationStatus = a})

-- | The timestamp of the application's most recent successful replication.
asLatestReplicationTime :: Lens' AppSummary (Maybe UTCTime)
asLatestReplicationTime = lens _asLatestReplicationTime (\s a -> s {_asLatestReplicationTime = a}) . mapping _Time

-- | Details about the latest launch of the application.
asLaunchDetails :: Lens' AppSummary (Maybe LaunchDetails)
asLaunchDetails = lens _asLaunchDetails (\s a -> s {_asLaunchDetails = a})

-- | The name of the application.
asName :: Lens' AppSummary (Maybe Text)
asName = lens _asName (\s a -> s {_asName = a})

-- | Status of the launch configuration.
asLaunchConfigurationStatus :: Lens' AppSummary (Maybe AppLaunchConfigurationStatus)
asLaunchConfigurationStatus = lens _asLaunchConfigurationStatus (\s a -> s {_asLaunchConfigurationStatus = a})

-- | The description of the application.
asDescription :: Lens' AppSummary (Maybe Text)
asDescription = lens _asDescription (\s a -> s {_asDescription = a})

-- | The last modified time of the application.
asLastModified :: Lens' AppSummary (Maybe UTCTime)
asLastModified = lens _asLastModified (\s a -> s {_asLastModified = a}) . mapping _Time

-- | The number of server groups present in the application.
asTotalServerGroups :: Lens' AppSummary (Maybe Int)
asTotalServerGroups = lens _asTotalServerGroups (\s a -> s {_asTotalServerGroups = a})

-- | A message related to the launch status of the application.
asLaunchStatusMessage :: Lens' AppSummary (Maybe Text)
asLaunchStatusMessage = lens _asLaunchStatusMessage (\s a -> s {_asLaunchStatusMessage = a})

instance FromJSON AppSummary where
  parseJSON =
    withObject
      "AppSummary"
      ( \x ->
          AppSummary'
            <$> (x .:? "statusMessage")
            <*> (x .:? "appId")
            <*> (x .:? "status")
            <*> (x .:? "creationTime")
            <*> (x .:? "totalServers")
            <*> (x .:? "launchStatus")
            <*> (x .:? "replicationStatusMessage")
            <*> (x .:? "roleName")
            <*> (x .:? "replicationStatus")
            <*> (x .:? "importedAppId")
            <*> (x .:? "replicationConfigurationStatus")
            <*> (x .:? "latestReplicationTime")
            <*> (x .:? "launchDetails")
            <*> (x .:? "name")
            <*> (x .:? "launchConfigurationStatus")
            <*> (x .:? "description")
            <*> (x .:? "lastModified")
            <*> (x .:? "totalServerGroups")
            <*> (x .:? "launchStatusMessage")
      )

instance Hashable AppSummary

instance NFData AppSummary
