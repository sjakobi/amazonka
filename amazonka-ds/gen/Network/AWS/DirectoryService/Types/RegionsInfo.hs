{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.RegionsInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RegionsInfo where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the Regions that are configured for multi-Region replication.
--
--
--
-- /See:/ 'regionsInfo' smart constructor.
data RegionsInfo = RegionsInfo'
  { _riAdditionalRegions ::
      !(Maybe [Text]),
    _riPrimaryRegion :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegionsInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riAdditionalRegions' - Lists the Regions where the directory has been replicated, excluding the primary Region.
--
-- * 'riPrimaryRegion' - The Region where the AWS Managed Microsoft AD directory was originally created.
regionsInfo ::
  RegionsInfo
regionsInfo =
  RegionsInfo'
    { _riAdditionalRegions = Nothing,
      _riPrimaryRegion = Nothing
    }

-- | Lists the Regions where the directory has been replicated, excluding the primary Region.
riAdditionalRegions :: Lens' RegionsInfo [Text]
riAdditionalRegions = lens _riAdditionalRegions (\s a -> s {_riAdditionalRegions = a}) . _Default . _Coerce

-- | The Region where the AWS Managed Microsoft AD directory was originally created.
riPrimaryRegion :: Lens' RegionsInfo (Maybe Text)
riPrimaryRegion = lens _riPrimaryRegion (\s a -> s {_riPrimaryRegion = a})

instance FromJSON RegionsInfo where
  parseJSON =
    withObject
      "RegionsInfo"
      ( \x ->
          RegionsInfo'
            <$> (x .:? "AdditionalRegions" .!= mempty)
            <*> (x .:? "PrimaryRegion")
      )

instance Hashable RegionsInfo

instance NFData RegionsInfo
