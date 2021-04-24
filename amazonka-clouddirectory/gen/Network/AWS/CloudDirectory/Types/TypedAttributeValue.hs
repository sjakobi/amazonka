{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.TypedAttributeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.TypedAttributeValue where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the data for a typed attribute. You can set one, and only one, of the elements. Each attribute in an item is a name-value pair. Attributes have a single value.
--
--
--
-- /See:/ 'typedAttributeValue' smart constructor.
data TypedAttributeValue = TypedAttributeValue'
  { _tavStringValue ::
      !(Maybe Text),
    _tavBooleanValue ::
      !(Maybe Bool),
    _tavBinaryValue ::
      !(Maybe Base64),
    _tavNumberValue ::
      !(Maybe Text),
    _tavDatetimeValue ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TypedAttributeValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tavStringValue' - A string data value.
--
-- * 'tavBooleanValue' - A Boolean data value.
--
-- * 'tavBinaryValue' - A binary data value.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'tavNumberValue' - A number data value.
--
-- * 'tavDatetimeValue' - A date and time value.
typedAttributeValue ::
  TypedAttributeValue
typedAttributeValue =
  TypedAttributeValue'
    { _tavStringValue = Nothing,
      _tavBooleanValue = Nothing,
      _tavBinaryValue = Nothing,
      _tavNumberValue = Nothing,
      _tavDatetimeValue = Nothing
    }

-- | A string data value.
tavStringValue :: Lens' TypedAttributeValue (Maybe Text)
tavStringValue = lens _tavStringValue (\s a -> s {_tavStringValue = a})

-- | A Boolean data value.
tavBooleanValue :: Lens' TypedAttributeValue (Maybe Bool)
tavBooleanValue = lens _tavBooleanValue (\s a -> s {_tavBooleanValue = a})

-- | A binary data value.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
tavBinaryValue :: Lens' TypedAttributeValue (Maybe ByteString)
tavBinaryValue = lens _tavBinaryValue (\s a -> s {_tavBinaryValue = a}) . mapping _Base64

-- | A number data value.
tavNumberValue :: Lens' TypedAttributeValue (Maybe Text)
tavNumberValue = lens _tavNumberValue (\s a -> s {_tavNumberValue = a})

-- | A date and time value.
tavDatetimeValue :: Lens' TypedAttributeValue (Maybe UTCTime)
tavDatetimeValue = lens _tavDatetimeValue (\s a -> s {_tavDatetimeValue = a}) . mapping _Time

instance FromJSON TypedAttributeValue where
  parseJSON =
    withObject
      "TypedAttributeValue"
      ( \x ->
          TypedAttributeValue'
            <$> (x .:? "StringValue")
            <*> (x .:? "BooleanValue")
            <*> (x .:? "BinaryValue")
            <*> (x .:? "NumberValue")
            <*> (x .:? "DatetimeValue")
      )

instance Hashable TypedAttributeValue

instance NFData TypedAttributeValue

instance ToJSON TypedAttributeValue where
  toJSON TypedAttributeValue' {..} =
    object
      ( catMaybes
          [ ("StringValue" .=) <$> _tavStringValue,
            ("BooleanValue" .=) <$> _tavBooleanValue,
            ("BinaryValue" .=) <$> _tavBinaryValue,
            ("NumberValue" .=) <$> _tavNumberValue,
            ("DatetimeValue" .=) <$> _tavDatetimeValue
          ]
      )
