{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ActionSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ActionSource where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure describing the source of an action.
--
--
--
-- /See:/ 'actionSource' smart constructor.
data ActionSource = ActionSource'
  { _aSourceId ::
      !(Maybe Text),
    _aSourceType :: !(Maybe Text),
    _aSourceURI :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActionSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aSourceId' - The ID of the source.
--
-- * 'aSourceType' - The type of the source.
--
-- * 'aSourceURI' - The URI of the source.
actionSource ::
  -- | 'aSourceURI'
  Text ->
  ActionSource
actionSource pSourceURI_ =
  ActionSource'
    { _aSourceId = Nothing,
      _aSourceType = Nothing,
      _aSourceURI = pSourceURI_
    }

-- | The ID of the source.
aSourceId :: Lens' ActionSource (Maybe Text)
aSourceId = lens _aSourceId (\s a -> s {_aSourceId = a})

-- | The type of the source.
aSourceType :: Lens' ActionSource (Maybe Text)
aSourceType = lens _aSourceType (\s a -> s {_aSourceType = a})

-- | The URI of the source.
aSourceURI :: Lens' ActionSource Text
aSourceURI = lens _aSourceURI (\s a -> s {_aSourceURI = a})

instance FromJSON ActionSource where
  parseJSON =
    withObject
      "ActionSource"
      ( \x ->
          ActionSource'
            <$> (x .:? "SourceId")
            <*> (x .:? "SourceType")
            <*> (x .: "SourceUri")
      )

instance Hashable ActionSource

instance NFData ActionSource

instance ToJSON ActionSource where
  toJSON ActionSource' {..} =
    object
      ( catMaybes
          [ ("SourceId" .=) <$> _aSourceId,
            ("SourceType" .=) <$> _aSourceType,
            Just ("SourceUri" .= _aSourceURI)
          ]
      )
