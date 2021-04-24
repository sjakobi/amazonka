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
-- Module      : Network.AWS.Translate.ListTerminologies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of custom terminologies associated with your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Translate.ListTerminologies
  ( -- * Creating a Request
    listTerminologies,
    ListTerminologies,

    -- * Request Lenses
    ltNextToken,
    ltMaxResults,

    -- * Destructuring the Response
    listTerminologiesResponse,
    ListTerminologiesResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTerminologyPropertiesList,
    ltrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Translate.Types

-- | /See:/ 'listTerminologies' smart constructor.
data ListTerminologies = ListTerminologies'
  { _ltNextToken ::
      !(Maybe Text),
    _ltMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTerminologies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - If the result of the request to ListTerminologies was truncated, include the NextToken to fetch the next group of custom terminologies.
--
-- * 'ltMaxResults' - The maximum number of custom terminologies returned per list request.
listTerminologies ::
  ListTerminologies
listTerminologies =
  ListTerminologies'
    { _ltNextToken = Nothing,
      _ltMaxResults = Nothing
    }

-- | If the result of the request to ListTerminologies was truncated, include the NextToken to fetch the next group of custom terminologies.
ltNextToken :: Lens' ListTerminologies (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | The maximum number of custom terminologies returned per list request.
ltMaxResults :: Lens' ListTerminologies (Maybe Natural)
ltMaxResults = lens _ltMaxResults (\s a -> s {_ltMaxResults = a}) . mapping _Nat

instance AWSPager ListTerminologies where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTerminologyPropertiesList) =
      Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTerminologies where
  type Rs ListTerminologies = ListTerminologiesResponse
  request = postJSON translate
  response =
    receiveJSON
      ( \s h x ->
          ListTerminologiesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TerminologyPropertiesList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTerminologies

instance NFData ListTerminologies

instance ToHeaders ListTerminologies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShineFrontendService_20170701.ListTerminologies" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTerminologies where
  toJSON ListTerminologies' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltNextToken,
            ("MaxResults" .=) <$> _ltMaxResults
          ]
      )

instance ToPath ListTerminologies where
  toPath = const "/"

instance ToQuery ListTerminologies where
  toQuery = const mempty

-- | /See:/ 'listTerminologiesResponse' smart constructor.
data ListTerminologiesResponse = ListTerminologiesResponse'
  { _ltrrsNextToken ::
      !(Maybe Text),
    _ltrrsTerminologyPropertiesList ::
      !( Maybe
           [TerminologyProperties]
       ),
    _ltrrsResponseStatus ::
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

-- | Creates a value of 'ListTerminologiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - If the response to the ListTerminologies was truncated, the NextToken fetches the next group of custom terminologies.
--
-- * 'ltrrsTerminologyPropertiesList' - The properties list of the custom terminologies returned on the list request.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTerminologiesResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTerminologiesResponse
listTerminologiesResponse pResponseStatus_ =
  ListTerminologiesResponse'
    { _ltrrsNextToken =
        Nothing,
      _ltrrsTerminologyPropertiesList = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | If the response to the ListTerminologies was truncated, the NextToken fetches the next group of custom terminologies.
ltrrsNextToken :: Lens' ListTerminologiesResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | The properties list of the custom terminologies returned on the list request.
ltrrsTerminologyPropertiesList :: Lens' ListTerminologiesResponse [TerminologyProperties]
ltrrsTerminologyPropertiesList = lens _ltrrsTerminologyPropertiesList (\s a -> s {_ltrrsTerminologyPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTerminologiesResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTerminologiesResponse
