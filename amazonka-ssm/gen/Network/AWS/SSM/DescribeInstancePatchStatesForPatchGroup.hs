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
-- Module      : Network.AWS.SSM.DescribeInstancePatchStatesForPatchGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the high-level patch state for the instances in the specified patch group.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeInstancePatchStatesForPatchGroup
  ( -- * Creating a Request
    describeInstancePatchStatesForPatchGroup,
    DescribeInstancePatchStatesForPatchGroup,

    -- * Request Lenses
    dipsfpgNextToken,
    dipsfpgMaxResults,
    dipsfpgFilters,
    dipsfpgPatchGroup,

    -- * Destructuring the Response
    describeInstancePatchStatesForPatchGroupResponse,
    DescribeInstancePatchStatesForPatchGroupResponse,

    -- * Response Lenses
    dipsfpgrrsNextToken,
    dipsfpgrrsInstancePatchStates,
    dipsfpgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeInstancePatchStatesForPatchGroup' smart constructor.
data DescribeInstancePatchStatesForPatchGroup = DescribeInstancePatchStatesForPatchGroup'
  { _dipsfpgNextToken ::
      !( Maybe
           Text
       ),
    _dipsfpgMaxResults ::
      !( Maybe
           Nat
       ),
    _dipsfpgFilters ::
      !( Maybe
           [InstancePatchStateFilter]
       ),
    _dipsfpgPatchGroup ::
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

-- | Creates a value of 'DescribeInstancePatchStatesForPatchGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dipsfpgNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dipsfpgMaxResults' - The maximum number of patches to return (per page).
--
-- * 'dipsfpgFilters' - Each entry in the array is a structure containing: Key (string between 1 and 200 characters) Values (array containing a single string) Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")
--
-- * 'dipsfpgPatchGroup' - The name of the patch group for which the patch state information should be retrieved.
describeInstancePatchStatesForPatchGroup ::
  -- | 'dipsfpgPatchGroup'
  Text ->
  DescribeInstancePatchStatesForPatchGroup
describeInstancePatchStatesForPatchGroup pPatchGroup_ =
  DescribeInstancePatchStatesForPatchGroup'
    { _dipsfpgNextToken =
        Nothing,
      _dipsfpgMaxResults = Nothing,
      _dipsfpgFilters = Nothing,
      _dipsfpgPatchGroup = pPatchGroup_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dipsfpgNextToken :: Lens' DescribeInstancePatchStatesForPatchGroup (Maybe Text)
dipsfpgNextToken = lens _dipsfpgNextToken (\s a -> s {_dipsfpgNextToken = a})

-- | The maximum number of patches to return (per page).
dipsfpgMaxResults :: Lens' DescribeInstancePatchStatesForPatchGroup (Maybe Natural)
dipsfpgMaxResults = lens _dipsfpgMaxResults (\s a -> s {_dipsfpgMaxResults = a}) . mapping _Nat

-- | Each entry in the array is a structure containing: Key (string between 1 and 200 characters) Values (array containing a single string) Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")
dipsfpgFilters :: Lens' DescribeInstancePatchStatesForPatchGroup [InstancePatchStateFilter]
dipsfpgFilters = lens _dipsfpgFilters (\s a -> s {_dipsfpgFilters = a}) . _Default . _Coerce

-- | The name of the patch group for which the patch state information should be retrieved.
dipsfpgPatchGroup :: Lens' DescribeInstancePatchStatesForPatchGroup Text
dipsfpgPatchGroup = lens _dipsfpgPatchGroup (\s a -> s {_dipsfpgPatchGroup = a})

instance
  AWSPager
    DescribeInstancePatchStatesForPatchGroup
  where
  page rq rs
    | stop (rs ^. dipsfpgrrsNextToken) = Nothing
    | stop (rs ^. dipsfpgrrsInstancePatchStates) =
      Nothing
    | otherwise =
      Just $
        rq
          & dipsfpgNextToken .~ rs ^. dipsfpgrrsNextToken

instance
  AWSRequest
    DescribeInstancePatchStatesForPatchGroup
  where
  type
    Rs DescribeInstancePatchStatesForPatchGroup =
      DescribeInstancePatchStatesForPatchGroupResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeInstancePatchStatesForPatchGroupResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "InstancePatchStates")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeInstancePatchStatesForPatchGroup

instance
  NFData
    DescribeInstancePatchStatesForPatchGroup

instance
  ToHeaders
    DescribeInstancePatchStatesForPatchGroup
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeInstancePatchStatesForPatchGroup" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeInstancePatchStatesForPatchGroup
  where
  toJSON DescribeInstancePatchStatesForPatchGroup' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dipsfpgNextToken,
            ("MaxResults" .=) <$> _dipsfpgMaxResults,
            ("Filters" .=) <$> _dipsfpgFilters,
            Just ("PatchGroup" .= _dipsfpgPatchGroup)
          ]
      )

instance
  ToPath
    DescribeInstancePatchStatesForPatchGroup
  where
  toPath = const "/"

instance
  ToQuery
    DescribeInstancePatchStatesForPatchGroup
  where
  toQuery = const mempty

-- | /See:/ 'describeInstancePatchStatesForPatchGroupResponse' smart constructor.
data DescribeInstancePatchStatesForPatchGroupResponse = DescribeInstancePatchStatesForPatchGroupResponse'
  { _dipsfpgrrsNextToken ::
      !( Maybe
           Text
       ),
    _dipsfpgrrsInstancePatchStates ::
      !( Maybe
           ( List1
               InstancePatchState
           )
       ),
    _dipsfpgrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstancePatchStatesForPatchGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dipsfpgrrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'dipsfpgrrsInstancePatchStates' - The high-level patch state for the requested instances.
--
-- * 'dipsfpgrrsResponseStatus' - -- | The response status code.
describeInstancePatchStatesForPatchGroupResponse ::
  -- | 'dipsfpgrrsResponseStatus'
  Int ->
  DescribeInstancePatchStatesForPatchGroupResponse
describeInstancePatchStatesForPatchGroupResponse
  pResponseStatus_ =
    DescribeInstancePatchStatesForPatchGroupResponse'
      { _dipsfpgrrsNextToken =
          Nothing,
        _dipsfpgrrsInstancePatchStates =
          Nothing,
        _dipsfpgrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
dipsfpgrrsNextToken :: Lens' DescribeInstancePatchStatesForPatchGroupResponse (Maybe Text)
dipsfpgrrsNextToken = lens _dipsfpgrrsNextToken (\s a -> s {_dipsfpgrrsNextToken = a})

-- | The high-level patch state for the requested instances.
dipsfpgrrsInstancePatchStates :: Lens' DescribeInstancePatchStatesForPatchGroupResponse (Maybe (NonEmpty InstancePatchState))
dipsfpgrrsInstancePatchStates = lens _dipsfpgrrsInstancePatchStates (\s a -> s {_dipsfpgrrsInstancePatchStates = a}) . mapping _List1

-- | -- | The response status code.
dipsfpgrrsResponseStatus :: Lens' DescribeInstancePatchStatesForPatchGroupResponse Int
dipsfpgrrsResponseStatus = lens _dipsfpgrrsResponseStatus (\s a -> s {_dipsfpgrrsResponseStatus = a})

instance
  NFData
    DescribeInstancePatchStatesForPatchGroupResponse
