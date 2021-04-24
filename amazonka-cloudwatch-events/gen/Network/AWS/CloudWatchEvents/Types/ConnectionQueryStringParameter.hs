{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionQueryStringParameter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionQueryStringParameter where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Additional query string parameter for the connection. You can include up to 100 additional query string parameters per request. Each additional parameter counts towards the event payload size, which cannot exceed 64 KB.
--
--
--
-- /See:/ 'connectionQueryStringParameter' smart constructor.
data ConnectionQueryStringParameter = ConnectionQueryStringParameter'
  { _cqspKey ::
      !( Maybe
           Text
       ),
    _cqspIsValueSecret ::
      !( Maybe
           Bool
       ),
    _cqspValue ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ConnectionQueryStringParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cqspKey' - The key for a query string parameter.
--
-- * 'cqspIsValueSecret' - Specifies whether the value is secret.
--
-- * 'cqspValue' - The value associated with the key for the query string parameter.
connectionQueryStringParameter ::
  ConnectionQueryStringParameter
connectionQueryStringParameter =
  ConnectionQueryStringParameter'
    { _cqspKey = Nothing,
      _cqspIsValueSecret = Nothing,
      _cqspValue = Nothing
    }

-- | The key for a query string parameter.
cqspKey :: Lens' ConnectionQueryStringParameter (Maybe Text)
cqspKey = lens _cqspKey (\s a -> s {_cqspKey = a})

-- | Specifies whether the value is secret.
cqspIsValueSecret :: Lens' ConnectionQueryStringParameter (Maybe Bool)
cqspIsValueSecret = lens _cqspIsValueSecret (\s a -> s {_cqspIsValueSecret = a})

-- | The value associated with the key for the query string parameter.
cqspValue :: Lens' ConnectionQueryStringParameter (Maybe Text)
cqspValue = lens _cqspValue (\s a -> s {_cqspValue = a})

instance FromJSON ConnectionQueryStringParameter where
  parseJSON =
    withObject
      "ConnectionQueryStringParameter"
      ( \x ->
          ConnectionQueryStringParameter'
            <$> (x .:? "Key")
            <*> (x .:? "IsValueSecret")
            <*> (x .:? "Value")
      )

instance Hashable ConnectionQueryStringParameter

instance NFData ConnectionQueryStringParameter

instance ToJSON ConnectionQueryStringParameter where
  toJSON ConnectionQueryStringParameter' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _cqspKey,
            ("IsValueSecret" .=) <$> _cqspIsValueSecret,
            ("Value" .=) <$> _cqspValue
          ]
      )
