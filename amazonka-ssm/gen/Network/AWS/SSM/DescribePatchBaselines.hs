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
-- Module      : Network.AWS.SSM.DescribePatchBaselines
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the patch baselines in your AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribePatchBaselines
  ( -- * Creating a Request
    describePatchBaselines,
    DescribePatchBaselines,

    -- * Request Lenses
    dpbNextToken,
    dpbMaxResults,
    dpbFilters,

    -- * Destructuring the Response
    describePatchBaselinesResponse,
    DescribePatchBaselinesResponse,

    -- * Response Lenses
    dpbrprsNextToken,
    dpbrprsBaselineIdentities,
    dpbrprsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describePatchBaselines' smart constructor.
data DescribePatchBaselines = DescribePatchBaselines'
  { _dpbNextToken ::
      !(Maybe Text),
    _dpbMaxResults ::
      !(Maybe Nat),
    _dpbFilters ::
      !( Maybe
           [PatchOrchestratorFilter]
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

-- | Creates a value of 'DescribePatchBaselines' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpbNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dpbMaxResults' - The maximum number of patch baselines to return (per page).
--
-- * 'dpbFilters' - Each element in the array is a structure containing:  Key: (string, "NAME_PREFIX" or "OWNER") Value: (array of strings, exactly 1 entry, between 1 and 255 characters)
describePatchBaselines ::
  DescribePatchBaselines
describePatchBaselines =
  DescribePatchBaselines'
    { _dpbNextToken = Nothing,
      _dpbMaxResults = Nothing,
      _dpbFilters = Nothing
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dpbNextToken :: Lens' DescribePatchBaselines (Maybe Text)
dpbNextToken = lens _dpbNextToken (\s a -> s {_dpbNextToken = a})

-- | The maximum number of patch baselines to return (per page).
dpbMaxResults :: Lens' DescribePatchBaselines (Maybe Natural)
dpbMaxResults = lens _dpbMaxResults (\s a -> s {_dpbMaxResults = a}) . mapping _Nat

-- | Each element in the array is a structure containing:  Key: (string, "NAME_PREFIX" or "OWNER") Value: (array of strings, exactly 1 entry, between 1 and 255 characters)
dpbFilters :: Lens' DescribePatchBaselines [PatchOrchestratorFilter]
dpbFilters = lens _dpbFilters (\s a -> s {_dpbFilters = a}) . _Default . _Coerce

instance AWSPager DescribePatchBaselines where
  page rq rs
    | stop (rs ^. dpbrprsNextToken) = Nothing
    | stop (rs ^. dpbrprsBaselineIdentities) = Nothing
    | otherwise =
      Just $ rq & dpbNextToken .~ rs ^. dpbrprsNextToken

instance AWSRequest DescribePatchBaselines where
  type
    Rs DescribePatchBaselines =
      DescribePatchBaselinesResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribePatchBaselinesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "BaselineIdentities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribePatchBaselines

instance NFData DescribePatchBaselines

instance ToHeaders DescribePatchBaselines where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DescribePatchBaselines" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribePatchBaselines where
  toJSON DescribePatchBaselines' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dpbNextToken,
            ("MaxResults" .=) <$> _dpbMaxResults,
            ("Filters" .=) <$> _dpbFilters
          ]
      )

instance ToPath DescribePatchBaselines where
  toPath = const "/"

instance ToQuery DescribePatchBaselines where
  toQuery = const mempty

-- | /See:/ 'describePatchBaselinesResponse' smart constructor.
data DescribePatchBaselinesResponse = DescribePatchBaselinesResponse'
  { _dpbrprsNextToken ::
      !( Maybe
           Text
       ),
    _dpbrprsBaselineIdentities ::
      !( Maybe
           [PatchBaselineIdentity]
       ),
    _dpbrprsResponseStatus ::
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

-- | Creates a value of 'DescribePatchBaselinesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpbrprsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'dpbrprsBaselineIdentities' - An array of PatchBaselineIdentity elements.
--
-- * 'dpbrprsResponseStatus' - -- | The response status code.
describePatchBaselinesResponse ::
  -- | 'dpbrprsResponseStatus'
  Int ->
  DescribePatchBaselinesResponse
describePatchBaselinesResponse pResponseStatus_ =
  DescribePatchBaselinesResponse'
    { _dpbrprsNextToken =
        Nothing,
      _dpbrprsBaselineIdentities = Nothing,
      _dpbrprsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
dpbrprsNextToken :: Lens' DescribePatchBaselinesResponse (Maybe Text)
dpbrprsNextToken = lens _dpbrprsNextToken (\s a -> s {_dpbrprsNextToken = a})

-- | An array of PatchBaselineIdentity elements.
dpbrprsBaselineIdentities :: Lens' DescribePatchBaselinesResponse [PatchBaselineIdentity]
dpbrprsBaselineIdentities = lens _dpbrprsBaselineIdentities (\s a -> s {_dpbrprsBaselineIdentities = a}) . _Default . _Coerce

-- | -- | The response status code.
dpbrprsResponseStatus :: Lens' DescribePatchBaselinesResponse Int
dpbrprsResponseStatus = lens _dpbrprsResponseStatus (\s a -> s {_dpbrprsResponseStatus = a})

instance NFData DescribePatchBaselinesResponse
