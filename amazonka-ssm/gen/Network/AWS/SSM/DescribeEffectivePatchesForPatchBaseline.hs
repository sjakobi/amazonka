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
-- Module      : Network.AWS.SSM.DescribeEffectivePatchesForPatchBaseline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline. Note that this API applies only to Windows patch baselines.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeEffectivePatchesForPatchBaseline
  ( -- * Creating a Request
    describeEffectivePatchesForPatchBaseline,
    DescribeEffectivePatchesForPatchBaseline,

    -- * Request Lenses
    depfpbNextToken,
    depfpbMaxResults,
    depfpbBaselineId,

    -- * Destructuring the Response
    describeEffectivePatchesForPatchBaselineResponse,
    DescribeEffectivePatchesForPatchBaselineResponse,

    -- * Response Lenses
    depfpbrrsNextToken,
    depfpbrrsEffectivePatches,
    depfpbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeEffectivePatchesForPatchBaseline' smart constructor.
data DescribeEffectivePatchesForPatchBaseline = DescribeEffectivePatchesForPatchBaseline'
  { _depfpbNextToken ::
      !( Maybe
           Text
       ),
    _depfpbMaxResults ::
      !( Maybe
           Nat
       ),
    _depfpbBaselineId ::
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

-- | Creates a value of 'DescribeEffectivePatchesForPatchBaseline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'depfpbNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'depfpbMaxResults' - The maximum number of patches to return (per page).
--
-- * 'depfpbBaselineId' - The ID of the patch baseline to retrieve the effective patches for.
describeEffectivePatchesForPatchBaseline ::
  -- | 'depfpbBaselineId'
  Text ->
  DescribeEffectivePatchesForPatchBaseline
describeEffectivePatchesForPatchBaseline pBaselineId_ =
  DescribeEffectivePatchesForPatchBaseline'
    { _depfpbNextToken =
        Nothing,
      _depfpbMaxResults = Nothing,
      _depfpbBaselineId = pBaselineId_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
depfpbNextToken :: Lens' DescribeEffectivePatchesForPatchBaseline (Maybe Text)
depfpbNextToken = lens _depfpbNextToken (\s a -> s {_depfpbNextToken = a})

-- | The maximum number of patches to return (per page).
depfpbMaxResults :: Lens' DescribeEffectivePatchesForPatchBaseline (Maybe Natural)
depfpbMaxResults = lens _depfpbMaxResults (\s a -> s {_depfpbMaxResults = a}) . mapping _Nat

-- | The ID of the patch baseline to retrieve the effective patches for.
depfpbBaselineId :: Lens' DescribeEffectivePatchesForPatchBaseline Text
depfpbBaselineId = lens _depfpbBaselineId (\s a -> s {_depfpbBaselineId = a})

instance
  AWSPager
    DescribeEffectivePatchesForPatchBaseline
  where
  page rq rs
    | stop (rs ^. depfpbrrsNextToken) = Nothing
    | stop (rs ^. depfpbrrsEffectivePatches) = Nothing
    | otherwise =
      Just $
        rq
          & depfpbNextToken .~ rs ^. depfpbrrsNextToken

instance
  AWSRequest
    DescribeEffectivePatchesForPatchBaseline
  where
  type
    Rs DescribeEffectivePatchesForPatchBaseline =
      DescribeEffectivePatchesForPatchBaselineResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeEffectivePatchesForPatchBaselineResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "EffectivePatches" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeEffectivePatchesForPatchBaseline

instance
  NFData
    DescribeEffectivePatchesForPatchBaseline

instance
  ToHeaders
    DescribeEffectivePatchesForPatchBaseline
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeEffectivePatchesForPatchBaseline" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeEffectivePatchesForPatchBaseline
  where
  toJSON DescribeEffectivePatchesForPatchBaseline' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _depfpbNextToken,
            ("MaxResults" .=) <$> _depfpbMaxResults,
            Just ("BaselineId" .= _depfpbBaselineId)
          ]
      )

instance
  ToPath
    DescribeEffectivePatchesForPatchBaseline
  where
  toPath = const "/"

instance
  ToQuery
    DescribeEffectivePatchesForPatchBaseline
  where
  toQuery = const mempty

-- | /See:/ 'describeEffectivePatchesForPatchBaselineResponse' smart constructor.
data DescribeEffectivePatchesForPatchBaselineResponse = DescribeEffectivePatchesForPatchBaselineResponse'
  { _depfpbrrsNextToken ::
      !( Maybe
           Text
       ),
    _depfpbrrsEffectivePatches ::
      !( Maybe
           [EffectivePatch]
       ),
    _depfpbrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEffectivePatchesForPatchBaselineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'depfpbrrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'depfpbrrsEffectivePatches' - An array of patches and patch status.
--
-- * 'depfpbrrsResponseStatus' - -- | The response status code.
describeEffectivePatchesForPatchBaselineResponse ::
  -- | 'depfpbrrsResponseStatus'
  Int ->
  DescribeEffectivePatchesForPatchBaselineResponse
describeEffectivePatchesForPatchBaselineResponse
  pResponseStatus_ =
    DescribeEffectivePatchesForPatchBaselineResponse'
      { _depfpbrrsNextToken =
          Nothing,
        _depfpbrrsEffectivePatches =
          Nothing,
        _depfpbrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
depfpbrrsNextToken :: Lens' DescribeEffectivePatchesForPatchBaselineResponse (Maybe Text)
depfpbrrsNextToken = lens _depfpbrrsNextToken (\s a -> s {_depfpbrrsNextToken = a})

-- | An array of patches and patch status.
depfpbrrsEffectivePatches :: Lens' DescribeEffectivePatchesForPatchBaselineResponse [EffectivePatch]
depfpbrrsEffectivePatches = lens _depfpbrrsEffectivePatches (\s a -> s {_depfpbrrsEffectivePatches = a}) . _Default . _Coerce

-- | -- | The response status code.
depfpbrrsResponseStatus :: Lens' DescribeEffectivePatchesForPatchBaselineResponse Int
depfpbrrsResponseStatus = lens _depfpbrrsResponseStatus (\s a -> s {_depfpbrrsResponseStatus = a})

instance
  NFData
    DescribeEffectivePatchesForPatchBaselineResponse
