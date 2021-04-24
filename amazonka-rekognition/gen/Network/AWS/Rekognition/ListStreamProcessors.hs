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
-- Module      : Network.AWS.Rekognition.ListStreamProcessors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of stream processors that you have created with 'CreateStreamProcessor' .
--
--
--
-- This operation returns paginated results.
module Network.AWS.Rekognition.ListStreamProcessors
  ( -- * Creating a Request
    listStreamProcessors,
    ListStreamProcessors,

    -- * Request Lenses
    lspNextToken,
    lspMaxResults,

    -- * Destructuring the Response
    listStreamProcessorsResponse,
    ListStreamProcessorsResponse,

    -- * Response Lenses
    lsprrsNextToken,
    lsprrsStreamProcessors,
    lsprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Rekognition.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listStreamProcessors' smart constructor.
data ListStreamProcessors = ListStreamProcessors'
  { _lspNextToken ::
      !(Maybe Text),
    _lspMaxResults ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListStreamProcessors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lspNextToken' - If the previous response was incomplete (because there are more stream processors to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of stream processors.
--
-- * 'lspMaxResults' - Maximum number of stream processors you want Amazon Rekognition Video to return in the response. The default is 1000.
listStreamProcessors ::
  ListStreamProcessors
listStreamProcessors =
  ListStreamProcessors'
    { _lspNextToken = Nothing,
      _lspMaxResults = Nothing
    }

-- | If the previous response was incomplete (because there are more stream processors to retrieve), Amazon Rekognition Video returns a pagination token in the response. You can use this pagination token to retrieve the next set of stream processors.
lspNextToken :: Lens' ListStreamProcessors (Maybe Text)
lspNextToken = lens _lspNextToken (\s a -> s {_lspNextToken = a})

-- | Maximum number of stream processors you want Amazon Rekognition Video to return in the response. The default is 1000.
lspMaxResults :: Lens' ListStreamProcessors (Maybe Natural)
lspMaxResults = lens _lspMaxResults (\s a -> s {_lspMaxResults = a}) . mapping _Nat

instance AWSPager ListStreamProcessors where
  page rq rs
    | stop (rs ^. lsprrsNextToken) = Nothing
    | stop (rs ^. lsprrsStreamProcessors) = Nothing
    | otherwise =
      Just $ rq & lspNextToken .~ rs ^. lsprrsNextToken

instance AWSRequest ListStreamProcessors where
  type
    Rs ListStreamProcessors =
      ListStreamProcessorsResponse
  request = postJSON rekognition
  response =
    receiveJSON
      ( \s h x ->
          ListStreamProcessorsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "StreamProcessors" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListStreamProcessors

instance NFData ListStreamProcessors

instance ToHeaders ListStreamProcessors where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "RekognitionService.ListStreamProcessors" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListStreamProcessors where
  toJSON ListStreamProcessors' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lspNextToken,
            ("MaxResults" .=) <$> _lspMaxResults
          ]
      )

instance ToPath ListStreamProcessors where
  toPath = const "/"

instance ToQuery ListStreamProcessors where
  toQuery = const mempty

-- | /See:/ 'listStreamProcessorsResponse' smart constructor.
data ListStreamProcessorsResponse = ListStreamProcessorsResponse'
  { _lsprrsNextToken ::
      !(Maybe Text),
    _lsprrsStreamProcessors ::
      !( Maybe
           [StreamProcessor]
       ),
    _lsprrsResponseStatus ::
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

-- | Creates a value of 'ListStreamProcessorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsprrsNextToken' - If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of stream processors.
--
-- * 'lsprrsStreamProcessors' - List of stream processors that you have created.
--
-- * 'lsprrsResponseStatus' - -- | The response status code.
listStreamProcessorsResponse ::
  -- | 'lsprrsResponseStatus'
  Int ->
  ListStreamProcessorsResponse
listStreamProcessorsResponse pResponseStatus_ =
  ListStreamProcessorsResponse'
    { _lsprrsNextToken =
        Nothing,
      _lsprrsStreamProcessors = Nothing,
      _lsprrsResponseStatus = pResponseStatus_
    }

-- | If the response is truncated, Amazon Rekognition Video returns this token that you can use in the subsequent request to retrieve the next set of stream processors.
lsprrsNextToken :: Lens' ListStreamProcessorsResponse (Maybe Text)
lsprrsNextToken = lens _lsprrsNextToken (\s a -> s {_lsprrsNextToken = a})

-- | List of stream processors that you have created.
lsprrsStreamProcessors :: Lens' ListStreamProcessorsResponse [StreamProcessor]
lsprrsStreamProcessors = lens _lsprrsStreamProcessors (\s a -> s {_lsprrsStreamProcessors = a}) . _Default . _Coerce

-- | -- | The response status code.
lsprrsResponseStatus :: Lens' ListStreamProcessorsResponse Int
lsprrsResponseStatus = lens _lsprrsResponseStatus (\s a -> s {_lsprrsResponseStatus = a})

instance NFData ListStreamProcessorsResponse
