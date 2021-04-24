{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.DateOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.DateOptions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Options for a date field. Dates and times are specified in UTC (Coordinated Universal Time) according to IETF RFC3339: yyyy-mm-ddT00:00:00Z. Present if @IndexFieldType@ specifies the field is of type @date@ . All options are enabled by default.
--
--
--
-- /See:/ 'dateOptions' smart constructor.
data DateOptions = DateOptions'
  { _dosSortEnabled ::
      !(Maybe Bool),
    _dosFacetEnabled :: !(Maybe Bool),
    _dosReturnEnabled :: !(Maybe Bool),
    _dosSourceField :: !(Maybe Text),
    _dosSearchEnabled :: !(Maybe Bool),
    _dosDefaultValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DateOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dosSortEnabled' - Whether the field can be used to sort the search results.
--
-- * 'dosFacetEnabled' - Whether facet information can be returned for the field.
--
-- * 'dosReturnEnabled' - Whether the contents of the field can be returned in the search results.
--
-- * 'dosSourceField' - Undocumented member.
--
-- * 'dosSearchEnabled' - Whether the contents of the field are searchable.
--
-- * 'dosDefaultValue' - A value to use for the field if the field isn't specified for a document.
dateOptions ::
  DateOptions
dateOptions =
  DateOptions'
    { _dosSortEnabled = Nothing,
      _dosFacetEnabled = Nothing,
      _dosReturnEnabled = Nothing,
      _dosSourceField = Nothing,
      _dosSearchEnabled = Nothing,
      _dosDefaultValue = Nothing
    }

-- | Whether the field can be used to sort the search results.
dosSortEnabled :: Lens' DateOptions (Maybe Bool)
dosSortEnabled = lens _dosSortEnabled (\s a -> s {_dosSortEnabled = a})

-- | Whether facet information can be returned for the field.
dosFacetEnabled :: Lens' DateOptions (Maybe Bool)
dosFacetEnabled = lens _dosFacetEnabled (\s a -> s {_dosFacetEnabled = a})

-- | Whether the contents of the field can be returned in the search results.
dosReturnEnabled :: Lens' DateOptions (Maybe Bool)
dosReturnEnabled = lens _dosReturnEnabled (\s a -> s {_dosReturnEnabled = a})

-- | Undocumented member.
dosSourceField :: Lens' DateOptions (Maybe Text)
dosSourceField = lens _dosSourceField (\s a -> s {_dosSourceField = a})

-- | Whether the contents of the field are searchable.
dosSearchEnabled :: Lens' DateOptions (Maybe Bool)
dosSearchEnabled = lens _dosSearchEnabled (\s a -> s {_dosSearchEnabled = a})

-- | A value to use for the field if the field isn't specified for a document.
dosDefaultValue :: Lens' DateOptions (Maybe Text)
dosDefaultValue = lens _dosDefaultValue (\s a -> s {_dosDefaultValue = a})

instance FromXML DateOptions where
  parseXML x =
    DateOptions'
      <$> (x .@? "SortEnabled")
      <*> (x .@? "FacetEnabled")
      <*> (x .@? "ReturnEnabled")
      <*> (x .@? "SourceField")
      <*> (x .@? "SearchEnabled")
      <*> (x .@? "DefaultValue")

instance Hashable DateOptions

instance NFData DateOptions

instance ToQuery DateOptions where
  toQuery DateOptions' {..} =
    mconcat
      [ "SortEnabled" =: _dosSortEnabled,
        "FacetEnabled" =: _dosFacetEnabled,
        "ReturnEnabled" =: _dosReturnEnabled,
        "SourceField" =: _dosSourceField,
        "SearchEnabled" =: _dosSearchEnabled,
        "DefaultValue" =: _dosDefaultValue
      ]
