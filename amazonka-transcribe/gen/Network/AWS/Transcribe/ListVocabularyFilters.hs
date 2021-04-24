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
-- Module      : Network.AWS.Transcribe.ListVocabularyFilters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about vocabulary filters.
module Network.AWS.Transcribe.ListVocabularyFilters
  ( -- * Creating a Request
    listVocabularyFilters,
    ListVocabularyFilters,

    -- * Request Lenses
    lvfNextToken,
    lvfNameContains,
    lvfMaxResults,

    -- * Destructuring the Response
    listVocabularyFiltersResponse,
    ListVocabularyFiltersResponse,

    -- * Response Lenses
    lvfrrsNextToken,
    lvfrrsVocabularyFilters,
    lvfrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'listVocabularyFilters' smart constructor.
data ListVocabularyFilters = ListVocabularyFilters'
  { _lvfNextToken ::
      !(Maybe Text),
    _lvfNameContains ::
      !(Maybe Text),
    _lvfMaxResults ::
      !(Maybe Nat)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListVocabularyFilters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvfNextToken' - If the result of the previous request to @ListVocabularyFilters@ was truncated, include the @NextToken@ to fetch the next set of collections.
--
-- * 'lvfNameContains' - Filters the response so that it only contains vocabulary filters whose name contains the specified string.
--
-- * 'lvfMaxResults' - The maximum number of filters to return in the response. If there are fewer results in the list, this response contains only the actual results.
listVocabularyFilters ::
  ListVocabularyFilters
listVocabularyFilters =
  ListVocabularyFilters'
    { _lvfNextToken = Nothing,
      _lvfNameContains = Nothing,
      _lvfMaxResults = Nothing
    }

-- | If the result of the previous request to @ListVocabularyFilters@ was truncated, include the @NextToken@ to fetch the next set of collections.
lvfNextToken :: Lens' ListVocabularyFilters (Maybe Text)
lvfNextToken = lens _lvfNextToken (\s a -> s {_lvfNextToken = a})

-- | Filters the response so that it only contains vocabulary filters whose name contains the specified string.
lvfNameContains :: Lens' ListVocabularyFilters (Maybe Text)
lvfNameContains = lens _lvfNameContains (\s a -> s {_lvfNameContains = a})

-- | The maximum number of filters to return in the response. If there are fewer results in the list, this response contains only the actual results.
lvfMaxResults :: Lens' ListVocabularyFilters (Maybe Natural)
lvfMaxResults = lens _lvfMaxResults (\s a -> s {_lvfMaxResults = a}) . mapping _Nat

instance AWSRequest ListVocabularyFilters where
  type
    Rs ListVocabularyFilters =
      ListVocabularyFiltersResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          ListVocabularyFiltersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "VocabularyFilters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListVocabularyFilters

instance NFData ListVocabularyFilters

instance ToHeaders ListVocabularyFilters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.ListVocabularyFilters" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListVocabularyFilters where
  toJSON ListVocabularyFilters' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lvfNextToken,
            ("NameContains" .=) <$> _lvfNameContains,
            ("MaxResults" .=) <$> _lvfMaxResults
          ]
      )

instance ToPath ListVocabularyFilters where
  toPath = const "/"

instance ToQuery ListVocabularyFilters where
  toQuery = const mempty

-- | /See:/ 'listVocabularyFiltersResponse' smart constructor.
data ListVocabularyFiltersResponse = ListVocabularyFiltersResponse'
  { _lvfrrsNextToken ::
      !( Maybe
           Text
       ),
    _lvfrrsVocabularyFilters ::
      !( Maybe
           [VocabularyFilterInfo]
       ),
    _lvfrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListVocabularyFiltersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvfrrsNextToken' - The @ListVocabularyFilters@ operation returns a page of collections at a time. The maximum size of the page is set by the @MaxResults@ parameter. If there are more jobs in the list than the page size, Amazon Transcribe returns the @NextPage@ token. Include the token in the next request to the @ListVocabularyFilters@ operation to return in the next page of jobs.
--
-- * 'lvfrrsVocabularyFilters' - The list of vocabulary filters. It contains at most @MaxResults@ number of filters. If there are more filters, call the @ListVocabularyFilters@ operation again with the @NextToken@ parameter in the request set to the value of the @NextToken@ field in the response.
--
-- * 'lvfrrsResponseStatus' - -- | The response status code.
listVocabularyFiltersResponse ::
  -- | 'lvfrrsResponseStatus'
  Int ->
  ListVocabularyFiltersResponse
listVocabularyFiltersResponse pResponseStatus_ =
  ListVocabularyFiltersResponse'
    { _lvfrrsNextToken =
        Nothing,
      _lvfrrsVocabularyFilters = Nothing,
      _lvfrrsResponseStatus = pResponseStatus_
    }

-- | The @ListVocabularyFilters@ operation returns a page of collections at a time. The maximum size of the page is set by the @MaxResults@ parameter. If there are more jobs in the list than the page size, Amazon Transcribe returns the @NextPage@ token. Include the token in the next request to the @ListVocabularyFilters@ operation to return in the next page of jobs.
lvfrrsNextToken :: Lens' ListVocabularyFiltersResponse (Maybe Text)
lvfrrsNextToken = lens _lvfrrsNextToken (\s a -> s {_lvfrrsNextToken = a})

-- | The list of vocabulary filters. It contains at most @MaxResults@ number of filters. If there are more filters, call the @ListVocabularyFilters@ operation again with the @NextToken@ parameter in the request set to the value of the @NextToken@ field in the response.
lvfrrsVocabularyFilters :: Lens' ListVocabularyFiltersResponse [VocabularyFilterInfo]
lvfrrsVocabularyFilters = lens _lvfrrsVocabularyFilters (\s a -> s {_lvfrrsVocabularyFilters = a}) . _Default . _Coerce

-- | -- | The response status code.
lvfrrsResponseStatus :: Lens' ListVocabularyFiltersResponse Int
lvfrrsResponseStatus = lens _lvfrrsResponseStatus (\s a -> s {_lvfrrsResponseStatus = a})

instance NFData ListVocabularyFiltersResponse
