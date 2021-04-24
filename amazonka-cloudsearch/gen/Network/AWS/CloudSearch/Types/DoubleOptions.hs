{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.DoubleOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.DoubleOptions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Options for a double-precision 64-bit floating point field. Present if @IndexFieldType@ specifies the field is of type @double@ . All options are enabled by default.
--
--
--
-- /See:/ 'doubleOptions' smart constructor.
data DoubleOptions = DoubleOptions'
  { _doSortEnabled ::
      !(Maybe Bool),
    _doFacetEnabled :: !(Maybe Bool),
    _doReturnEnabled :: !(Maybe Bool),
    _doSourceField :: !(Maybe Text),
    _doSearchEnabled :: !(Maybe Bool),
    _doDefaultValue :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DoubleOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'doSortEnabled' - Whether the field can be used to sort the search results.
--
-- * 'doFacetEnabled' - Whether facet information can be returned for the field.
--
-- * 'doReturnEnabled' - Whether the contents of the field can be returned in the search results.
--
-- * 'doSourceField' - The name of the source field to map to the field.
--
-- * 'doSearchEnabled' - Whether the contents of the field are searchable.
--
-- * 'doDefaultValue' - A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.
doubleOptions ::
  DoubleOptions
doubleOptions =
  DoubleOptions'
    { _doSortEnabled = Nothing,
      _doFacetEnabled = Nothing,
      _doReturnEnabled = Nothing,
      _doSourceField = Nothing,
      _doSearchEnabled = Nothing,
      _doDefaultValue = Nothing
    }

-- | Whether the field can be used to sort the search results.
doSortEnabled :: Lens' DoubleOptions (Maybe Bool)
doSortEnabled = lens _doSortEnabled (\s a -> s {_doSortEnabled = a})

-- | Whether facet information can be returned for the field.
doFacetEnabled :: Lens' DoubleOptions (Maybe Bool)
doFacetEnabled = lens _doFacetEnabled (\s a -> s {_doFacetEnabled = a})

-- | Whether the contents of the field can be returned in the search results.
doReturnEnabled :: Lens' DoubleOptions (Maybe Bool)
doReturnEnabled = lens _doReturnEnabled (\s a -> s {_doReturnEnabled = a})

-- | The name of the source field to map to the field.
doSourceField :: Lens' DoubleOptions (Maybe Text)
doSourceField = lens _doSourceField (\s a -> s {_doSourceField = a})

-- | Whether the contents of the field are searchable.
doSearchEnabled :: Lens' DoubleOptions (Maybe Bool)
doSearchEnabled = lens _doSearchEnabled (\s a -> s {_doSearchEnabled = a})

-- | A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.
doDefaultValue :: Lens' DoubleOptions (Maybe Double)
doDefaultValue = lens _doDefaultValue (\s a -> s {_doDefaultValue = a})

instance FromXML DoubleOptions where
  parseXML x =
    DoubleOptions'
      <$> (x .@? "SortEnabled")
      <*> (x .@? "FacetEnabled")
      <*> (x .@? "ReturnEnabled")
      <*> (x .@? "SourceField")
      <*> (x .@? "SearchEnabled")
      <*> (x .@? "DefaultValue")

instance Hashable DoubleOptions

instance NFData DoubleOptions

instance ToQuery DoubleOptions where
  toQuery DoubleOptions' {..} =
    mconcat
      [ "SortEnabled" =: _doSortEnabled,
        "FacetEnabled" =: _doFacetEnabled,
        "ReturnEnabled" =: _doReturnEnabled,
        "SourceField" =: _doSourceField,
        "SearchEnabled" =: _doSearchEnabled,
        "DefaultValue" =: _doDefaultValue
      ]
