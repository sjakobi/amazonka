{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.CmafPackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.CmafPackage where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types.CmafEncryption
import Network.AWS.MediaPackage.Types.HlsManifest
import Network.AWS.MediaPackage.Types.StreamSelection
import Network.AWS.Prelude

-- | A Common Media Application Format (CMAF) packaging configuration.
--
-- /See:/ 'cmafPackage' smart constructor.
data CmafPackage = CmafPackage'
  { _cpStreamSelection ::
      !(Maybe StreamSelection),
    _cpHlsManifests :: !(Maybe [HlsManifest]),
    _cpSegmentPrefix :: !(Maybe Text),
    _cpEncryption :: !(Maybe CmafEncryption),
    _cpSegmentDurationSeconds :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CmafPackage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpStreamSelection' - Undocumented member.
--
-- * 'cpHlsManifests' - A list of HLS manifest configurations
--
-- * 'cpSegmentPrefix' - An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.
--
-- * 'cpEncryption' - Undocumented member.
--
-- * 'cpSegmentDurationSeconds' - Duration (in seconds) of each segment. Actual segments will be rounded to the nearest multiple of the source segment duration.
cmafPackage ::
  CmafPackage
cmafPackage =
  CmafPackage'
    { _cpStreamSelection = Nothing,
      _cpHlsManifests = Nothing,
      _cpSegmentPrefix = Nothing,
      _cpEncryption = Nothing,
      _cpSegmentDurationSeconds = Nothing
    }

-- | Undocumented member.
cpStreamSelection :: Lens' CmafPackage (Maybe StreamSelection)
cpStreamSelection = lens _cpStreamSelection (\s a -> s {_cpStreamSelection = a})

-- | A list of HLS manifest configurations
cpHlsManifests :: Lens' CmafPackage [HlsManifest]
cpHlsManifests = lens _cpHlsManifests (\s a -> s {_cpHlsManifests = a}) . _Default . _Coerce

-- | An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.
cpSegmentPrefix :: Lens' CmafPackage (Maybe Text)
cpSegmentPrefix = lens _cpSegmentPrefix (\s a -> s {_cpSegmentPrefix = a})

-- | Undocumented member.
cpEncryption :: Lens' CmafPackage (Maybe CmafEncryption)
cpEncryption = lens _cpEncryption (\s a -> s {_cpEncryption = a})

-- | Duration (in seconds) of each segment. Actual segments will be rounded to the nearest multiple of the source segment duration.
cpSegmentDurationSeconds :: Lens' CmafPackage (Maybe Int)
cpSegmentDurationSeconds = lens _cpSegmentDurationSeconds (\s a -> s {_cpSegmentDurationSeconds = a})

instance FromJSON CmafPackage where
  parseJSON =
    withObject
      "CmafPackage"
      ( \x ->
          CmafPackage'
            <$> (x .:? "streamSelection")
            <*> (x .:? "hlsManifests" .!= mempty)
            <*> (x .:? "segmentPrefix")
            <*> (x .:? "encryption")
            <*> (x .:? "segmentDurationSeconds")
      )

instance Hashable CmafPackage

instance NFData CmafPackage
