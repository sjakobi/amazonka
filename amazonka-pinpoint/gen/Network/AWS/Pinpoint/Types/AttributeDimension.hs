{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.AttributeDimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.AttributeDimension where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.AttributeType
import Network.AWS.Prelude

-- | Specifies attribute-based criteria for including or excluding endpoints from a segment.
--
--
--
-- /See:/ 'attributeDimension' smart constructor.
data AttributeDimension = AttributeDimension'
  { _adAttributeType ::
      !(Maybe AttributeType),
    _adValues :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AttributeDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adAttributeType' - The type of segment dimension to use. Valid values are:     * INCLUSIVE - endpoints that have attributes matching the values are included in the segment.    * EXCLUSIVE - endpoints that have attributes matching the values are excluded in the segment.    * CONTAINS - endpoints that have attributes' substrings match the values are included in the segment.    * BEFORE - endpoints with attributes read as ISO_INSTANT datetimes before the value are included in the segment.    * AFTER - endpoints with attributes read as ISO_INSTANT datetimes after the value are included in the segment.    * ON - endpoints with attributes read as ISO_INSTANT dates on the value are included in the segment. Time is ignored in this comparison.    * BETWEEN - endpoints with attributes read as ISO_INSTANT datetimes between the values are included in the segment.
--
-- * 'adValues' - The criteria values to use for the segment dimension. Depending on the value of the AttributeType property, endpoints are included or excluded from the segment if their attribute values match the criteria values.
attributeDimension ::
  AttributeDimension
attributeDimension =
  AttributeDimension'
    { _adAttributeType = Nothing,
      _adValues = mempty
    }

-- | The type of segment dimension to use. Valid values are:     * INCLUSIVE - endpoints that have attributes matching the values are included in the segment.    * EXCLUSIVE - endpoints that have attributes matching the values are excluded in the segment.    * CONTAINS - endpoints that have attributes' substrings match the values are included in the segment.    * BEFORE - endpoints with attributes read as ISO_INSTANT datetimes before the value are included in the segment.    * AFTER - endpoints with attributes read as ISO_INSTANT datetimes after the value are included in the segment.    * ON - endpoints with attributes read as ISO_INSTANT dates on the value are included in the segment. Time is ignored in this comparison.    * BETWEEN - endpoints with attributes read as ISO_INSTANT datetimes between the values are included in the segment.
adAttributeType :: Lens' AttributeDimension (Maybe AttributeType)
adAttributeType = lens _adAttributeType (\s a -> s {_adAttributeType = a})

-- | The criteria values to use for the segment dimension. Depending on the value of the AttributeType property, endpoints are included or excluded from the segment if their attribute values match the criteria values.
adValues :: Lens' AttributeDimension [Text]
adValues = lens _adValues (\s a -> s {_adValues = a}) . _Coerce

instance FromJSON AttributeDimension where
  parseJSON =
    withObject
      "AttributeDimension"
      ( \x ->
          AttributeDimension'
            <$> (x .:? "AttributeType")
            <*> (x .:? "Values" .!= mempty)
      )

instance Hashable AttributeDimension

instance NFData AttributeDimension

instance ToJSON AttributeDimension where
  toJSON AttributeDimension' {..} =
    object
      ( catMaybes
          [ ("AttributeType" .=) <$> _adAttributeType,
            Just ("Values" .= _adValues)
          ]
      )
