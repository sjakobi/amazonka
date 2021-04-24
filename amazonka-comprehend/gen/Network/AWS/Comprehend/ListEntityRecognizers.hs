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
-- Module      : Network.AWS.Comprehend.ListEntityRecognizers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list.
--
--
-- The results of this list are not in any particular order. Please get the list and sort locally if needed.
--
--
-- This operation returns paginated results.
module Network.AWS.Comprehend.ListEntityRecognizers
  ( -- * Creating a Request
    listEntityRecognizers,
    ListEntityRecognizers,

    -- * Request Lenses
    lerNextToken,
    lerMaxResults,
    lerFilter,

    -- * Destructuring the Response
    listEntityRecognizersResponse,
    ListEntityRecognizersResponse,

    -- * Response Lenses
    lerrrsNextToken,
    lerrrsEntityRecognizerPropertiesList,
    lerrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listEntityRecognizers' smart constructor.
data ListEntityRecognizers = ListEntityRecognizers'
  { _lerNextToken ::
      !(Maybe Text),
    _lerMaxResults ::
      !(Maybe Nat),
    _lerFilter ::
      !( Maybe
           EntityRecognizerFilter
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListEntityRecognizers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerNextToken' - Identifies the next page of results to return.
--
-- * 'lerMaxResults' - The maximum number of results to return on each page. The default is 100.
--
-- * 'lerFilter' - Filters the list of entities returned. You can filter on @Status@ , @SubmitTimeBefore@ , or @SubmitTimeAfter@ . You can only set one filter at a time.
listEntityRecognizers ::
  ListEntityRecognizers
listEntityRecognizers =
  ListEntityRecognizers'
    { _lerNextToken = Nothing,
      _lerMaxResults = Nothing,
      _lerFilter = Nothing
    }

-- | Identifies the next page of results to return.
lerNextToken :: Lens' ListEntityRecognizers (Maybe Text)
lerNextToken = lens _lerNextToken (\s a -> s {_lerNextToken = a})

-- | The maximum number of results to return on each page. The default is 100.
lerMaxResults :: Lens' ListEntityRecognizers (Maybe Natural)
lerMaxResults = lens _lerMaxResults (\s a -> s {_lerMaxResults = a}) . mapping _Nat

-- | Filters the list of entities returned. You can filter on @Status@ , @SubmitTimeBefore@ , or @SubmitTimeAfter@ . You can only set one filter at a time.
lerFilter :: Lens' ListEntityRecognizers (Maybe EntityRecognizerFilter)
lerFilter = lens _lerFilter (\s a -> s {_lerFilter = a})

instance AWSPager ListEntityRecognizers where
  page rq rs
    | stop (rs ^. lerrrsNextToken) = Nothing
    | stop (rs ^. lerrrsEntityRecognizerPropertiesList) =
      Nothing
    | otherwise =
      Just $ rq & lerNextToken .~ rs ^. lerrrsNextToken

instance AWSRequest ListEntityRecognizers where
  type
    Rs ListEntityRecognizers =
      ListEntityRecognizersResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListEntityRecognizersResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "EntityRecognizerPropertiesList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListEntityRecognizers

instance NFData ListEntityRecognizers

instance ToHeaders ListEntityRecognizers where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.ListEntityRecognizers" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListEntityRecognizers where
  toJSON ListEntityRecognizers' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lerNextToken,
            ("MaxResults" .=) <$> _lerMaxResults,
            ("Filter" .=) <$> _lerFilter
          ]
      )

instance ToPath ListEntityRecognizers where
  toPath = const "/"

instance ToQuery ListEntityRecognizers where
  toQuery = const mempty

-- | /See:/ 'listEntityRecognizersResponse' smart constructor.
data ListEntityRecognizersResponse = ListEntityRecognizersResponse'
  { _lerrrsNextToken ::
      !( Maybe
           Text
       ),
    _lerrrsEntityRecognizerPropertiesList ::
      !( Maybe
           [EntityRecognizerProperties]
       ),
    _lerrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListEntityRecognizersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerrrsNextToken' - Identifies the next page of results to return.
--
-- * 'lerrrsEntityRecognizerPropertiesList' - The list of properties of an entity recognizer.
--
-- * 'lerrrsResponseStatus' - -- | The response status code.
listEntityRecognizersResponse ::
  -- | 'lerrrsResponseStatus'
  Int ->
  ListEntityRecognizersResponse
listEntityRecognizersResponse pResponseStatus_ =
  ListEntityRecognizersResponse'
    { _lerrrsNextToken =
        Nothing,
      _lerrrsEntityRecognizerPropertiesList =
        Nothing,
      _lerrrsResponseStatus = pResponseStatus_
    }

-- | Identifies the next page of results to return.
lerrrsNextToken :: Lens' ListEntityRecognizersResponse (Maybe Text)
lerrrsNextToken = lens _lerrrsNextToken (\s a -> s {_lerrrsNextToken = a})

-- | The list of properties of an entity recognizer.
lerrrsEntityRecognizerPropertiesList :: Lens' ListEntityRecognizersResponse [EntityRecognizerProperties]
lerrrsEntityRecognizerPropertiesList = lens _lerrrsEntityRecognizerPropertiesList (\s a -> s {_lerrrsEntityRecognizerPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
lerrrsResponseStatus :: Lens' ListEntityRecognizersResponse Int
lerrrsResponseStatus = lens _lerrrsResponseStatus (\s a -> s {_lerrrsResponseStatus = a})

instance NFData ListEntityRecognizersResponse
