{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.GroupInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.GroupInformation where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a group.
--
-- /See:/ 'groupInformation' smart constructor.
data GroupInformation = GroupInformation'
  { _giCreationTimestamp ::
      !(Maybe Text),
    _giLatestVersionARN :: !(Maybe Text),
    _giLatestVersion :: !(Maybe Text),
    _giARN :: !(Maybe Text),
    _giId :: !(Maybe Text),
    _giName :: !(Maybe Text),
    _giLastUpdatedTimestamp ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GroupInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giCreationTimestamp' - The time, in milliseconds since the epoch, when the group was created.
--
-- * 'giLatestVersionARN' - The ARN of the latest version associated with the group.
--
-- * 'giLatestVersion' - The ID of the latest version associated with the group.
--
-- * 'giARN' - The ARN of the group.
--
-- * 'giId' - The ID of the group.
--
-- * 'giName' - The name of the group.
--
-- * 'giLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the group was last updated.
groupInformation ::
  GroupInformation
groupInformation =
  GroupInformation'
    { _giCreationTimestamp = Nothing,
      _giLatestVersionARN = Nothing,
      _giLatestVersion = Nothing,
      _giARN = Nothing,
      _giId = Nothing,
      _giName = Nothing,
      _giLastUpdatedTimestamp = Nothing
    }

-- | The time, in milliseconds since the epoch, when the group was created.
giCreationTimestamp :: Lens' GroupInformation (Maybe Text)
giCreationTimestamp = lens _giCreationTimestamp (\s a -> s {_giCreationTimestamp = a})

-- | The ARN of the latest version associated with the group.
giLatestVersionARN :: Lens' GroupInformation (Maybe Text)
giLatestVersionARN = lens _giLatestVersionARN (\s a -> s {_giLatestVersionARN = a})

-- | The ID of the latest version associated with the group.
giLatestVersion :: Lens' GroupInformation (Maybe Text)
giLatestVersion = lens _giLatestVersion (\s a -> s {_giLatestVersion = a})

-- | The ARN of the group.
giARN :: Lens' GroupInformation (Maybe Text)
giARN = lens _giARN (\s a -> s {_giARN = a})

-- | The ID of the group.
giId :: Lens' GroupInformation (Maybe Text)
giId = lens _giId (\s a -> s {_giId = a})

-- | The name of the group.
giName :: Lens' GroupInformation (Maybe Text)
giName = lens _giName (\s a -> s {_giName = a})

-- | The time, in milliseconds since the epoch, when the group was last updated.
giLastUpdatedTimestamp :: Lens' GroupInformation (Maybe Text)
giLastUpdatedTimestamp = lens _giLastUpdatedTimestamp (\s a -> s {_giLastUpdatedTimestamp = a})

instance FromJSON GroupInformation where
  parseJSON =
    withObject
      "GroupInformation"
      ( \x ->
          GroupInformation'
            <$> (x .:? "CreationTimestamp")
            <*> (x .:? "LatestVersionArn")
            <*> (x .:? "LatestVersion")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
            <*> (x .:? "LastUpdatedTimestamp")
      )

instance Hashable GroupInformation

instance NFData GroupInformation
