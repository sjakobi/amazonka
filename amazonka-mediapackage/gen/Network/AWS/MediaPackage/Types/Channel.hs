{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.Channel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.Channel where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types.EgressAccessLogs
import Network.AWS.MediaPackage.Types.HlsIngest
import Network.AWS.MediaPackage.Types.IngressAccessLogs
import Network.AWS.Prelude

-- | A Channel resource configuration.
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel'
  { _cEgressAccessLogs ::
      !(Maybe EgressAccessLogs),
    _cHlsIngest :: !(Maybe HlsIngest),
    _cARN :: !(Maybe Text),
    _cId :: !(Maybe Text),
    _cIngressAccessLogs :: !(Maybe IngressAccessLogs),
    _cTags :: !(Maybe (Map Text Text)),
    _cDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEgressAccessLogs' - Undocumented member.
--
-- * 'cHlsIngest' - Undocumented member.
--
-- * 'cARN' - The Amazon Resource Name (ARN) assigned to the Channel.
--
-- * 'cId' - The ID of the Channel.
--
-- * 'cIngressAccessLogs' - Undocumented member.
--
-- * 'cTags' - Undocumented member.
--
-- * 'cDescription' - A short text description of the Channel.
channel ::
  Channel
channel =
  Channel'
    { _cEgressAccessLogs = Nothing,
      _cHlsIngest = Nothing,
      _cARN = Nothing,
      _cId = Nothing,
      _cIngressAccessLogs = Nothing,
      _cTags = Nothing,
      _cDescription = Nothing
    }

-- | Undocumented member.
cEgressAccessLogs :: Lens' Channel (Maybe EgressAccessLogs)
cEgressAccessLogs = lens _cEgressAccessLogs (\s a -> s {_cEgressAccessLogs = a})

-- | Undocumented member.
cHlsIngest :: Lens' Channel (Maybe HlsIngest)
cHlsIngest = lens _cHlsIngest (\s a -> s {_cHlsIngest = a})

-- | The Amazon Resource Name (ARN) assigned to the Channel.
cARN :: Lens' Channel (Maybe Text)
cARN = lens _cARN (\s a -> s {_cARN = a})

-- | The ID of the Channel.
cId :: Lens' Channel (Maybe Text)
cId = lens _cId (\s a -> s {_cId = a})

-- | Undocumented member.
cIngressAccessLogs :: Lens' Channel (Maybe IngressAccessLogs)
cIngressAccessLogs = lens _cIngressAccessLogs (\s a -> s {_cIngressAccessLogs = a})

-- | Undocumented member.
cTags :: Lens' Channel (HashMap Text Text)
cTags = lens _cTags (\s a -> s {_cTags = a}) . _Default . _Map

-- | A short text description of the Channel.
cDescription :: Lens' Channel (Maybe Text)
cDescription = lens _cDescription (\s a -> s {_cDescription = a})

instance FromJSON Channel where
  parseJSON =
    withObject
      "Channel"
      ( \x ->
          Channel'
            <$> (x .:? "egressAccessLogs")
            <*> (x .:? "hlsIngest")
            <*> (x .:? "arn")
            <*> (x .:? "id")
            <*> (x .:? "ingressAccessLogs")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "description")
      )

instance Hashable Channel

instance NFData Channel
