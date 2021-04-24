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
-- Module      : Network.AWS.WAFRegional.ListXSSMatchSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'XssMatchSet' objects.
module Network.AWS.WAFRegional.ListXSSMatchSets
  ( -- * Creating a Request
    listXSSMatchSets,
    ListXSSMatchSets,

    -- * Request Lenses
    lxmsNextMarker,
    lxmsLimit,

    -- * Destructuring the Response
    listXSSMatchSetsResponse,
    ListXSSMatchSetsResponse,

    -- * Response Lenses
    lxmsrrsNextMarker,
    lxmsrrsXSSMatchSets,
    lxmsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | A request to list the 'XssMatchSet' objects created by the current AWS account.
--
--
--
-- /See:/ 'listXSSMatchSets' smart constructor.
data ListXSSMatchSets = ListXSSMatchSets'
  { _lxmsNextMarker ::
      !(Maybe Text),
    _lxmsLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListXSSMatchSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lxmsNextMarker' - If you specify a value for @Limit@ and you have more 'XssMatchSet' objects than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @XssMatchSets@ . For the second and subsequent @ListXssMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @XssMatchSets@ .
--
-- * 'lxmsLimit' - Specifies the number of 'XssMatchSet' objects that you want AWS WAF to return for this request. If you have more @XssMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @Rules@ .
listXSSMatchSets ::
  ListXSSMatchSets
listXSSMatchSets =
  ListXSSMatchSets'
    { _lxmsNextMarker = Nothing,
      _lxmsLimit = Nothing
    }

-- | If you specify a value for @Limit@ and you have more 'XssMatchSet' objects than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @XssMatchSets@ . For the second and subsequent @ListXssMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @XssMatchSets@ .
lxmsNextMarker :: Lens' ListXSSMatchSets (Maybe Text)
lxmsNextMarker = lens _lxmsNextMarker (\s a -> s {_lxmsNextMarker = a})

-- | Specifies the number of 'XssMatchSet' objects that you want AWS WAF to return for this request. If you have more @XssMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @Rules@ .
lxmsLimit :: Lens' ListXSSMatchSets (Maybe Natural)
lxmsLimit = lens _lxmsLimit (\s a -> s {_lxmsLimit = a}) . mapping _Nat

instance AWSRequest ListXSSMatchSets where
  type Rs ListXSSMatchSets = ListXSSMatchSetsResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          ListXSSMatchSetsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "XssMatchSets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListXSSMatchSets

instance NFData ListXSSMatchSets

instance ToHeaders ListXSSMatchSets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.ListXssMatchSets" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListXSSMatchSets where
  toJSON ListXSSMatchSets' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _lxmsNextMarker,
            ("Limit" .=) <$> _lxmsLimit
          ]
      )

instance ToPath ListXSSMatchSets where
  toPath = const "/"

instance ToQuery ListXSSMatchSets where
  toQuery = const mempty

-- | The response to a 'ListXssMatchSets' request.
--
--
--
-- /See:/ 'listXSSMatchSetsResponse' smart constructor.
data ListXSSMatchSetsResponse = ListXSSMatchSetsResponse'
  { _lxmsrrsNextMarker ::
      !(Maybe Text),
    _lxmsrrsXSSMatchSets ::
      !( Maybe
           [XSSMatchSetSummary]
       ),
    _lxmsrrsResponseStatus ::
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

-- | Creates a value of 'ListXSSMatchSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lxmsrrsNextMarker' - If you have more 'XssMatchSet' objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @XssMatchSet@ objects, submit another @ListXssMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- * 'lxmsrrsXSSMatchSets' - An array of 'XssMatchSetSummary' objects.
--
-- * 'lxmsrrsResponseStatus' - -- | The response status code.
listXSSMatchSetsResponse ::
  -- | 'lxmsrrsResponseStatus'
  Int ->
  ListXSSMatchSetsResponse
listXSSMatchSetsResponse pResponseStatus_ =
  ListXSSMatchSetsResponse'
    { _lxmsrrsNextMarker =
        Nothing,
      _lxmsrrsXSSMatchSets = Nothing,
      _lxmsrrsResponseStatus = pResponseStatus_
    }

-- | If you have more 'XssMatchSet' objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @XssMatchSet@ objects, submit another @ListXssMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
lxmsrrsNextMarker :: Lens' ListXSSMatchSetsResponse (Maybe Text)
lxmsrrsNextMarker = lens _lxmsrrsNextMarker (\s a -> s {_lxmsrrsNextMarker = a})

-- | An array of 'XssMatchSetSummary' objects.
lxmsrrsXSSMatchSets :: Lens' ListXSSMatchSetsResponse [XSSMatchSetSummary]
lxmsrrsXSSMatchSets = lens _lxmsrrsXSSMatchSets (\s a -> s {_lxmsrrsXSSMatchSets = a}) . _Default . _Coerce

-- | -- | The response status code.
lxmsrrsResponseStatus :: Lens' ListXSSMatchSetsResponse Int
lxmsrrsResponseStatus = lens _lxmsrrsResponseStatus (\s a -> s {_lxmsrrsResponseStatus = a})

instance NFData ListXSSMatchSetsResponse
