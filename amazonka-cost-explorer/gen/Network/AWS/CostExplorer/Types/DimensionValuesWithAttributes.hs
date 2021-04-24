{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.DimensionValuesWithAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.DimensionValuesWithAttributes where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The metadata of a specific type that you can use to filter and group your results. You can use @GetDimensionValues@ to find specific values.
--
--
--
-- /See:/ 'dimensionValuesWithAttributes' smart constructor.
data DimensionValuesWithAttributes = DimensionValuesWithAttributes'
  { _dvwaAttributes ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _dvwaValue ::
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

-- | Creates a value of 'DimensionValuesWithAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvwaAttributes' - The attribute that applies to a specific @Dimension@ .
--
-- * 'dvwaValue' - The value of a dimension with a specific attribute.
dimensionValuesWithAttributes ::
  DimensionValuesWithAttributes
dimensionValuesWithAttributes =
  DimensionValuesWithAttributes'
    { _dvwaAttributes =
        Nothing,
      _dvwaValue = Nothing
    }

-- | The attribute that applies to a specific @Dimension@ .
dvwaAttributes :: Lens' DimensionValuesWithAttributes (HashMap Text Text)
dvwaAttributes = lens _dvwaAttributes (\s a -> s {_dvwaAttributes = a}) . _Default . _Map

-- | The value of a dimension with a specific attribute.
dvwaValue :: Lens' DimensionValuesWithAttributes (Maybe Text)
dvwaValue = lens _dvwaValue (\s a -> s {_dvwaValue = a})

instance FromJSON DimensionValuesWithAttributes where
  parseJSON =
    withObject
      "DimensionValuesWithAttributes"
      ( \x ->
          DimensionValuesWithAttributes'
            <$> (x .:? "Attributes" .!= mempty) <*> (x .:? "Value")
      )

instance Hashable DimensionValuesWithAttributes

instance NFData DimensionValuesWithAttributes
