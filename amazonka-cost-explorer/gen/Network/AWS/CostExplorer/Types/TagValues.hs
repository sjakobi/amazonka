{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.TagValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.TagValues where

import Network.AWS.CostExplorer.Types.MatchOption
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The values that are available for a tag.
--
--
-- If @Values@ and @Key@ are not specified, the @ABSENT@ @MatchOption@ is applied to all tags. That is, filtering on resources with no tags.
--
-- If @Values@ is provided and @Key@ is not specified, the @ABSENT@ @MatchOption@ is applied to the tag @Key@ only. That is, filtering on resources without the given tag key.
--
--
-- /See:/ 'tagValues' smart constructor.
data TagValues = TagValues'
  { _tvKey :: !(Maybe Text),
    _tvValues :: !(Maybe [Text]),
    _tvMatchOptions :: !(Maybe [MatchOption])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagValues' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvKey' - The key for the tag.
--
-- * 'tvValues' - The specific value of the tag.
--
-- * 'tvMatchOptions' - The match options that you can use to filter your results. @MatchOptions@ is only applicable for actions related to Cost Category. The default values for @MatchOptions@ are @EQUALS@ and @CASE_SENSITIVE@ .
tagValues ::
  TagValues
tagValues =
  TagValues'
    { _tvKey = Nothing,
      _tvValues = Nothing,
      _tvMatchOptions = Nothing
    }

-- | The key for the tag.
tvKey :: Lens' TagValues (Maybe Text)
tvKey = lens _tvKey (\s a -> s {_tvKey = a})

-- | The specific value of the tag.
tvValues :: Lens' TagValues [Text]
tvValues = lens _tvValues (\s a -> s {_tvValues = a}) . _Default . _Coerce

-- | The match options that you can use to filter your results. @MatchOptions@ is only applicable for actions related to Cost Category. The default values for @MatchOptions@ are @EQUALS@ and @CASE_SENSITIVE@ .
tvMatchOptions :: Lens' TagValues [MatchOption]
tvMatchOptions = lens _tvMatchOptions (\s a -> s {_tvMatchOptions = a}) . _Default . _Coerce

instance FromJSON TagValues where
  parseJSON =
    withObject
      "TagValues"
      ( \x ->
          TagValues'
            <$> (x .:? "Key")
            <*> (x .:? "Values" .!= mempty)
            <*> (x .:? "MatchOptions" .!= mempty)
      )

instance Hashable TagValues

instance NFData TagValues

instance ToJSON TagValues where
  toJSON TagValues' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _tvKey,
            ("Values" .=) <$> _tvValues,
            ("MatchOptions" .=) <$> _tvMatchOptions
          ]
      )
