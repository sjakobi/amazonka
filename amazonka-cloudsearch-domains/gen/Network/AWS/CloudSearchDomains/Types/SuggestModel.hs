{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearchDomains.Types.SuggestModel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearchDomains.Types.SuggestModel where

import Network.AWS.CloudSearchDomains.Types.SuggestionMatch
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Container for the suggestion information returned in a @SuggestResponse@ .
--
--
--
-- /See:/ 'suggestModel' smart constructor.
data SuggestModel = SuggestModel'
  { _smSuggestions ::
      !(Maybe [SuggestionMatch]),
    _smFound :: !(Maybe Integer),
    _smQuery :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SuggestModel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smSuggestions' - The documents that match the query string.
--
-- * 'smFound' - The number of documents that were found to match the query string.
--
-- * 'smQuery' - The query string specified in the suggest request.
suggestModel ::
  SuggestModel
suggestModel =
  SuggestModel'
    { _smSuggestions = Nothing,
      _smFound = Nothing,
      _smQuery = Nothing
    }

-- | The documents that match the query string.
smSuggestions :: Lens' SuggestModel [SuggestionMatch]
smSuggestions = lens _smSuggestions (\s a -> s {_smSuggestions = a}) . _Default . _Coerce

-- | The number of documents that were found to match the query string.
smFound :: Lens' SuggestModel (Maybe Integer)
smFound = lens _smFound (\s a -> s {_smFound = a})

-- | The query string specified in the suggest request.
smQuery :: Lens' SuggestModel (Maybe Text)
smQuery = lens _smQuery (\s a -> s {_smQuery = a})

instance FromJSON SuggestModel where
  parseJSON =
    withObject
      "SuggestModel"
      ( \x ->
          SuggestModel'
            <$> (x .:? "suggestions" .!= mempty)
            <*> (x .:? "found")
            <*> (x .:? "query")
      )

instance Hashable SuggestModel

instance NFData SuggestModel
