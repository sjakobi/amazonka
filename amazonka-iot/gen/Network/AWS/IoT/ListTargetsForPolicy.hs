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
-- Module      : Network.AWS.IoT.ListTargetsForPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List targets for the specified policy.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListTargetsForPolicy
  ( -- * Creating a Request
    listTargetsForPolicy,
    ListTargetsForPolicy,

    -- * Request Lenses
    ltfpPageSize,
    ltfpMarker,
    ltfpPolicyName,

    -- * Destructuring the Response
    listTargetsForPolicyResponse,
    ListTargetsForPolicyResponse,

    -- * Response Lenses
    ltfprrsNextMarker,
    ltfprrsTargets,
    ltfprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTargetsForPolicy' smart constructor.
data ListTargetsForPolicy = ListTargetsForPolicy'
  { _ltfpPageSize ::
      !(Maybe Nat),
    _ltfpMarker :: !(Maybe Text),
    _ltfpPolicyName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTargetsForPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfpPageSize' - The maximum number of results to return at one time.
--
-- * 'ltfpMarker' - A marker used to get the next set of results.
--
-- * 'ltfpPolicyName' - The policy name.
listTargetsForPolicy ::
  -- | 'ltfpPolicyName'
  Text ->
  ListTargetsForPolicy
listTargetsForPolicy pPolicyName_ =
  ListTargetsForPolicy'
    { _ltfpPageSize = Nothing,
      _ltfpMarker = Nothing,
      _ltfpPolicyName = pPolicyName_
    }

-- | The maximum number of results to return at one time.
ltfpPageSize :: Lens' ListTargetsForPolicy (Maybe Natural)
ltfpPageSize = lens _ltfpPageSize (\s a -> s {_ltfpPageSize = a}) . mapping _Nat

-- | A marker used to get the next set of results.
ltfpMarker :: Lens' ListTargetsForPolicy (Maybe Text)
ltfpMarker = lens _ltfpMarker (\s a -> s {_ltfpMarker = a})

-- | The policy name.
ltfpPolicyName :: Lens' ListTargetsForPolicy Text
ltfpPolicyName = lens _ltfpPolicyName (\s a -> s {_ltfpPolicyName = a})

instance AWSPager ListTargetsForPolicy where
  page rq rs
    | stop (rs ^. ltfprrsNextMarker) = Nothing
    | stop (rs ^. ltfprrsTargets) = Nothing
    | otherwise =
      Just $ rq & ltfpMarker .~ rs ^. ltfprrsNextMarker

instance AWSRequest ListTargetsForPolicy where
  type
    Rs ListTargetsForPolicy =
      ListTargetsForPolicyResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          ListTargetsForPolicyResponse'
            <$> (x .?> "nextMarker")
            <*> (x .?> "targets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTargetsForPolicy

instance NFData ListTargetsForPolicy

instance ToHeaders ListTargetsForPolicy where
  toHeaders = const mempty

instance ToJSON ListTargetsForPolicy where
  toJSON = const (Object mempty)

instance ToPath ListTargetsForPolicy where
  toPath ListTargetsForPolicy' {..} =
    mconcat ["/policy-targets/", toBS _ltfpPolicyName]

instance ToQuery ListTargetsForPolicy where
  toQuery ListTargetsForPolicy' {..} =
    mconcat
      [ "pageSize" =: _ltfpPageSize,
        "marker" =: _ltfpMarker
      ]

-- | /See:/ 'listTargetsForPolicyResponse' smart constructor.
data ListTargetsForPolicyResponse = ListTargetsForPolicyResponse'
  { _ltfprrsNextMarker ::
      !(Maybe Text),
    _ltfprrsTargets ::
      !( Maybe
           [Text]
       ),
    _ltfprrsResponseStatus ::
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

-- | Creates a value of 'ListTargetsForPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfprrsNextMarker' - A marker used to get the next set of results.
--
-- * 'ltfprrsTargets' - The policy targets.
--
-- * 'ltfprrsResponseStatus' - -- | The response status code.
listTargetsForPolicyResponse ::
  -- | 'ltfprrsResponseStatus'
  Int ->
  ListTargetsForPolicyResponse
listTargetsForPolicyResponse pResponseStatus_ =
  ListTargetsForPolicyResponse'
    { _ltfprrsNextMarker =
        Nothing,
      _ltfprrsTargets = Nothing,
      _ltfprrsResponseStatus = pResponseStatus_
    }

-- | A marker used to get the next set of results.
ltfprrsNextMarker :: Lens' ListTargetsForPolicyResponse (Maybe Text)
ltfprrsNextMarker = lens _ltfprrsNextMarker (\s a -> s {_ltfprrsNextMarker = a})

-- | The policy targets.
ltfprrsTargets :: Lens' ListTargetsForPolicyResponse [Text]
ltfprrsTargets = lens _ltfprrsTargets (\s a -> s {_ltfprrsTargets = a}) . _Default . _Coerce

-- | -- | The response status code.
ltfprrsResponseStatus :: Lens' ListTargetsForPolicyResponse Int
ltfprrsResponseStatus = lens _ltfprrsResponseStatus (\s a -> s {_ltfprrsResponseStatus = a})

instance NFData ListTargetsForPolicyResponse
