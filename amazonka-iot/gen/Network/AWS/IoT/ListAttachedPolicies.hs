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
-- Module      : Network.AWS.IoT.ListAttachedPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the policies attached to the specified thing group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListAttachedPolicies
  ( -- * Creating a Request
    listAttachedPolicies,
    ListAttachedPolicies,

    -- * Request Lenses
    lapPageSize,
    lapRecursive,
    lapMarker,
    lapTarget,

    -- * Destructuring the Response
    listAttachedPoliciesResponse,
    ListAttachedPoliciesResponse,

    -- * Response Lenses
    laprrsPolicies,
    laprrsNextMarker,
    laprrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAttachedPolicies' smart constructor.
data ListAttachedPolicies = ListAttachedPolicies'
  { _lapPageSize ::
      !(Maybe Nat),
    _lapRecursive ::
      !(Maybe Bool),
    _lapMarker :: !(Maybe Text),
    _lapTarget :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAttachedPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapPageSize' - The maximum number of results to be returned per request.
--
-- * 'lapRecursive' - When true, recursively list attached policies.
--
-- * 'lapMarker' - The token to retrieve the next set of results.
--
-- * 'lapTarget' - The group or principal for which the policies will be listed. Valid principals are CertificateArn (arn:aws:iot:/region/ :/accountId/ :cert//certificateId/ ), thingGroupArn (arn:aws:iot:/region/ :/accountId/ :thinggroup//groupName/ ) and CognitoId (/region/ :/id/ ).
listAttachedPolicies ::
  -- | 'lapTarget'
  Text ->
  ListAttachedPolicies
listAttachedPolicies pTarget_ =
  ListAttachedPolicies'
    { _lapPageSize = Nothing,
      _lapRecursive = Nothing,
      _lapMarker = Nothing,
      _lapTarget = pTarget_
    }

-- | The maximum number of results to be returned per request.
lapPageSize :: Lens' ListAttachedPolicies (Maybe Natural)
lapPageSize = lens _lapPageSize (\s a -> s {_lapPageSize = a}) . mapping _Nat

-- | When true, recursively list attached policies.
lapRecursive :: Lens' ListAttachedPolicies (Maybe Bool)
lapRecursive = lens _lapRecursive (\s a -> s {_lapRecursive = a})

-- | The token to retrieve the next set of results.
lapMarker :: Lens' ListAttachedPolicies (Maybe Text)
lapMarker = lens _lapMarker (\s a -> s {_lapMarker = a})

-- | The group or principal for which the policies will be listed. Valid principals are CertificateArn (arn:aws:iot:/region/ :/accountId/ :cert//certificateId/ ), thingGroupArn (arn:aws:iot:/region/ :/accountId/ :thinggroup//groupName/ ) and CognitoId (/region/ :/id/ ).
lapTarget :: Lens' ListAttachedPolicies Text
lapTarget = lens _lapTarget (\s a -> s {_lapTarget = a})

instance AWSPager ListAttachedPolicies where
  page rq rs
    | stop (rs ^. laprrsNextMarker) = Nothing
    | stop (rs ^. laprrsPolicies) = Nothing
    | otherwise =
      Just $ rq & lapMarker .~ rs ^. laprrsNextMarker

instance AWSRequest ListAttachedPolicies where
  type
    Rs ListAttachedPolicies =
      ListAttachedPoliciesResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          ListAttachedPoliciesResponse'
            <$> (x .?> "policies" .!@ mempty)
            <*> (x .?> "nextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListAttachedPolicies

instance NFData ListAttachedPolicies

instance ToHeaders ListAttachedPolicies where
  toHeaders = const mempty

instance ToJSON ListAttachedPolicies where
  toJSON = const (Object mempty)

instance ToPath ListAttachedPolicies where
  toPath ListAttachedPolicies' {..} =
    mconcat ["/attached-policies/", toBS _lapTarget]

instance ToQuery ListAttachedPolicies where
  toQuery ListAttachedPolicies' {..} =
    mconcat
      [ "pageSize" =: _lapPageSize,
        "recursive" =: _lapRecursive,
        "marker" =: _lapMarker
      ]

-- | /See:/ 'listAttachedPoliciesResponse' smart constructor.
data ListAttachedPoliciesResponse = ListAttachedPoliciesResponse'
  { _laprrsPolicies ::
      !( Maybe
           [Policy]
       ),
    _laprrsNextMarker ::
      !(Maybe Text),
    _laprrsResponseStatus ::
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

-- | Creates a value of 'ListAttachedPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laprrsPolicies' - The policies.
--
-- * 'laprrsNextMarker' - The token to retrieve the next set of results, or ``null`` if there are no more results.
--
-- * 'laprrsResponseStatus' - -- | The response status code.
listAttachedPoliciesResponse ::
  -- | 'laprrsResponseStatus'
  Int ->
  ListAttachedPoliciesResponse
listAttachedPoliciesResponse pResponseStatus_ =
  ListAttachedPoliciesResponse'
    { _laprrsPolicies =
        Nothing,
      _laprrsNextMarker = Nothing,
      _laprrsResponseStatus = pResponseStatus_
    }

-- | The policies.
laprrsPolicies :: Lens' ListAttachedPoliciesResponse [Policy]
laprrsPolicies = lens _laprrsPolicies (\s a -> s {_laprrsPolicies = a}) . _Default . _Coerce

-- | The token to retrieve the next set of results, or ``null`` if there are no more results.
laprrsNextMarker :: Lens' ListAttachedPoliciesResponse (Maybe Text)
laprrsNextMarker = lens _laprrsNextMarker (\s a -> s {_laprrsNextMarker = a})

-- | -- | The response status code.
laprrsResponseStatus :: Lens' ListAttachedPoliciesResponse Int
laprrsResponseStatus = lens _laprrsResponseStatus (\s a -> s {_laprrsResponseStatus = a})

instance NFData ListAttachedPoliciesResponse
