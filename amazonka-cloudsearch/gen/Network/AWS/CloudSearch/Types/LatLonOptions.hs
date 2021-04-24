{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.LatLonOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.LatLonOptions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Options for a latlon field. A latlon field contains a location stored as a latitude and longitude value pair. Present if @IndexFieldType@ specifies the field is of type @latlon@ . All options are enabled by default.
--
--
--
-- /See:/ 'latLonOptions' smart constructor.
data LatLonOptions = LatLonOptions'
  { _lloSortEnabled ::
      !(Maybe Bool),
    _lloFacetEnabled :: !(Maybe Bool),
    _lloReturnEnabled :: !(Maybe Bool),
    _lloSourceField :: !(Maybe Text),
    _lloSearchEnabled :: !(Maybe Bool),
    _lloDefaultValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LatLonOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lloSortEnabled' - Whether the field can be used to sort the search results.
--
-- * 'lloFacetEnabled' - Whether facet information can be returned for the field.
--
-- * 'lloReturnEnabled' - Whether the contents of the field can be returned in the search results.
--
-- * 'lloSourceField' - Undocumented member.
--
-- * 'lloSearchEnabled' - Whether the contents of the field are searchable.
--
-- * 'lloDefaultValue' - A value to use for the field if the field isn't specified for a document.
latLonOptions ::
  LatLonOptions
latLonOptions =
  LatLonOptions'
    { _lloSortEnabled = Nothing,
      _lloFacetEnabled = Nothing,
      _lloReturnEnabled = Nothing,
      _lloSourceField = Nothing,
      _lloSearchEnabled = Nothing,
      _lloDefaultValue = Nothing
    }

-- | Whether the field can be used to sort the search results.
lloSortEnabled :: Lens' LatLonOptions (Maybe Bool)
lloSortEnabled = lens _lloSortEnabled (\s a -> s {_lloSortEnabled = a})

-- | Whether facet information can be returned for the field.
lloFacetEnabled :: Lens' LatLonOptions (Maybe Bool)
lloFacetEnabled = lens _lloFacetEnabled (\s a -> s {_lloFacetEnabled = a})

-- | Whether the contents of the field can be returned in the search results.
lloReturnEnabled :: Lens' LatLonOptions (Maybe Bool)
lloReturnEnabled = lens _lloReturnEnabled (\s a -> s {_lloReturnEnabled = a})

-- | Undocumented member.
lloSourceField :: Lens' LatLonOptions (Maybe Text)
lloSourceField = lens _lloSourceField (\s a -> s {_lloSourceField = a})

-- | Whether the contents of the field are searchable.
lloSearchEnabled :: Lens' LatLonOptions (Maybe Bool)
lloSearchEnabled = lens _lloSearchEnabled (\s a -> s {_lloSearchEnabled = a})

-- | A value to use for the field if the field isn't specified for a document.
lloDefaultValue :: Lens' LatLonOptions (Maybe Text)
lloDefaultValue = lens _lloDefaultValue (\s a -> s {_lloDefaultValue = a})

instance FromXML LatLonOptions where
  parseXML x =
    LatLonOptions'
      <$> (x .@? "SortEnabled")
      <*> (x .@? "FacetEnabled")
      <*> (x .@? "ReturnEnabled")
      <*> (x .@? "SourceField")
      <*> (x .@? "SearchEnabled")
      <*> (x .@? "DefaultValue")

instance Hashable LatLonOptions

instance NFData LatLonOptions

instance ToQuery LatLonOptions where
  toQuery LatLonOptions' {..} =
    mconcat
      [ "SortEnabled" =: _lloSortEnabled,
        "FacetEnabled" =: _lloFacetEnabled,
        "ReturnEnabled" =: _lloReturnEnabled,
        "SourceField" =: _lloSourceField,
        "SearchEnabled" =: _lloSearchEnabled,
        "DefaultValue" =: _lloDefaultValue
      ]
