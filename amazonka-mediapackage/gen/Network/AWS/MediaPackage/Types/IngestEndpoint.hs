{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaPackage.Types.IngestEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.IngestEndpoint where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | An endpoint for ingesting source content for a Channel.
--
-- /See:/ 'ingestEndpoint' smart constructor.
data IngestEndpoint = IngestEndpoint'
  { _ieId ::
      !(Maybe Text),
    _iePassword :: !(Maybe Text),
    _ieUsername :: !(Maybe Text),
    _ieURL :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'IngestEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ieId' - The system generated unique identifier for the IngestEndpoint
--
-- * 'iePassword' - The system generated password for ingest authentication.
--
-- * 'ieUsername' - The system generated username for ingest authentication.
--
-- * 'ieURL' - The ingest URL to which the source stream should be sent.
ingestEndpoint ::
  IngestEndpoint
ingestEndpoint =
  IngestEndpoint'
    { _ieId = Nothing,
      _iePassword = Nothing,
      _ieUsername = Nothing,
      _ieURL = Nothing
    }

-- | The system generated unique identifier for the IngestEndpoint
ieId :: Lens' IngestEndpoint (Maybe Text)
ieId = lens _ieId (\s a -> s {_ieId = a})

-- | The system generated password for ingest authentication.
iePassword :: Lens' IngestEndpoint (Maybe Text)
iePassword = lens _iePassword (\s a -> s {_iePassword = a})

-- | The system generated username for ingest authentication.
ieUsername :: Lens' IngestEndpoint (Maybe Text)
ieUsername = lens _ieUsername (\s a -> s {_ieUsername = a})

-- | The ingest URL to which the source stream should be sent.
ieURL :: Lens' IngestEndpoint (Maybe Text)
ieURL = lens _ieURL (\s a -> s {_ieURL = a})

instance FromJSON IngestEndpoint where
  parseJSON =
    withObject
      "IngestEndpoint"
      ( \x ->
          IngestEndpoint'
            <$> (x .:? "id")
            <*> (x .:? "password")
            <*> (x .:? "username")
            <*> (x .:? "url")
      )

instance Hashable IngestEndpoint

instance NFData IngestEndpoint
