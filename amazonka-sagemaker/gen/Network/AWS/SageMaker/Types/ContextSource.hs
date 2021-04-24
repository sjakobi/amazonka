{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ContextSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ContextSource where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure describing the source of a context.
--
--
--
-- /See:/ 'contextSource' smart constructor.
data ContextSource = ContextSource'
  { _csSourceId ::
      !(Maybe Text),
    _csSourceType :: !(Maybe Text),
    _csSourceURI :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ContextSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csSourceId' - The ID of the source.
--
-- * 'csSourceType' - The type of the source.
--
-- * 'csSourceURI' - The URI of the source.
contextSource ::
  -- | 'csSourceURI'
  Text ->
  ContextSource
contextSource pSourceURI_ =
  ContextSource'
    { _csSourceId = Nothing,
      _csSourceType = Nothing,
      _csSourceURI = pSourceURI_
    }

-- | The ID of the source.
csSourceId :: Lens' ContextSource (Maybe Text)
csSourceId = lens _csSourceId (\s a -> s {_csSourceId = a})

-- | The type of the source.
csSourceType :: Lens' ContextSource (Maybe Text)
csSourceType = lens _csSourceType (\s a -> s {_csSourceType = a})

-- | The URI of the source.
csSourceURI :: Lens' ContextSource Text
csSourceURI = lens _csSourceURI (\s a -> s {_csSourceURI = a})

instance FromJSON ContextSource where
  parseJSON =
    withObject
      "ContextSource"
      ( \x ->
          ContextSource'
            <$> (x .:? "SourceId")
            <*> (x .:? "SourceType")
            <*> (x .: "SourceUri")
      )

instance Hashable ContextSource

instance NFData ContextSource

instance ToJSON ContextSource where
  toJSON ContextSource' {..} =
    object
      ( catMaybes
          [ ("SourceId" .=) <$> _csSourceId,
            ("SourceType" .=) <$> _csSourceType,
            Just ("SourceUri" .= _csSourceURI)
          ]
      )
