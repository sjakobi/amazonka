{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearch.Types.TextArrayOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.TextArrayOptions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Options for a field that contains an array of text strings. Present if @IndexFieldType@ specifies the field is of type @text-array@ . A @text-array@ field is always searchable. All options are enabled by default.
--
--
--
-- /See:/ 'textArrayOptions' smart constructor.
data TextArrayOptions = TextArrayOptions'
  { _taoAnalysisScheme ::
      !(Maybe Text),
    _taoSourceFields :: !(Maybe Text),
    _taoReturnEnabled :: !(Maybe Bool),
    _taoDefaultValue :: !(Maybe Text),
    _taoHighlightEnabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TextArrayOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taoAnalysisScheme' - The name of an analysis scheme for a @text-array@ field.
--
-- * 'taoSourceFields' - A list of source fields to map to the field.
--
-- * 'taoReturnEnabled' - Whether the contents of the field can be returned in the search results.
--
-- * 'taoDefaultValue' - A value to use for the field if the field isn't specified for a document.
--
-- * 'taoHighlightEnabled' - Whether highlights can be returned for the field.
textArrayOptions ::
  TextArrayOptions
textArrayOptions =
  TextArrayOptions'
    { _taoAnalysisScheme = Nothing,
      _taoSourceFields = Nothing,
      _taoReturnEnabled = Nothing,
      _taoDefaultValue = Nothing,
      _taoHighlightEnabled = Nothing
    }

-- | The name of an analysis scheme for a @text-array@ field.
taoAnalysisScheme :: Lens' TextArrayOptions (Maybe Text)
taoAnalysisScheme = lens _taoAnalysisScheme (\s a -> s {_taoAnalysisScheme = a})

-- | A list of source fields to map to the field.
taoSourceFields :: Lens' TextArrayOptions (Maybe Text)
taoSourceFields = lens _taoSourceFields (\s a -> s {_taoSourceFields = a})

-- | Whether the contents of the field can be returned in the search results.
taoReturnEnabled :: Lens' TextArrayOptions (Maybe Bool)
taoReturnEnabled = lens _taoReturnEnabled (\s a -> s {_taoReturnEnabled = a})

-- | A value to use for the field if the field isn't specified for a document.
taoDefaultValue :: Lens' TextArrayOptions (Maybe Text)
taoDefaultValue = lens _taoDefaultValue (\s a -> s {_taoDefaultValue = a})

-- | Whether highlights can be returned for the field.
taoHighlightEnabled :: Lens' TextArrayOptions (Maybe Bool)
taoHighlightEnabled = lens _taoHighlightEnabled (\s a -> s {_taoHighlightEnabled = a})

instance FromXML TextArrayOptions where
  parseXML x =
    TextArrayOptions'
      <$> (x .@? "AnalysisScheme")
      <*> (x .@? "SourceFields")
      <*> (x .@? "ReturnEnabled")
      <*> (x .@? "DefaultValue")
      <*> (x .@? "HighlightEnabled")

instance Hashable TextArrayOptions

instance NFData TextArrayOptions

instance ToQuery TextArrayOptions where
  toQuery TextArrayOptions' {..} =
    mconcat
      [ "AnalysisScheme" =: _taoAnalysisScheme,
        "SourceFields" =: _taoSourceFields,
        "ReturnEnabled" =: _taoReturnEnabled,
        "DefaultValue" =: _taoDefaultValue,
        "HighlightEnabled" =: _taoHighlightEnabled
      ]
