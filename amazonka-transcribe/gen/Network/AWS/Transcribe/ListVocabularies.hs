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
-- Module      : Network.AWS.Transcribe.ListVocabularies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of vocabularies that match the specified criteria. If no criteria are specified, returns the entire list of vocabularies.
module Network.AWS.Transcribe.ListVocabularies
  ( -- * Creating a Request
    listVocabularies,
    ListVocabularies,

    -- * Request Lenses
    lvNextToken,
    lvNameContains,
    lvMaxResults,
    lvStateEquals,

    -- * Destructuring the Response
    listVocabulariesResponse,
    ListVocabulariesResponse,

    -- * Response Lenses
    lvrrsStatus,
    lvrrsNextToken,
    lvrrsVocabularies,
    lvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'listVocabularies' smart constructor.
data ListVocabularies = ListVocabularies'
  { _lvNextToken ::
      !(Maybe Text),
    _lvNameContains :: !(Maybe Text),
    _lvMaxResults :: !(Maybe Nat),
    _lvStateEquals ::
      !(Maybe VocabularyState)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListVocabularies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvNextToken' - If the result of the previous request to @ListVocabularies@ was truncated, include the @NextToken@ to fetch the next set of jobs.
--
-- * 'lvNameContains' - When specified, the vocabularies returned in the list are limited to vocabularies whose name contains the specified string. The search is not case sensitive, @ListVocabularies@ returns both "vocabularyname" and "VocabularyName" in the response list.
--
-- * 'lvMaxResults' - The maximum number of vocabularies to return in the response. If there are fewer results in the list, this response contains only the actual results.
--
-- * 'lvStateEquals' - When specified, only returns vocabularies with the @VocabularyState@ field equal to the specified state.
listVocabularies ::
  ListVocabularies
listVocabularies =
  ListVocabularies'
    { _lvNextToken = Nothing,
      _lvNameContains = Nothing,
      _lvMaxResults = Nothing,
      _lvStateEquals = Nothing
    }

-- | If the result of the previous request to @ListVocabularies@ was truncated, include the @NextToken@ to fetch the next set of jobs.
lvNextToken :: Lens' ListVocabularies (Maybe Text)
lvNextToken = lens _lvNextToken (\s a -> s {_lvNextToken = a})

-- | When specified, the vocabularies returned in the list are limited to vocabularies whose name contains the specified string. The search is not case sensitive, @ListVocabularies@ returns both "vocabularyname" and "VocabularyName" in the response list.
lvNameContains :: Lens' ListVocabularies (Maybe Text)
lvNameContains = lens _lvNameContains (\s a -> s {_lvNameContains = a})

-- | The maximum number of vocabularies to return in the response. If there are fewer results in the list, this response contains only the actual results.
lvMaxResults :: Lens' ListVocabularies (Maybe Natural)
lvMaxResults = lens _lvMaxResults (\s a -> s {_lvMaxResults = a}) . mapping _Nat

-- | When specified, only returns vocabularies with the @VocabularyState@ field equal to the specified state.
lvStateEquals :: Lens' ListVocabularies (Maybe VocabularyState)
lvStateEquals = lens _lvStateEquals (\s a -> s {_lvStateEquals = a})

instance AWSRequest ListVocabularies where
  type Rs ListVocabularies = ListVocabulariesResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          ListVocabulariesResponse'
            <$> (x .?> "Status")
            <*> (x .?> "NextToken")
            <*> (x .?> "Vocabularies" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListVocabularies

instance NFData ListVocabularies

instance ToHeaders ListVocabularies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.ListVocabularies" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListVocabularies where
  toJSON ListVocabularies' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lvNextToken,
            ("NameContains" .=) <$> _lvNameContains,
            ("MaxResults" .=) <$> _lvMaxResults,
            ("StateEquals" .=) <$> _lvStateEquals
          ]
      )

instance ToPath ListVocabularies where
  toPath = const "/"

instance ToQuery ListVocabularies where
  toQuery = const mempty

-- | /See:/ 'listVocabulariesResponse' smart constructor.
data ListVocabulariesResponse = ListVocabulariesResponse'
  { _lvrrsStatus ::
      !( Maybe
           VocabularyState
       ),
    _lvrrsNextToken ::
      !(Maybe Text),
    _lvrrsVocabularies ::
      !( Maybe
           [VocabularyInfo]
       ),
    _lvrrsResponseStatus ::
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

-- | Creates a value of 'ListVocabulariesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrrsStatus' - The requested vocabulary state.
--
-- * 'lvrrsNextToken' - The @ListVocabularies@ operation returns a page of vocabularies at a time. The maximum size of the page is set in the @MaxResults@ parameter. If there are more jobs in the list than will fit on the page, Amazon Transcribe returns the @NextPage@ token. To return in the next page of jobs, include the token in the next request to the @ListVocabularies@ operation.
--
-- * 'lvrrsVocabularies' - A list of objects that describe the vocabularies that match the search criteria in the request.
--
-- * 'lvrrsResponseStatus' - -- | The response status code.
listVocabulariesResponse ::
  -- | 'lvrrsResponseStatus'
  Int ->
  ListVocabulariesResponse
listVocabulariesResponse pResponseStatus_ =
  ListVocabulariesResponse'
    { _lvrrsStatus = Nothing,
      _lvrrsNextToken = Nothing,
      _lvrrsVocabularies = Nothing,
      _lvrrsResponseStatus = pResponseStatus_
    }

-- | The requested vocabulary state.
lvrrsStatus :: Lens' ListVocabulariesResponse (Maybe VocabularyState)
lvrrsStatus = lens _lvrrsStatus (\s a -> s {_lvrrsStatus = a})

-- | The @ListVocabularies@ operation returns a page of vocabularies at a time. The maximum size of the page is set in the @MaxResults@ parameter. If there are more jobs in the list than will fit on the page, Amazon Transcribe returns the @NextPage@ token. To return in the next page of jobs, include the token in the next request to the @ListVocabularies@ operation.
lvrrsNextToken :: Lens' ListVocabulariesResponse (Maybe Text)
lvrrsNextToken = lens _lvrrsNextToken (\s a -> s {_lvrrsNextToken = a})

-- | A list of objects that describe the vocabularies that match the search criteria in the request.
lvrrsVocabularies :: Lens' ListVocabulariesResponse [VocabularyInfo]
lvrrsVocabularies = lens _lvrrsVocabularies (\s a -> s {_lvrrsVocabularies = a}) . _Default . _Coerce

-- | -- | The response status code.
lvrrsResponseStatus :: Lens' ListVocabulariesResponse Int
lvrrsResponseStatus = lens _lvrrsResponseStatus (\s a -> s {_lvrrsResponseStatus = a})

instance NFData ListVocabulariesResponse
