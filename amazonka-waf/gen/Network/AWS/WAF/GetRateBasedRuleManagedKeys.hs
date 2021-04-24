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
-- Module      : Network.AWS.WAF.GetRateBasedRuleManagedKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of IP addresses currently being blocked by the 'RateBasedRule' that is specified by the @RuleId@ . The maximum number of managed keys that will be blocked is 10,000. If more than 10,000 addresses exceed the rate limit, the 10,000 addresses with the highest rates will be blocked.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WAF.GetRateBasedRuleManagedKeys
  ( -- * Creating a Request
    getRateBasedRuleManagedKeys,
    GetRateBasedRuleManagedKeys,

    -- * Request Lenses
    grbrmkNextMarker,
    grbrmkRuleId,

    -- * Destructuring the Response
    getRateBasedRuleManagedKeysResponse,
    GetRateBasedRuleManagedKeysResponse,

    -- * Response Lenses
    grbrmkrrsManagedKeys,
    grbrmkrrsNextMarker,
    grbrmkrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WAF.Types

-- | /See:/ 'getRateBasedRuleManagedKeys' smart constructor.
data GetRateBasedRuleManagedKeys = GetRateBasedRuleManagedKeys'
  { _grbrmkNextMarker ::
      !(Maybe Text),
    _grbrmkRuleId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetRateBasedRuleManagedKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grbrmkNextMarker' - A null value and not currently used. Do not include this in your request.
--
-- * 'grbrmkRuleId' - The @RuleId@ of the 'RateBasedRule' for which you want to get a list of @ManagedKeys@ . @RuleId@ is returned by 'CreateRateBasedRule' and by 'ListRateBasedRules' .
getRateBasedRuleManagedKeys ::
  -- | 'grbrmkRuleId'
  Text ->
  GetRateBasedRuleManagedKeys
getRateBasedRuleManagedKeys pRuleId_ =
  GetRateBasedRuleManagedKeys'
    { _grbrmkNextMarker =
        Nothing,
      _grbrmkRuleId = pRuleId_
    }

-- | A null value and not currently used. Do not include this in your request.
grbrmkNextMarker :: Lens' GetRateBasedRuleManagedKeys (Maybe Text)
grbrmkNextMarker = lens _grbrmkNextMarker (\s a -> s {_grbrmkNextMarker = a})

-- | The @RuleId@ of the 'RateBasedRule' for which you want to get a list of @ManagedKeys@ . @RuleId@ is returned by 'CreateRateBasedRule' and by 'ListRateBasedRules' .
grbrmkRuleId :: Lens' GetRateBasedRuleManagedKeys Text
grbrmkRuleId = lens _grbrmkRuleId (\s a -> s {_grbrmkRuleId = a})

instance AWSPager GetRateBasedRuleManagedKeys where
  page rq rs
    | stop (rs ^. grbrmkrrsNextMarker) = Nothing
    | stop (rs ^. grbrmkrrsManagedKeys) = Nothing
    | otherwise =
      Just $
        rq
          & grbrmkNextMarker .~ rs ^. grbrmkrrsNextMarker

instance AWSRequest GetRateBasedRuleManagedKeys where
  type
    Rs GetRateBasedRuleManagedKeys =
      GetRateBasedRuleManagedKeysResponse
  request = postJSON waf
  response =
    receiveJSON
      ( \s h x ->
          GetRateBasedRuleManagedKeysResponse'
            <$> (x .?> "ManagedKeys" .!@ mempty)
            <*> (x .?> "NextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRateBasedRuleManagedKeys

instance NFData GetRateBasedRuleManagedKeys

instance ToHeaders GetRateBasedRuleManagedKeys where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSWAF_20150824.GetRateBasedRuleManagedKeys" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRateBasedRuleManagedKeys where
  toJSON GetRateBasedRuleManagedKeys' {..} =
    object
      ( catMaybes
          [ ("NextMarker" .=) <$> _grbrmkNextMarker,
            Just ("RuleId" .= _grbrmkRuleId)
          ]
      )

instance ToPath GetRateBasedRuleManagedKeys where
  toPath = const "/"

instance ToQuery GetRateBasedRuleManagedKeys where
  toQuery = const mempty

-- | /See:/ 'getRateBasedRuleManagedKeysResponse' smart constructor.
data GetRateBasedRuleManagedKeysResponse = GetRateBasedRuleManagedKeysResponse'
  { _grbrmkrrsManagedKeys ::
      !( Maybe
           [Text]
       ),
    _grbrmkrrsNextMarker ::
      !( Maybe
           Text
       ),
    _grbrmkrrsResponseStatus ::
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

-- | Creates a value of 'GetRateBasedRuleManagedKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grbrmkrrsManagedKeys' - An array of IP addresses that currently are blocked by the specified 'RateBasedRule' .
--
-- * 'grbrmkrrsNextMarker' - A null value and not currently used.
--
-- * 'grbrmkrrsResponseStatus' - -- | The response status code.
getRateBasedRuleManagedKeysResponse ::
  -- | 'grbrmkrrsResponseStatus'
  Int ->
  GetRateBasedRuleManagedKeysResponse
getRateBasedRuleManagedKeysResponse pResponseStatus_ =
  GetRateBasedRuleManagedKeysResponse'
    { _grbrmkrrsManagedKeys =
        Nothing,
      _grbrmkrrsNextMarker = Nothing,
      _grbrmkrrsResponseStatus =
        pResponseStatus_
    }

-- | An array of IP addresses that currently are blocked by the specified 'RateBasedRule' .
grbrmkrrsManagedKeys :: Lens' GetRateBasedRuleManagedKeysResponse [Text]
grbrmkrrsManagedKeys = lens _grbrmkrrsManagedKeys (\s a -> s {_grbrmkrrsManagedKeys = a}) . _Default . _Coerce

-- | A null value and not currently used.
grbrmkrrsNextMarker :: Lens' GetRateBasedRuleManagedKeysResponse (Maybe Text)
grbrmkrrsNextMarker = lens _grbrmkrrsNextMarker (\s a -> s {_grbrmkrrsNextMarker = a})

-- | -- | The response status code.
grbrmkrrsResponseStatus :: Lens' GetRateBasedRuleManagedKeysResponse Int
grbrmkrrsResponseStatus = lens _grbrmkrrsResponseStatus (\s a -> s {_grbrmkrrsResponseStatus = a})

instance NFData GetRateBasedRuleManagedKeysResponse
