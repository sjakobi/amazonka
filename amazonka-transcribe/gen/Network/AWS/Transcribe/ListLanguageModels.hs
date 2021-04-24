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
-- Module      : Network.AWS.Transcribe.ListLanguageModels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides more information about the custom language models you've created. You can use the information in this list to find a specific custom language model. You can then use the operation to get more information about it.
module Network.AWS.Transcribe.ListLanguageModels
  ( -- * Creating a Request
    listLanguageModels,
    ListLanguageModels,

    -- * Request Lenses
    llmNextToken,
    llmNameContains,
    llmMaxResults,
    llmStatusEquals,

    -- * Destructuring the Response
    listLanguageModelsResponse,
    ListLanguageModelsResponse,

    -- * Response Lenses
    llmrrsNextToken,
    llmrrsModels,
    llmrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Transcribe.Types

-- | /See:/ 'listLanguageModels' smart constructor.
data ListLanguageModels = ListLanguageModels'
  { _llmNextToken ::
      !(Maybe Text),
    _llmNameContains :: !(Maybe Text),
    _llmMaxResults :: !(Maybe Nat),
    _llmStatusEquals ::
      !(Maybe ModelStatus)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLanguageModels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llmNextToken' - When included, fetches the next set of jobs if the result of the previous request was truncated.
--
-- * 'llmNameContains' - When specified, the custom language model names returned contain the substring you've specified.
--
-- * 'llmMaxResults' - The maximum number of language models to return in the response. If there are fewer results in the list, the response contains only the actual results.
--
-- * 'llmStatusEquals' - When specified, returns only custom language models with the specified status. Language models are ordered by creation date, with the newest models first. If you don't specify a status, Amazon Transcribe returns all custom language models ordered by date.
listLanguageModels ::
  ListLanguageModels
listLanguageModels =
  ListLanguageModels'
    { _llmNextToken = Nothing,
      _llmNameContains = Nothing,
      _llmMaxResults = Nothing,
      _llmStatusEquals = Nothing
    }

-- | When included, fetches the next set of jobs if the result of the previous request was truncated.
llmNextToken :: Lens' ListLanguageModels (Maybe Text)
llmNextToken = lens _llmNextToken (\s a -> s {_llmNextToken = a})

-- | When specified, the custom language model names returned contain the substring you've specified.
llmNameContains :: Lens' ListLanguageModels (Maybe Text)
llmNameContains = lens _llmNameContains (\s a -> s {_llmNameContains = a})

-- | The maximum number of language models to return in the response. If there are fewer results in the list, the response contains only the actual results.
llmMaxResults :: Lens' ListLanguageModels (Maybe Natural)
llmMaxResults = lens _llmMaxResults (\s a -> s {_llmMaxResults = a}) . mapping _Nat

-- | When specified, returns only custom language models with the specified status. Language models are ordered by creation date, with the newest models first. If you don't specify a status, Amazon Transcribe returns all custom language models ordered by date.
llmStatusEquals :: Lens' ListLanguageModels (Maybe ModelStatus)
llmStatusEquals = lens _llmStatusEquals (\s a -> s {_llmStatusEquals = a})

instance AWSRequest ListLanguageModels where
  type
    Rs ListLanguageModels =
      ListLanguageModelsResponse
  request = postJSON transcribe
  response =
    receiveJSON
      ( \s h x ->
          ListLanguageModelsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Models" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListLanguageModels

instance NFData ListLanguageModels

instance ToHeaders ListLanguageModels where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Transcribe.ListLanguageModels" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListLanguageModels where
  toJSON ListLanguageModels' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _llmNextToken,
            ("NameContains" .=) <$> _llmNameContains,
            ("MaxResults" .=) <$> _llmMaxResults,
            ("StatusEquals" .=) <$> _llmStatusEquals
          ]
      )

instance ToPath ListLanguageModels where
  toPath = const "/"

instance ToQuery ListLanguageModels where
  toQuery = const mempty

-- | /See:/ 'listLanguageModelsResponse' smart constructor.
data ListLanguageModelsResponse = ListLanguageModelsResponse'
  { _llmrrsNextToken ::
      !(Maybe Text),
    _llmrrsModels ::
      !( Maybe
           [LanguageModel]
       ),
    _llmrrsResponseStatus ::
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

-- | Creates a value of 'ListLanguageModelsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llmrrsNextToken' - The operation returns a page of jobs at a time. The maximum size of the list is set by the MaxResults parameter. If there are more language models in the list than the page size, Amazon Transcribe returns the @NextPage@ token. Include the token in the next request to the operation to return the next page of language models.
--
-- * 'llmrrsModels' - A list of objects containing information about custom language models.
--
-- * 'llmrrsResponseStatus' - -- | The response status code.
listLanguageModelsResponse ::
  -- | 'llmrrsResponseStatus'
  Int ->
  ListLanguageModelsResponse
listLanguageModelsResponse pResponseStatus_ =
  ListLanguageModelsResponse'
    { _llmrrsNextToken =
        Nothing,
      _llmrrsModels = Nothing,
      _llmrrsResponseStatus = pResponseStatus_
    }

-- | The operation returns a page of jobs at a time. The maximum size of the list is set by the MaxResults parameter. If there are more language models in the list than the page size, Amazon Transcribe returns the @NextPage@ token. Include the token in the next request to the operation to return the next page of language models.
llmrrsNextToken :: Lens' ListLanguageModelsResponse (Maybe Text)
llmrrsNextToken = lens _llmrrsNextToken (\s a -> s {_llmrrsNextToken = a})

-- | A list of objects containing information about custom language models.
llmrrsModels :: Lens' ListLanguageModelsResponse [LanguageModel]
llmrrsModels = lens _llmrrsModels (\s a -> s {_llmrrsModels = a}) . _Default . _Coerce

-- | -- | The response status code.
llmrrsResponseStatus :: Lens' ListLanguageModelsResponse Int
llmrrsResponseStatus = lens _llmrrsResponseStatus (\s a -> s {_llmrrsResponseStatus = a})

instance NFData ListLanguageModelsResponse
