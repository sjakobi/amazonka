{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AssetPropertyVariant
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AssetPropertyVariant where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains an asset property value (of a single type).
--
--
--
-- /See:/ 'assetPropertyVariant' smart constructor.
data AssetPropertyVariant = AssetPropertyVariant'
  { _apvDoubleValue ::
      !(Maybe Text),
    _apvStringValue ::
      !(Maybe Text),
    _apvBooleanValue ::
      !(Maybe Text),
    _apvIntegerValue ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssetPropertyVariant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apvDoubleValue' - Optional. A string that contains the double value of the value entry. Accepts substitution templates.
--
-- * 'apvStringValue' - Optional. The string value of the value entry. Accepts substitution templates.
--
-- * 'apvBooleanValue' - Optional. A string that contains the boolean value (@true@ or @false@ ) of the value entry. Accepts substitution templates.
--
-- * 'apvIntegerValue' - Optional. A string that contains the integer value of the value entry. Accepts substitution templates.
assetPropertyVariant ::
  AssetPropertyVariant
assetPropertyVariant =
  AssetPropertyVariant'
    { _apvDoubleValue = Nothing,
      _apvStringValue = Nothing,
      _apvBooleanValue = Nothing,
      _apvIntegerValue = Nothing
    }

-- | Optional. A string that contains the double value of the value entry. Accepts substitution templates.
apvDoubleValue :: Lens' AssetPropertyVariant (Maybe Text)
apvDoubleValue = lens _apvDoubleValue (\s a -> s {_apvDoubleValue = a})

-- | Optional. The string value of the value entry. Accepts substitution templates.
apvStringValue :: Lens' AssetPropertyVariant (Maybe Text)
apvStringValue = lens _apvStringValue (\s a -> s {_apvStringValue = a})

-- | Optional. A string that contains the boolean value (@true@ or @false@ ) of the value entry. Accepts substitution templates.
apvBooleanValue :: Lens' AssetPropertyVariant (Maybe Text)
apvBooleanValue = lens _apvBooleanValue (\s a -> s {_apvBooleanValue = a})

-- | Optional. A string that contains the integer value of the value entry. Accepts substitution templates.
apvIntegerValue :: Lens' AssetPropertyVariant (Maybe Text)
apvIntegerValue = lens _apvIntegerValue (\s a -> s {_apvIntegerValue = a})

instance FromJSON AssetPropertyVariant where
  parseJSON =
    withObject
      "AssetPropertyVariant"
      ( \x ->
          AssetPropertyVariant'
            <$> (x .:? "doubleValue")
            <*> (x .:? "stringValue")
            <*> (x .:? "booleanValue")
            <*> (x .:? "integerValue")
      )

instance Hashable AssetPropertyVariant

instance NFData AssetPropertyVariant

instance ToJSON AssetPropertyVariant where
  toJSON AssetPropertyVariant' {..} =
    object
      ( catMaybes
          [ ("doubleValue" .=) <$> _apvDoubleValue,
            ("stringValue" .=) <$> _apvStringValue,
            ("booleanValue" .=) <$> _apvBooleanValue,
            ("integerValue" .=) <$> _apvIntegerValue
          ]
      )
