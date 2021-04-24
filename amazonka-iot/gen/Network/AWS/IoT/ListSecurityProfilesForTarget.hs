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
-- Module      : Network.AWS.IoT.ListSecurityProfilesForTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Device Defender security profiles attached to a target (thing group).
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListSecurityProfilesForTarget
  ( -- * Creating a Request
    listSecurityProfilesForTarget,
    ListSecurityProfilesForTarget,

    -- * Request Lenses
    lspftNextToken,
    lspftMaxResults,
    lspftRecursive,
    lspftSecurityProfileTargetARN,

    -- * Destructuring the Response
    listSecurityProfilesForTargetResponse,
    ListSecurityProfilesForTargetResponse,

    -- * Response Lenses
    lspftrrsNextToken,
    lspftrrsSecurityProfileTargetMappings,
    lspftrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSecurityProfilesForTarget' smart constructor.
data ListSecurityProfilesForTarget = ListSecurityProfilesForTarget'
  { _lspftNextToken ::
      !( Maybe
           Text
       ),
    _lspftMaxResults ::
      !( Maybe
           Nat
       ),
    _lspftRecursive ::
      !( Maybe
           Bool
       ),
    _lspftSecurityProfileTargetARN ::
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

-- | Creates a value of 'ListSecurityProfilesForTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lspftNextToken' - The token for the next set of results.
--
-- * 'lspftMaxResults' - The maximum number of results to return at one time.
--
-- * 'lspftRecursive' - If true, return child groups too.
--
-- * 'lspftSecurityProfileTargetARN' - The ARN of the target (thing group) whose attached security profiles you want to get.
listSecurityProfilesForTarget ::
  -- | 'lspftSecurityProfileTargetARN'
  Text ->
  ListSecurityProfilesForTarget
listSecurityProfilesForTarget
  pSecurityProfileTargetARN_ =
    ListSecurityProfilesForTarget'
      { _lspftNextToken =
          Nothing,
        _lspftMaxResults = Nothing,
        _lspftRecursive = Nothing,
        _lspftSecurityProfileTargetARN =
          pSecurityProfileTargetARN_
      }

-- | The token for the next set of results.
lspftNextToken :: Lens' ListSecurityProfilesForTarget (Maybe Text)
lspftNextToken = lens _lspftNextToken (\s a -> s {_lspftNextToken = a})

-- | The maximum number of results to return at one time.
lspftMaxResults :: Lens' ListSecurityProfilesForTarget (Maybe Natural)
lspftMaxResults = lens _lspftMaxResults (\s a -> s {_lspftMaxResults = a}) . mapping _Nat

-- | If true, return child groups too.
lspftRecursive :: Lens' ListSecurityProfilesForTarget (Maybe Bool)
lspftRecursive = lens _lspftRecursive (\s a -> s {_lspftRecursive = a})

-- | The ARN of the target (thing group) whose attached security profiles you want to get.
lspftSecurityProfileTargetARN :: Lens' ListSecurityProfilesForTarget Text
lspftSecurityProfileTargetARN = lens _lspftSecurityProfileTargetARN (\s a -> s {_lspftSecurityProfileTargetARN = a})

instance AWSPager ListSecurityProfilesForTarget where
  page rq rs
    | stop (rs ^. lspftrrsNextToken) = Nothing
    | stop (rs ^. lspftrrsSecurityProfileTargetMappings) =
      Nothing
    | otherwise =
      Just $ rq & lspftNextToken .~ rs ^. lspftrrsNextToken

instance AWSRequest ListSecurityProfilesForTarget where
  type
    Rs ListSecurityProfilesForTarget =
      ListSecurityProfilesForTargetResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListSecurityProfilesForTargetResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "securityProfileTargetMappings" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSecurityProfilesForTarget

instance NFData ListSecurityProfilesForTarget

instance ToHeaders ListSecurityProfilesForTarget where
  toHeaders = const mempty

instance ToPath ListSecurityProfilesForTarget where
  toPath = const "/security-profiles-for-target"

instance ToQuery ListSecurityProfilesForTarget where
  toQuery ListSecurityProfilesForTarget' {..} =
    mconcat
      [ "nextToken" =: _lspftNextToken,
        "maxResults" =: _lspftMaxResults,
        "recursive" =: _lspftRecursive,
        "securityProfileTargetArn"
          =: _lspftSecurityProfileTargetARN
      ]

-- | /See:/ 'listSecurityProfilesForTargetResponse' smart constructor.
data ListSecurityProfilesForTargetResponse = ListSecurityProfilesForTargetResponse'
  { _lspftrrsNextToken ::
      !( Maybe
           Text
       ),
    _lspftrrsSecurityProfileTargetMappings ::
      !( Maybe
           [SecurityProfileTargetMapping]
       ),
    _lspftrrsResponseStatus ::
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

-- | Creates a value of 'ListSecurityProfilesForTargetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lspftrrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'lspftrrsSecurityProfileTargetMappings' - A list of security profiles and their associated targets.
--
-- * 'lspftrrsResponseStatus' - -- | The response status code.
listSecurityProfilesForTargetResponse ::
  -- | 'lspftrrsResponseStatus'
  Int ->
  ListSecurityProfilesForTargetResponse
listSecurityProfilesForTargetResponse
  pResponseStatus_ =
    ListSecurityProfilesForTargetResponse'
      { _lspftrrsNextToken =
          Nothing,
        _lspftrrsSecurityProfileTargetMappings =
          Nothing,
        _lspftrrsResponseStatus =
          pResponseStatus_
      }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
lspftrrsNextToken :: Lens' ListSecurityProfilesForTargetResponse (Maybe Text)
lspftrrsNextToken = lens _lspftrrsNextToken (\s a -> s {_lspftrrsNextToken = a})

-- | A list of security profiles and their associated targets.
lspftrrsSecurityProfileTargetMappings :: Lens' ListSecurityProfilesForTargetResponse [SecurityProfileTargetMapping]
lspftrrsSecurityProfileTargetMappings = lens _lspftrrsSecurityProfileTargetMappings (\s a -> s {_lspftrrsSecurityProfileTargetMappings = a}) . _Default . _Coerce

-- | -- | The response status code.
lspftrrsResponseStatus :: Lens' ListSecurityProfilesForTargetResponse Int
lspftrrsResponseStatus = lens _lspftrrsResponseStatus (\s a -> s {_lspftrrsResponseStatus = a})

instance NFData ListSecurityProfilesForTargetResponse
