{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.DoubleArrayOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.DoubleArrayOptions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Options for a field that contains an array of double-precision 64-bit floating point values. Present if @IndexFieldType@ specifies the field is of type @double-array@ . All options are enabled by default.
--
--
--
-- /See:/ 'doubleArrayOptions' smart constructor.
data DoubleArrayOptions = DoubleArrayOptions'
  { _daoSourceFields ::
      !(Maybe Text),
    _daoFacetEnabled :: !(Maybe Bool),
    _daoReturnEnabled ::
      !(Maybe Bool),
    _daoSearchEnabled ::
      !(Maybe Bool),
    _daoDefaultValue ::
      !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DoubleArrayOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daoSourceFields' - A list of source fields to map to the field.
--
-- * 'daoFacetEnabled' - Whether facet information can be returned for the field.
--
-- * 'daoReturnEnabled' - Whether the contents of the field can be returned in the search results.
--
-- * 'daoSearchEnabled' - Whether the contents of the field are searchable.
--
-- * 'daoDefaultValue' - A value to use for the field if the field isn't specified for a document.
doubleArrayOptions ::
  DoubleArrayOptions
doubleArrayOptions =
  DoubleArrayOptions'
    { _daoSourceFields = Nothing,
      _daoFacetEnabled = Nothing,
      _daoReturnEnabled = Nothing,
      _daoSearchEnabled = Nothing,
      _daoDefaultValue = Nothing
    }

-- | A list of source fields to map to the field.
daoSourceFields :: Lens' DoubleArrayOptions (Maybe Text)
daoSourceFields = lens _daoSourceFields (\s a -> s {_daoSourceFields = a})

-- | Whether facet information can be returned for the field.
daoFacetEnabled :: Lens' DoubleArrayOptions (Maybe Bool)
daoFacetEnabled = lens _daoFacetEnabled (\s a -> s {_daoFacetEnabled = a})

-- | Whether the contents of the field can be returned in the search results.
daoReturnEnabled :: Lens' DoubleArrayOptions (Maybe Bool)
daoReturnEnabled = lens _daoReturnEnabled (\s a -> s {_daoReturnEnabled = a})

-- | Whether the contents of the field are searchable.
daoSearchEnabled :: Lens' DoubleArrayOptions (Maybe Bool)
daoSearchEnabled = lens _daoSearchEnabled (\s a -> s {_daoSearchEnabled = a})

-- | A value to use for the field if the field isn't specified for a document.
daoDefaultValue :: Lens' DoubleArrayOptions (Maybe Double)
daoDefaultValue = lens _daoDefaultValue (\s a -> s {_daoDefaultValue = a})

instance FromXML DoubleArrayOptions where
  parseXML x =
    DoubleArrayOptions'
      <$> (x .@? "SourceFields")
      <*> (x .@? "FacetEnabled")
      <*> (x .@? "ReturnEnabled")
      <*> (x .@? "SearchEnabled")
      <*> (x .@? "DefaultValue")

instance Hashable DoubleArrayOptions

instance NFData DoubleArrayOptions

instance ToQuery DoubleArrayOptions where
  toQuery DoubleArrayOptions' {..} =
    mconcat
      [ "SourceFields" =: _daoSourceFields,
        "FacetEnabled" =: _daoFacetEnabled,
        "ReturnEnabled" =: _daoReturnEnabled,
        "SearchEnabled" =: _daoSearchEnabled,
        "DefaultValue" =: _daoDefaultValue
      ]
