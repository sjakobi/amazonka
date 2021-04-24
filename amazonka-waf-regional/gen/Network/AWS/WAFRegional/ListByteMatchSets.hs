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
-- Module      : Network.AWS.WAFRegional.ListByteMatchSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'ByteMatchSetSummary' objects.
module Network.AWS.WAFRegional.ListByteMatchSets
  ( -- * Creating a Request
    listByteMatchSets,
    ListByteMatchSets,

    -- * Request Lenses
    lbmsNextMarker,
    lbmsLimit,

    -- * Destructuring the Response
    listByteMatchSetsResponse,
    ListByteMatchSetsResponse,

    -- * Response Lenses
    lbmsrrsNextMarker,
    lbmsrrsByteMatchSets,
    lbmsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'listByteMatchSets' smart constructor.
data ListByteMatchSets = ListByteMatchSets'
  { _lbmsNextMarker ::
      !(Maybe Text),
    _lbmsLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListByteMatchSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbmsNextMarker' - If you specify a value for @Limit@ and you have more @ByteMatchSets@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @ByteMatchSets@ . For the second and subsequent @ListByteMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @ByteMatchSets@ .
--
-- * 'lbmsLimit' - Specifies the number of @ByteMatchSet@ objects that you want AWS WAF to return for this request. If you have more @ByteMatchSets@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @ByteMatchSet@ objects.
listByteMatchSets ::
  ListByteMatchSets
listByteMatchSets =
  ListByteMatchSets'
    { _lbmsNextMarker = Nothing,
      _lbmsLimit = Nothing
    }

-- | If you specify a value for @Limit@ and you have more @ByteMatchSets@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @ByteMatchSets@ . For the second and subsequent @ListByteMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @ByteMatchSets@ .
lbmsNextMarker :: Lens' ListByteMatchSets (Maybe Text)
lbmsNextMarker = lens _lbmsNextMarker (\s a -> s {_lbmsNextMarker = a})

-- | Specifies the number of @ByteMatchSet@ objects that you want AWS WAF to return for this request. If you have more @ByteMatchSets@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @ByteMatchSet@ objects.
lbmsLimit :: Lens' ListByteMatchSets (Maybe Natural)
lbmsLimit = lens _lbmsLimit (\s a -> s {_lbmsLimit = a}) . mapping _Nat

instance AWSRequest ListByteMatchSets where
  type Rs ListByteMatchSets = ListByteMatchSetsResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          ListByteMatchSetsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "ByteMatchSets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListByteMatchSets

instance NFData ListByteMatchSets

instance ToHeaders ListByteMatchSets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.ListByteMatchSets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListByteMatchSets where
  toJSON ListByteMatchSets' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _lbmsNextMarker,
            ("Limit" .=) <$> _lbmsLimit
          ]
      )

instance ToPath ListByteMatchSets where
  toPath = const "/"

instance ToQuery ListByteMatchSets where
  toQuery = const mempty

-- | /See:/ 'listByteMatchSetsResponse' smart constructor.
data ListByteMatchSetsResponse = ListByteMatchSetsResponse'
  { _lbmsrrsNextMarker ::
      !(Maybe Text),
    _lbmsrrsByteMatchSets ::
      !( Maybe
           [ByteMatchSetSummary]
       ),
    _lbmsrrsResponseStatus ::
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

-- | Creates a value of 'ListByteMatchSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbmsrrsNextMarker' - If you have more @ByteMatchSet@ objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @ByteMatchSet@ objects, submit another @ListByteMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- * 'lbmsrrsByteMatchSets' - An array of 'ByteMatchSetSummary' objects.
--
-- * 'lbmsrrsResponseStatus' - -- | The response status code.
listByteMatchSetsResponse ::
  -- | 'lbmsrrsResponseStatus'
  Int ->
  ListByteMatchSetsResponse
listByteMatchSetsResponse pResponseStatus_ =
  ListByteMatchSetsResponse'
    { _lbmsrrsNextMarker =
        Nothing,
      _lbmsrrsByteMatchSets = Nothing,
      _lbmsrrsResponseStatus = pResponseStatus_
    }

-- | If you have more @ByteMatchSet@ objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @ByteMatchSet@ objects, submit another @ListByteMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
lbmsrrsNextMarker :: Lens' ListByteMatchSetsResponse (Maybe Text)
lbmsrrsNextMarker = lens _lbmsrrsNextMarker (\s a -> s {_lbmsrrsNextMarker = a})

-- | An array of 'ByteMatchSetSummary' objects.
lbmsrrsByteMatchSets :: Lens' ListByteMatchSetsResponse [ByteMatchSetSummary]
lbmsrrsByteMatchSets = lens _lbmsrrsByteMatchSets (\s a -> s {_lbmsrrsByteMatchSets = a}) . _Default . _Coerce

-- | -- | The response status code.
lbmsrrsResponseStatus :: Lens' ListByteMatchSetsResponse Int
lbmsrrsResponseStatus = lens _lbmsrrsResponseStatus (\s a -> s {_lbmsrrsResponseStatus = a})

instance NFData ListByteMatchSetsResponse
