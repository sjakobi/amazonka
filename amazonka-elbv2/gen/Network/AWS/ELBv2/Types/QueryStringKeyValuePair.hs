{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.QueryStringKeyValuePair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.QueryStringKeyValuePair where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a key/value pair.
--
--
--
-- /See:/ 'queryStringKeyValuePair' smart constructor.
data QueryStringKeyValuePair = QueryStringKeyValuePair'
  { _qskvpKey ::
      !(Maybe Text),
    _qskvpValue ::
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

-- | Creates a value of 'QueryStringKeyValuePair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qskvpKey' - The key. You can omit the key.
--
-- * 'qskvpValue' - The value.
queryStringKeyValuePair ::
  QueryStringKeyValuePair
queryStringKeyValuePair =
  QueryStringKeyValuePair'
    { _qskvpKey = Nothing,
      _qskvpValue = Nothing
    }

-- | The key. You can omit the key.
qskvpKey :: Lens' QueryStringKeyValuePair (Maybe Text)
qskvpKey = lens _qskvpKey (\s a -> s {_qskvpKey = a})

-- | The value.
qskvpValue :: Lens' QueryStringKeyValuePair (Maybe Text)
qskvpValue = lens _qskvpValue (\s a -> s {_qskvpValue = a})

instance FromXML QueryStringKeyValuePair where
  parseXML x =
    QueryStringKeyValuePair'
      <$> (x .@? "Key") <*> (x .@? "Value")

instance Hashable QueryStringKeyValuePair

instance NFData QueryStringKeyValuePair

instance ToQuery QueryStringKeyValuePair where
  toQuery QueryStringKeyValuePair' {..} =
    mconcat
      ["Key" =: _qskvpKey, "Value" =: _qskvpValue]
