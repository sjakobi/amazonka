{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.VersionInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.VersionInformation where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a version.
--
-- /See:/ 'versionInformation' smart constructor.
data VersionInformation = VersionInformation'
  { _viCreationTimestamp ::
      !(Maybe Text),
    _viARN :: !(Maybe Text),
    _viId :: !(Maybe Text),
    _viVersion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VersionInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viCreationTimestamp' - The time, in milliseconds since the epoch, when the version was created.
--
-- * 'viARN' - The ARN of the version.
--
-- * 'viId' - The ID of the parent definition that the version is associated with.
--
-- * 'viVersion' - The ID of the version.
versionInformation ::
  VersionInformation
versionInformation =
  VersionInformation'
    { _viCreationTimestamp = Nothing,
      _viARN = Nothing,
      _viId = Nothing,
      _viVersion = Nothing
    }

-- | The time, in milliseconds since the epoch, when the version was created.
viCreationTimestamp :: Lens' VersionInformation (Maybe Text)
viCreationTimestamp = lens _viCreationTimestamp (\s a -> s {_viCreationTimestamp = a})

-- | The ARN of the version.
viARN :: Lens' VersionInformation (Maybe Text)
viARN = lens _viARN (\s a -> s {_viARN = a})

-- | The ID of the parent definition that the version is associated with.
viId :: Lens' VersionInformation (Maybe Text)
viId = lens _viId (\s a -> s {_viId = a})

-- | The ID of the version.
viVersion :: Lens' VersionInformation (Maybe Text)
viVersion = lens _viVersion (\s a -> s {_viVersion = a})

instance FromJSON VersionInformation where
  parseJSON =
    withObject
      "VersionInformation"
      ( \x ->
          VersionInformation'
            <$> (x .:? "CreationTimestamp")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Version")
      )

instance Hashable VersionInformation

instance NFData VersionInformation
