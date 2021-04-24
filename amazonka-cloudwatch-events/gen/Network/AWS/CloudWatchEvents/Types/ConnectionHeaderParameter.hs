{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionHeaderParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionHeaderParameter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Additional parameter included in the header. You can include up to 100 additional header parameters per request. An event payload cannot exceed 64 KB.
--
--
--
-- /See:/ 'connectionHeaderParameter' smart constructor.
data ConnectionHeaderParameter = ConnectionHeaderParameter'
  { _chpKey ::
      !(Maybe Text),
    _chpIsValueSecret ::
      !(Maybe Bool),
    _chpValue ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConnectionHeaderParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chpKey' - The key for the parameter.
--
-- * 'chpIsValueSecret' - Specified whether the value is a secret.
--
-- * 'chpValue' - The value associated with the key.
connectionHeaderParameter ::
  ConnectionHeaderParameter
connectionHeaderParameter =
  ConnectionHeaderParameter'
    { _chpKey = Nothing,
      _chpIsValueSecret = Nothing,
      _chpValue = Nothing
    }

-- | The key for the parameter.
chpKey :: Lens' ConnectionHeaderParameter (Maybe Text)
chpKey = lens _chpKey (\s a -> s {_chpKey = a})

-- | Specified whether the value is a secret.
chpIsValueSecret :: Lens' ConnectionHeaderParameter (Maybe Bool)
chpIsValueSecret = lens _chpIsValueSecret (\s a -> s {_chpIsValueSecret = a})

-- | The value associated with the key.
chpValue :: Lens' ConnectionHeaderParameter (Maybe Text)
chpValue = lens _chpValue (\s a -> s {_chpValue = a})

instance FromJSON ConnectionHeaderParameter where
  parseJSON =
    withObject
      "ConnectionHeaderParameter"
      ( \x ->
          ConnectionHeaderParameter'
            <$> (x .:? "Key")
            <*> (x .:? "IsValueSecret")
            <*> (x .:? "Value")
      )

instance Hashable ConnectionHeaderParameter

instance NFData ConnectionHeaderParameter

instance ToJSON ConnectionHeaderParameter where
  toJSON ConnectionHeaderParameter' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _chpKey,
            ("IsValueSecret" .=) <$> _chpIsValueSecret,
            ("Value" .=) <$> _chpValue
          ]
      )
