{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.PlatformFramework
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.PlatformFramework where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A framework supported by the platform.
--
--
--
-- /See:/ 'platformFramework' smart constructor.
data PlatformFramework = PlatformFramework'
  { _pfVersion ::
      !(Maybe Text),
    _pfName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PlatformFramework' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfVersion' - The version of the framework.
--
-- * 'pfName' - The name of the framework.
platformFramework ::
  PlatformFramework
platformFramework =
  PlatformFramework'
    { _pfVersion = Nothing,
      _pfName = Nothing
    }

-- | The version of the framework.
pfVersion :: Lens' PlatformFramework (Maybe Text)
pfVersion = lens _pfVersion (\s a -> s {_pfVersion = a})

-- | The name of the framework.
pfName :: Lens' PlatformFramework (Maybe Text)
pfName = lens _pfName (\s a -> s {_pfName = a})

instance FromXML PlatformFramework where
  parseXML x =
    PlatformFramework'
      <$> (x .@? "Version") <*> (x .@? "Name")

instance Hashable PlatformFramework

instance NFData PlatformFramework
