{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.KeyValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.KeyValue where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A key-value pair.
--
--
--
-- /See:/ 'keyValue' smart constructor.
data KeyValue = KeyValue'
  { _kvKey :: !(Maybe Text),
    _kvValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'KeyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kvKey' - The unique identifier of a key-value pair.
--
-- * 'kvValue' - The value part of the identified key.
keyValue ::
  KeyValue
keyValue =
  KeyValue' {_kvKey = Nothing, _kvValue = Nothing}

-- | The unique identifier of a key-value pair.
kvKey :: Lens' KeyValue (Maybe Text)
kvKey = lens _kvKey (\s a -> s {_kvKey = a})

-- | The value part of the identified key.
kvValue :: Lens' KeyValue (Maybe Text)
kvValue = lens _kvValue (\s a -> s {_kvValue = a})

instance Hashable KeyValue

instance NFData KeyValue

instance ToJSON KeyValue where
  toJSON KeyValue' {..} =
    object
      ( catMaybes
          [("Key" .=) <$> _kvKey, ("Value" .=) <$> _kvValue]
      )
