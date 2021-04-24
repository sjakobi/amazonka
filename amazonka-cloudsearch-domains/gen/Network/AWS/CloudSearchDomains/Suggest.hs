{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudSearchDomains.Suggest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves autocomplete suggestions for a partial query string. You can use suggestions enable you to display likely matches before users finish typing. In Amazon CloudSearch, suggestions are based on the contents of a particular text field. When you request suggestions, Amazon CloudSearch finds all of the documents whose values in the suggester field start with the specified query string. The beginning of the field must match the query string to be considered a match.
--
--
-- For more information about configuring suggesters and retrieving suggestions, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html Getting Suggestions> in the /Amazon CloudSearch Developer Guide/ .
--
-- The endpoint for submitting @Suggest@ requests is domain-specific. You submit suggest requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service @DescribeDomains@ action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console.
module Network.AWS.CloudSearchDomains.Suggest
  ( -- * Creating a Request
    suggest,
    Suggest,

    -- * Request Lenses
    sugSize,
    sugQuery,
    sugSuggester,

    -- * Destructuring the Response
    suggestResponse,
    SuggestResponse,

    -- * Response Lenses
    srrsStatus,
    srrsSuggest,
    srrsResponseStatus,
  )
where

import Network.AWS.CloudSearchDomains.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @Suggest@ request.
--
--
--
-- /See:/ 'suggest' smart constructor.
data Suggest = Suggest'
  { _sugSize :: !(Maybe Integer),
    _sugQuery :: !Text,
    _sugSuggester :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Suggest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sugSize' - Specifies the maximum number of suggestions to return.
--
-- * 'sugQuery' - Specifies the string for which you want to get suggestions.
--
-- * 'sugSuggester' - Specifies the name of the suggester to use to find suggested matches.
suggest ::
  -- | 'sugQuery'
  Text ->
  -- | 'sugSuggester'
  Text ->
  Suggest
suggest pQuery_ pSuggester_ =
  Suggest'
    { _sugSize = Nothing,
      _sugQuery = pQuery_,
      _sugSuggester = pSuggester_
    }

-- | Specifies the maximum number of suggestions to return.
sugSize :: Lens' Suggest (Maybe Integer)
sugSize = lens _sugSize (\s a -> s {_sugSize = a})

-- | Specifies the string for which you want to get suggestions.
sugQuery :: Lens' Suggest Text
sugQuery = lens _sugQuery (\s a -> s {_sugQuery = a})

-- | Specifies the name of the suggester to use to find suggested matches.
sugSuggester :: Lens' Suggest Text
sugSuggester = lens _sugSuggester (\s a -> s {_sugSuggester = a})

instance AWSRequest Suggest where
  type Rs Suggest = SuggestResponse
  request = get cloudSearchDomains
  response =
    receiveJSON
      ( \s h x ->
          SuggestResponse'
            <$> (x .?> "status")
            <*> (x .?> "suggest")
            <*> (pure (fromEnum s))
      )

instance Hashable Suggest

instance NFData Suggest

instance ToHeaders Suggest where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath Suggest where
  toPath = const "/2013-01-01/suggest"

instance ToQuery Suggest where
  toQuery Suggest' {..} =
    mconcat
      [ "size" =: _sugSize,
        "q" =: _sugQuery,
        "suggester" =: _sugSuggester,
        "format=sdk&pretty=true"
      ]

-- | Contains the response to a @Suggest@ request.
--
--
--
-- /See:/ 'suggestResponse' smart constructor.
data SuggestResponse = SuggestResponse'
  { _srrsStatus ::
      !(Maybe SuggestStatus),
    _srrsSuggest :: !(Maybe SuggestModel),
    _srrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SuggestResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrsStatus' - The status of a @SuggestRequest@ . Contains the resource ID (@rid@ ) and how long it took to process the request (@timems@ ).
--
-- * 'srrsSuggest' - Container for the matching search suggestion information.
--
-- * 'srrsResponseStatus' - -- | The response status code.
suggestResponse ::
  -- | 'srrsResponseStatus'
  Int ->
  SuggestResponse
suggestResponse pResponseStatus_ =
  SuggestResponse'
    { _srrsStatus = Nothing,
      _srrsSuggest = Nothing,
      _srrsResponseStatus = pResponseStatus_
    }

-- | The status of a @SuggestRequest@ . Contains the resource ID (@rid@ ) and how long it took to process the request (@timems@ ).
srrsStatus :: Lens' SuggestResponse (Maybe SuggestStatus)
srrsStatus = lens _srrsStatus (\s a -> s {_srrsStatus = a})

-- | Container for the matching search suggestion information.
srrsSuggest :: Lens' SuggestResponse (Maybe SuggestModel)
srrsSuggest = lens _srrsSuggest (\s a -> s {_srrsSuggest = a})

-- | -- | The response status code.
srrsResponseStatus :: Lens' SuggestResponse Int
srrsResponseStatus = lens _srrsResponseStatus (\s a -> s {_srrsResponseStatus = a})

instance NFData SuggestResponse
