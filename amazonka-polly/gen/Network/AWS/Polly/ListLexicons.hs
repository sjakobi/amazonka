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
-- Module      : Network.AWS.Polly.ListLexicons
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of pronunciation lexicons stored in an AWS Region. For more information, see <https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html Managing Lexicons> .
--
--
--
-- This operation returns paginated results.
module Network.AWS.Polly.ListLexicons
  ( -- * Creating a Request
    listLexicons,
    ListLexicons,

    -- * Request Lenses
    llNextToken,

    -- * Destructuring the Response
    listLexiconsResponse,
    ListLexiconsResponse,

    -- * Response Lenses
    llrrsNextToken,
    llrrsLexicons,
    llrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Polly.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listLexicons' smart constructor.
newtype ListLexicons = ListLexicons'
  { _llNextToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLexicons' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llNextToken' - An opaque pagination token returned from previous @ListLexicons@ operation. If present, indicates where to continue the list of lexicons.
listLexicons ::
  ListLexicons
listLexicons = ListLexicons' {_llNextToken = Nothing}

-- | An opaque pagination token returned from previous @ListLexicons@ operation. If present, indicates where to continue the list of lexicons.
llNextToken :: Lens' ListLexicons (Maybe Text)
llNextToken = lens _llNextToken (\s a -> s {_llNextToken = a})

instance AWSPager ListLexicons where
  page rq rs
    | stop (rs ^. llrrsNextToken) = Nothing
    | stop (rs ^. llrrsLexicons) = Nothing
    | otherwise =
      Just $ rq & llNextToken .~ rs ^. llrrsNextToken

instance AWSRequest ListLexicons where
  type Rs ListLexicons = ListLexiconsResponse
  request = get polly
  response =
    receiveJSON
      ( \s h x ->
          ListLexiconsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Lexicons" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListLexicons

instance NFData ListLexicons

instance ToHeaders ListLexicons where
  toHeaders = const mempty

instance ToPath ListLexicons where
  toPath = const "/v1/lexicons"

instance ToQuery ListLexicons where
  toQuery ListLexicons' {..} =
    mconcat ["NextToken" =: _llNextToken]

-- | /See:/ 'listLexiconsResponse' smart constructor.
data ListLexiconsResponse = ListLexiconsResponse'
  { _llrrsNextToken ::
      !(Maybe Text),
    _llrrsLexicons ::
      !(Maybe [LexiconDescription]),
    _llrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLexiconsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrrsNextToken' - The pagination token to use in the next request to continue the listing of lexicons. @NextToken@ is returned only if the response is truncated.
--
-- * 'llrrsLexicons' - A list of lexicon names and attributes.
--
-- * 'llrrsResponseStatus' - -- | The response status code.
listLexiconsResponse ::
  -- | 'llrrsResponseStatus'
  Int ->
  ListLexiconsResponse
listLexiconsResponse pResponseStatus_ =
  ListLexiconsResponse'
    { _llrrsNextToken = Nothing,
      _llrrsLexicons = Nothing,
      _llrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token to use in the next request to continue the listing of lexicons. @NextToken@ is returned only if the response is truncated.
llrrsNextToken :: Lens' ListLexiconsResponse (Maybe Text)
llrrsNextToken = lens _llrrsNextToken (\s a -> s {_llrrsNextToken = a})

-- | A list of lexicon names and attributes.
llrrsLexicons :: Lens' ListLexiconsResponse [LexiconDescription]
llrrsLexicons = lens _llrrsLexicons (\s a -> s {_llrrsLexicons = a}) . _Default . _Coerce

-- | -- | The response status code.
llrrsResponseStatus :: Lens' ListLexiconsResponse Int
llrrsResponseStatus = lens _llrrsResponseStatus (\s a -> s {_llrrsResponseStatus = a})

instance NFData ListLexiconsResponse
