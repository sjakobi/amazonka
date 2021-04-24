{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.Stream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.Stream where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a group of files that can be streamed.
--
--
--
-- /See:/ 'stream' smart constructor.
data Stream = Stream'
  { _sStreamId :: !(Maybe Text),
    _sFileId :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Stream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sStreamId' - The stream ID.
--
-- * 'sFileId' - The ID of a file associated with a stream.
stream ::
  Stream
stream =
  Stream' {_sStreamId = Nothing, _sFileId = Nothing}

-- | The stream ID.
sStreamId :: Lens' Stream (Maybe Text)
sStreamId = lens _sStreamId (\s a -> s {_sStreamId = a})

-- | The ID of a file associated with a stream.
sFileId :: Lens' Stream (Maybe Natural)
sFileId = lens _sFileId (\s a -> s {_sFileId = a}) . mapping _Nat

instance FromJSON Stream where
  parseJSON =
    withObject
      "Stream"
      ( \x ->
          Stream' <$> (x .:? "streamId") <*> (x .:? "fileId")
      )

instance Hashable Stream

instance NFData Stream

instance ToJSON Stream where
  toJSON Stream' {..} =
    object
      ( catMaybes
          [ ("streamId" .=) <$> _sStreamId,
            ("fileId" .=) <$> _sFileId
          ]
      )
