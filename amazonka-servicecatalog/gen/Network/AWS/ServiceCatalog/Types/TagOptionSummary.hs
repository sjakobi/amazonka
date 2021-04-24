{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.TagOptionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.TagOptionSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Summary information about a TagOption.
--
--
--
-- /See:/ 'tagOptionSummary' smart constructor.
data TagOptionSummary = TagOptionSummary'
  { _tosKey ::
      !(Maybe Text),
    _tosValues :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagOptionSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tosKey' - The TagOption key.
--
-- * 'tosValues' - The TagOption value.
tagOptionSummary ::
  TagOptionSummary
tagOptionSummary =
  TagOptionSummary'
    { _tosKey = Nothing,
      _tosValues = Nothing
    }

-- | The TagOption key.
tosKey :: Lens' TagOptionSummary (Maybe Text)
tosKey = lens _tosKey (\s a -> s {_tosKey = a})

-- | The TagOption value.
tosValues :: Lens' TagOptionSummary [Text]
tosValues = lens _tosValues (\s a -> s {_tosValues = a}) . _Default . _Coerce

instance FromJSON TagOptionSummary where
  parseJSON =
    withObject
      "TagOptionSummary"
      ( \x ->
          TagOptionSummary'
            <$> (x .:? "Key") <*> (x .:? "Values" .!= mempty)
      )

instance Hashable TagOptionSummary

instance NFData TagOptionSummary
