{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.LaunchPath
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.LaunchPath where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A launch path object.
--
--
--
-- /See:/ 'launchPath' smart constructor.
data LaunchPath = LaunchPath'
  { _lpId :: !(Maybe Text),
    _lpName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LaunchPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpId' - The identifier of the launch path.
--
-- * 'lpName' - The name of the launch path.
launchPath ::
  LaunchPath
launchPath =
  LaunchPath' {_lpId = Nothing, _lpName = Nothing}

-- | The identifier of the launch path.
lpId :: Lens' LaunchPath (Maybe Text)
lpId = lens _lpId (\s a -> s {_lpId = a})

-- | The name of the launch path.
lpName :: Lens' LaunchPath (Maybe Text)
lpName = lens _lpName (\s a -> s {_lpName = a})

instance FromJSON LaunchPath where
  parseJSON =
    withObject
      "LaunchPath"
      ( \x ->
          LaunchPath' <$> (x .:? "Id") <*> (x .:? "Name")
      )

instance Hashable LaunchPath

instance NFData LaunchPath
