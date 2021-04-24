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
-- Module      : Network.AWS.WAFRegional.ListRateBasedRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'RuleSummary' objects.
module Network.AWS.WAFRegional.ListRateBasedRules
  ( -- * Creating a Request
    listRateBasedRules,
    ListRateBasedRules,

    -- * Request Lenses
    lrbrNextMarker,
    lrbrLimit,

    -- * Destructuring the Response
    listRateBasedRulesResponse,
    ListRateBasedRulesResponse,

    -- * Response Lenses
    lrbrrrsNextMarker,
    lrbrrrsRules,
    lrbrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'listRateBasedRules' smart constructor.
data ListRateBasedRules = ListRateBasedRules'
  { _lrbrNextMarker ::
      !(Maybe Text),
    _lrbrLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRateBasedRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrbrNextMarker' - If you specify a value for @Limit@ and you have more @Rules@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @Rules@ . For the second and subsequent @ListRateBasedRules@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @Rules@ .
--
-- * 'lrbrLimit' - Specifies the number of @Rules@ that you want AWS WAF to return for this request. If you have more @Rules@ than the number that you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @Rules@ .
listRateBasedRules ::
  ListRateBasedRules
listRateBasedRules =
  ListRateBasedRules'
    { _lrbrNextMarker = Nothing,
      _lrbrLimit = Nothing
    }

-- | If you specify a value for @Limit@ and you have more @Rules@ than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @Rules@ . For the second and subsequent @ListRateBasedRules@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @Rules@ .
lrbrNextMarker :: Lens' ListRateBasedRules (Maybe Text)
lrbrNextMarker = lens _lrbrNextMarker (\s a -> s {_lrbrNextMarker = a})

-- | Specifies the number of @Rules@ that you want AWS WAF to return for this request. If you have more @Rules@ than the number that you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @Rules@ .
lrbrLimit :: Lens' ListRateBasedRules (Maybe Natural)
lrbrLimit = lens _lrbrLimit (\s a -> s {_lrbrLimit = a}) . mapping _Nat

instance AWSRequest ListRateBasedRules where
  type
    Rs ListRateBasedRules =
      ListRateBasedRulesResponse
  request = postJSON wAFRegional
  response =
    receiveJSON
      ( \s h x ->
          ListRateBasedRulesResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "Rules" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListRateBasedRules

instance NFData ListRateBasedRules

instance ToHeaders ListRateBasedRules where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_Regional_20161128.ListRateBasedRules" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListRateBasedRules where
  toJSON ListRateBasedRules' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _lrbrNextMarker,
            ("Limit" .=) <$> _lrbrLimit
          ]
      )

instance ToPath ListRateBasedRules where
  toPath = const "/"

instance ToQuery ListRateBasedRules where
  toQuery = const mempty

-- | /See:/ 'listRateBasedRulesResponse' smart constructor.
data ListRateBasedRulesResponse = ListRateBasedRulesResponse'
  { _lrbrrrsNextMarker ::
      !(Maybe Text),
    _lrbrrrsRules ::
      !( Maybe
           [RuleSummary]
       ),
    _lrbrrrsResponseStatus ::
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

-- | Creates a value of 'ListRateBasedRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrbrrrsNextMarker' - If you have more @Rules@ than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @Rules@ , submit another @ListRateBasedRules@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- * 'lrbrrrsRules' - An array of 'RuleSummary' objects.
--
-- * 'lrbrrrsResponseStatus' - -- | The response status code.
listRateBasedRulesResponse ::
  -- | 'lrbrrrsResponseStatus'
  Int ->
  ListRateBasedRulesResponse
listRateBasedRulesResponse pResponseStatus_ =
  ListRateBasedRulesResponse'
    { _lrbrrrsNextMarker =
        Nothing,
      _lrbrrrsRules = Nothing,
      _lrbrrrsResponseStatus = pResponseStatus_
    }

-- | If you have more @Rules@ than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @Rules@ , submit another @ListRateBasedRules@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
lrbrrrsNextMarker :: Lens' ListRateBasedRulesResponse (Maybe Text)
lrbrrrsNextMarker = lens _lrbrrrsNextMarker (\s a -> s {_lrbrrrsNextMarker = a})

-- | An array of 'RuleSummary' objects.
lrbrrrsRules :: Lens' ListRateBasedRulesResponse [RuleSummary]
lrbrrrsRules = lens _lrbrrrsRules (\s a -> s {_lrbrrrsRules = a}) . _Default . _Coerce

-- | -- | The response status code.
lrbrrrsResponseStatus :: Lens' ListRateBasedRulesResponse Int
lrbrrrsResponseStatus = lens _lrbrrrsResponseStatus (\s a -> s {_lrbrrrsResponseStatus = a})

instance NFData ListRateBasedRulesResponse
