{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.DateArrayOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.DateArrayOptions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Options for a field that contains an array of dates. Present if @IndexFieldType@ specifies the field is of type @date-array@ . All options are enabled by default.
--
--
--
-- /See:/ 'dateArrayOptions' smart constructor.
data DateArrayOptions = DateArrayOptions'
  { _dSourceFields ::
      !(Maybe Text),
    _dFacetEnabled :: !(Maybe Bool),
    _dReturnEnabled :: !(Maybe Bool),
    _dSearchEnabled :: !(Maybe Bool),
    _dDefaultValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DateArrayOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dSourceFields' - A list of source fields to map to the field.
--
-- * 'dFacetEnabled' - Whether facet information can be returned for the field.
--
-- * 'dReturnEnabled' - Whether the contents of the field can be returned in the search results.
--
-- * 'dSearchEnabled' - Whether the contents of the field are searchable.
--
-- * 'dDefaultValue' - A value to use for the field if the field isn't specified for a document.
dateArrayOptions ::
  DateArrayOptions
dateArrayOptions =
  DateArrayOptions'
    { _dSourceFields = Nothing,
      _dFacetEnabled = Nothing,
      _dReturnEnabled = Nothing,
      _dSearchEnabled = Nothing,
      _dDefaultValue = Nothing
    }

-- | A list of source fields to map to the field.
dSourceFields :: Lens' DateArrayOptions (Maybe Text)
dSourceFields = lens _dSourceFields (\s a -> s {_dSourceFields = a})

-- | Whether facet information can be returned for the field.
dFacetEnabled :: Lens' DateArrayOptions (Maybe Bool)
dFacetEnabled = lens _dFacetEnabled (\s a -> s {_dFacetEnabled = a})

-- | Whether the contents of the field can be returned in the search results.
dReturnEnabled :: Lens' DateArrayOptions (Maybe Bool)
dReturnEnabled = lens _dReturnEnabled (\s a -> s {_dReturnEnabled = a})

-- | Whether the contents of the field are searchable.
dSearchEnabled :: Lens' DateArrayOptions (Maybe Bool)
dSearchEnabled = lens _dSearchEnabled (\s a -> s {_dSearchEnabled = a})

-- | A value to use for the field if the field isn't specified for a document.
dDefaultValue :: Lens' DateArrayOptions (Maybe Text)
dDefaultValue = lens _dDefaultValue (\s a -> s {_dDefaultValue = a})

instance FromXML DateArrayOptions where
  parseXML x =
    DateArrayOptions'
      <$> (x .@? "SourceFields")
      <*> (x .@? "FacetEnabled")
      <*> (x .@? "ReturnEnabled")
      <*> (x .@? "SearchEnabled")
      <*> (x .@? "DefaultValue")

instance Hashable DateArrayOptions

instance NFData DateArrayOptions

instance ToQuery DateArrayOptions where
  toQuery DateArrayOptions' {..} =
    mconcat
      [ "SourceFields" =: _dSourceFields,
        "FacetEnabled" =: _dFacetEnabled,
        "ReturnEnabled" =: _dReturnEnabled,
        "SearchEnabled" =: _dSearchEnabled,
        "DefaultValue" =: _dDefaultValue
      ]
