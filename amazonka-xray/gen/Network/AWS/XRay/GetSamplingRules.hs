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
-- Module      : Network.AWS.XRay.GetSamplingRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all sampling rules.
--
--
--
-- This operation returns paginated results.
module Network.AWS.XRay.GetSamplingRules
  ( -- * Creating a Request
    getSamplingRules,
    GetSamplingRules,

    -- * Request Lenses
    gsrNextToken,

    -- * Destructuring the Response
    getSamplingRulesResponse,
    GetSamplingRulesResponse,

    -- * Response Lenses
    gsrrrsNextToken,
    gsrrrsSamplingRuleRecords,
    gsrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'getSamplingRules' smart constructor.
newtype GetSamplingRules = GetSamplingRules'
  { _gsrNextToken ::
      Maybe Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSamplingRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrNextToken' - Pagination token.
getSamplingRules ::
  GetSamplingRules
getSamplingRules =
  GetSamplingRules' {_gsrNextToken = Nothing}

-- | Pagination token.
gsrNextToken :: Lens' GetSamplingRules (Maybe Text)
gsrNextToken = lens _gsrNextToken (\s a -> s {_gsrNextToken = a})

instance AWSPager GetSamplingRules where
  page rq rs
    | stop (rs ^. gsrrrsNextToken) = Nothing
    | stop (rs ^. gsrrrsSamplingRuleRecords) = Nothing
    | otherwise =
      Just $ rq & gsrNextToken .~ rs ^. gsrrrsNextToken

instance AWSRequest GetSamplingRules where
  type Rs GetSamplingRules = GetSamplingRulesResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          GetSamplingRulesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "SamplingRuleRecords" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetSamplingRules

instance NFData GetSamplingRules

instance ToHeaders GetSamplingRules where
  toHeaders = const mempty

instance ToJSON GetSamplingRules where
  toJSON GetSamplingRules' {..} =
    object
      (catMaybes [("NextToken" .=) <$> _gsrNextToken])

instance ToPath GetSamplingRules where
  toPath = const "/GetSamplingRules"

instance ToQuery GetSamplingRules where
  toQuery = const mempty

-- | /See:/ 'getSamplingRulesResponse' smart constructor.
data GetSamplingRulesResponse = GetSamplingRulesResponse'
  { _gsrrrsNextToken ::
      !(Maybe Text),
    _gsrrrsSamplingRuleRecords ::
      !( Maybe
           [SamplingRuleRecord]
       ),
    _gsrrrsResponseStatus ::
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

-- | Creates a value of 'GetSamplingRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsrrrsNextToken' - Pagination token.
--
-- * 'gsrrrsSamplingRuleRecords' - Rule definitions and metadata.
--
-- * 'gsrrrsResponseStatus' - -- | The response status code.
getSamplingRulesResponse ::
  -- | 'gsrrrsResponseStatus'
  Int ->
  GetSamplingRulesResponse
getSamplingRulesResponse pResponseStatus_ =
  GetSamplingRulesResponse'
    { _gsrrrsNextToken =
        Nothing,
      _gsrrrsSamplingRuleRecords = Nothing,
      _gsrrrsResponseStatus = pResponseStatus_
    }

-- | Pagination token.
gsrrrsNextToken :: Lens' GetSamplingRulesResponse (Maybe Text)
gsrrrsNextToken = lens _gsrrrsNextToken (\s a -> s {_gsrrrsNextToken = a})

-- | Rule definitions and metadata.
gsrrrsSamplingRuleRecords :: Lens' GetSamplingRulesResponse [SamplingRuleRecord]
gsrrrsSamplingRuleRecords = lens _gsrrrsSamplingRuleRecords (\s a -> s {_gsrrrsSamplingRuleRecords = a}) . _Default . _Coerce

-- | -- | The response status code.
gsrrrsResponseStatus :: Lens' GetSamplingRulesResponse Int
gsrrrsResponseStatus = lens _gsrrrsResponseStatus (\s a -> s {_gsrrrsResponseStatus = a})

instance NFData GetSamplingRulesResponse
