{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionBodyParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionBodyParameter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Additional parameter included in the body. You can include up to 100 additional body parameters per request. An event payload cannot exceed 64 KB.
--
--
--
-- /See:/ 'connectionBodyParameter' smart constructor.
data ConnectionBodyParameter = ConnectionBodyParameter'
  { _cbpKey ::
      !(Maybe Text),
    _cbpIsValueSecret ::
      !(Maybe Bool),
    _cbpValue ::
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

-- | Creates a value of 'ConnectionBodyParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbpKey' - The key for the parameter.
--
-- * 'cbpIsValueSecret' - Specified whether the value is secret.
--
-- * 'cbpValue' - The value associated with the key.
connectionBodyParameter ::
  ConnectionBodyParameter
connectionBodyParameter =
  ConnectionBodyParameter'
    { _cbpKey = Nothing,
      _cbpIsValueSecret = Nothing,
      _cbpValue = Nothing
    }

-- | The key for the parameter.
cbpKey :: Lens' ConnectionBodyParameter (Maybe Text)
cbpKey = lens _cbpKey (\s a -> s {_cbpKey = a})

-- | Specified whether the value is secret.
cbpIsValueSecret :: Lens' ConnectionBodyParameter (Maybe Bool)
cbpIsValueSecret = lens _cbpIsValueSecret (\s a -> s {_cbpIsValueSecret = a})

-- | The value associated with the key.
cbpValue :: Lens' ConnectionBodyParameter (Maybe Text)
cbpValue = lens _cbpValue (\s a -> s {_cbpValue = a})

instance FromJSON ConnectionBodyParameter where
  parseJSON =
    withObject
      "ConnectionBodyParameter"
      ( \x ->
          ConnectionBodyParameter'
            <$> (x .:? "Key")
            <*> (x .:? "IsValueSecret")
            <*> (x .:? "Value")
      )

instance Hashable ConnectionBodyParameter

instance NFData ConnectionBodyParameter

instance ToJSON ConnectionBodyParameter where
  toJSON ConnectionBodyParameter' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _cbpKey,
            ("IsValueSecret" .=) <$> _cbpIsValueSecret,
            ("Value" .=) <$> _cbpValue
          ]
      )
