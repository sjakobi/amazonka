{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.ReportedOS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.ReportedOS where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A registered instance's reported operating system.
--
--
--
-- /See:/ 'reportedOS' smart constructor.
data ReportedOS = ReportedOS'
  { _roVersion ::
      !(Maybe Text),
    _roName :: !(Maybe Text),
    _roFamily :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReportedOS' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'roVersion' - The operating system version.
--
-- * 'roName' - The operating system name.
--
-- * 'roFamily' - The operating system family.
reportedOS ::
  ReportedOS
reportedOS =
  ReportedOS'
    { _roVersion = Nothing,
      _roName = Nothing,
      _roFamily = Nothing
    }

-- | The operating system version.
roVersion :: Lens' ReportedOS (Maybe Text)
roVersion = lens _roVersion (\s a -> s {_roVersion = a})

-- | The operating system name.
roName :: Lens' ReportedOS (Maybe Text)
roName = lens _roName (\s a -> s {_roName = a})

-- | The operating system family.
roFamily :: Lens' ReportedOS (Maybe Text)
roFamily = lens _roFamily (\s a -> s {_roFamily = a})

instance FromJSON ReportedOS where
  parseJSON =
    withObject
      "ReportedOS"
      ( \x ->
          ReportedOS'
            <$> (x .:? "Version")
            <*> (x .:? "Name")
            <*> (x .:? "Family")
      )

instance Hashable ReportedOS

instance NFData ReportedOS
