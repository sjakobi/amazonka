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
-- Module      : Network.AWS.SSM.DescribeMaintenanceWindowsForTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the maintenance window targets or tasks that an instance is associated with.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeMaintenanceWindowsForTarget
  ( -- * Creating a Request
    describeMaintenanceWindowsForTarget,
    DescribeMaintenanceWindowsForTarget,

    -- * Request Lenses
    dmwftNextToken,
    dmwftMaxResults,
    dmwftTargets,
    dmwftResourceType,

    -- * Destructuring the Response
    describeMaintenanceWindowsForTargetResponse,
    DescribeMaintenanceWindowsForTargetResponse,

    -- * Response Lenses
    dmwftrrsNextToken,
    dmwftrrsWindowIdentities,
    dmwftrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeMaintenanceWindowsForTarget' smart constructor.
data DescribeMaintenanceWindowsForTarget = DescribeMaintenanceWindowsForTarget'
  { _dmwftNextToken ::
      !( Maybe
           Text
       ),
    _dmwftMaxResults ::
      !( Maybe
           Nat
       ),
    _dmwftTargets ::
      ![Target],
    _dmwftResourceType ::
      !MaintenanceWindowResourceType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMaintenanceWindowsForTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwftNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dmwftMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'dmwftTargets' - The instance ID or key/value pair to retrieve information about.
--
-- * 'dmwftResourceType' - The type of resource you want to retrieve information about. For example, "INSTANCE".
describeMaintenanceWindowsForTarget ::
  -- | 'dmwftResourceType'
  MaintenanceWindowResourceType ->
  DescribeMaintenanceWindowsForTarget
describeMaintenanceWindowsForTarget pResourceType_ =
  DescribeMaintenanceWindowsForTarget'
    { _dmwftNextToken =
        Nothing,
      _dmwftMaxResults = Nothing,
      _dmwftTargets = mempty,
      _dmwftResourceType = pResourceType_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dmwftNextToken :: Lens' DescribeMaintenanceWindowsForTarget (Maybe Text)
dmwftNextToken = lens _dmwftNextToken (\s a -> s {_dmwftNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
dmwftMaxResults :: Lens' DescribeMaintenanceWindowsForTarget (Maybe Natural)
dmwftMaxResults = lens _dmwftMaxResults (\s a -> s {_dmwftMaxResults = a}) . mapping _Nat

-- | The instance ID or key/value pair to retrieve information about.
dmwftTargets :: Lens' DescribeMaintenanceWindowsForTarget [Target]
dmwftTargets = lens _dmwftTargets (\s a -> s {_dmwftTargets = a}) . _Coerce

-- | The type of resource you want to retrieve information about. For example, "INSTANCE".
dmwftResourceType :: Lens' DescribeMaintenanceWindowsForTarget MaintenanceWindowResourceType
dmwftResourceType = lens _dmwftResourceType (\s a -> s {_dmwftResourceType = a})

instance AWSPager DescribeMaintenanceWindowsForTarget where
  page rq rs
    | stop (rs ^. dmwftrrsNextToken) = Nothing
    | stop (rs ^. dmwftrrsWindowIdentities) = Nothing
    | otherwise =
      Just $ rq & dmwftNextToken .~ rs ^. dmwftrrsNextToken

instance
  AWSRequest
    DescribeMaintenanceWindowsForTarget
  where
  type
    Rs DescribeMaintenanceWindowsForTarget =
      DescribeMaintenanceWindowsForTargetResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeMaintenanceWindowsForTargetResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "WindowIdentities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMaintenanceWindowsForTarget

instance NFData DescribeMaintenanceWindowsForTarget

instance
  ToHeaders
    DescribeMaintenanceWindowsForTarget
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonSSM.DescribeMaintenanceWindowsForTarget" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMaintenanceWindowsForTarget where
  toJSON DescribeMaintenanceWindowsForTarget' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dmwftNextToken,
            ("MaxResults" .=) <$> _dmwftMaxResults,
            Just ("Targets" .= _dmwftTargets),
            Just ("ResourceType" .= _dmwftResourceType)
          ]
      )

instance ToPath DescribeMaintenanceWindowsForTarget where
  toPath = const "/"

instance ToQuery DescribeMaintenanceWindowsForTarget where
  toQuery = const mempty

-- | /See:/ 'describeMaintenanceWindowsForTargetResponse' smart constructor.
data DescribeMaintenanceWindowsForTargetResponse = DescribeMaintenanceWindowsForTargetResponse'
  { _dmwftrrsNextToken ::
      !( Maybe
           Text
       ),
    _dmwftrrsWindowIdentities ::
      !( Maybe
           [MaintenanceWindowIdentityForTarget]
       ),
    _dmwftrrsResponseStatus ::
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

-- | Creates a value of 'DescribeMaintenanceWindowsForTargetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmwftrrsNextToken' - The token for the next set of items to return. (You use this token in the next call.)
--
-- * 'dmwftrrsWindowIdentities' - Information about the maintenance window targets and tasks an instance is associated with.
--
-- * 'dmwftrrsResponseStatus' - -- | The response status code.
describeMaintenanceWindowsForTargetResponse ::
  -- | 'dmwftrrsResponseStatus'
  Int ->
  DescribeMaintenanceWindowsForTargetResponse
describeMaintenanceWindowsForTargetResponse
  pResponseStatus_ =
    DescribeMaintenanceWindowsForTargetResponse'
      { _dmwftrrsNextToken =
          Nothing,
        _dmwftrrsWindowIdentities =
          Nothing,
        _dmwftrrsResponseStatus =
          pResponseStatus_
      }

-- | The token for the next set of items to return. (You use this token in the next call.)
dmwftrrsNextToken :: Lens' DescribeMaintenanceWindowsForTargetResponse (Maybe Text)
dmwftrrsNextToken = lens _dmwftrrsNextToken (\s a -> s {_dmwftrrsNextToken = a})

-- | Information about the maintenance window targets and tasks an instance is associated with.
dmwftrrsWindowIdentities :: Lens' DescribeMaintenanceWindowsForTargetResponse [MaintenanceWindowIdentityForTarget]
dmwftrrsWindowIdentities = lens _dmwftrrsWindowIdentities (\s a -> s {_dmwftrrsWindowIdentities = a}) . _Default . _Coerce

-- | -- | The response status code.
dmwftrrsResponseStatus :: Lens' DescribeMaintenanceWindowsForTargetResponse Int
dmwftrrsResponseStatus = lens _dmwftrrsResponseStatus (\s a -> s {_dmwftrrsResponseStatus = a})

instance
  NFData
    DescribeMaintenanceWindowsForTargetResponse
