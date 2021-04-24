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
-- Module      : Network.AWS.SSM.DescribeInstancePatches
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the patches on the specified instance and their state relative to the patch baseline being used for the instance.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribeInstancePatches
  ( -- * Creating a Request
    describeInstancePatches,
    DescribeInstancePatches,

    -- * Request Lenses
    dipNextToken,
    dipMaxResults,
    dipFilters,
    dipInstanceId,

    -- * Destructuring the Response
    describeInstancePatchesResponse,
    DescribeInstancePatchesResponse,

    -- * Response Lenses
    diprrsNextToken,
    diprrsPatches,
    diprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'describeInstancePatches' smart constructor.
data DescribeInstancePatches = DescribeInstancePatches'
  { _dipNextToken ::
      !(Maybe Text),
    _dipMaxResults ::
      !(Maybe Nat),
    _dipFilters ::
      !( Maybe
           [PatchOrchestratorFilter]
       ),
    _dipInstanceId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstancePatches' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dipNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'dipMaxResults' - The maximum number of patches to return (per page).
--
-- * 'dipFilters' - An array of structures. Each entry in the array is a structure containing a Key, Value combination. Valid values for Key are @Classification@ | @KBId@ | @Severity@ | @State@ .
--
-- * 'dipInstanceId' - The ID of the instance whose patch state information should be retrieved.
describeInstancePatches ::
  -- | 'dipInstanceId'
  Text ->
  DescribeInstancePatches
describeInstancePatches pInstanceId_ =
  DescribeInstancePatches'
    { _dipNextToken = Nothing,
      _dipMaxResults = Nothing,
      _dipFilters = Nothing,
      _dipInstanceId = pInstanceId_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
dipNextToken :: Lens' DescribeInstancePatches (Maybe Text)
dipNextToken = lens _dipNextToken (\s a -> s {_dipNextToken = a})

-- | The maximum number of patches to return (per page).
dipMaxResults :: Lens' DescribeInstancePatches (Maybe Natural)
dipMaxResults = lens _dipMaxResults (\s a -> s {_dipMaxResults = a}) . mapping _Nat

-- | An array of structures. Each entry in the array is a structure containing a Key, Value combination. Valid values for Key are @Classification@ | @KBId@ | @Severity@ | @State@ .
dipFilters :: Lens' DescribeInstancePatches [PatchOrchestratorFilter]
dipFilters = lens _dipFilters (\s a -> s {_dipFilters = a}) . _Default . _Coerce

-- | The ID of the instance whose patch state information should be retrieved.
dipInstanceId :: Lens' DescribeInstancePatches Text
dipInstanceId = lens _dipInstanceId (\s a -> s {_dipInstanceId = a})

instance AWSPager DescribeInstancePatches where
  page rq rs
    | stop (rs ^. diprrsNextToken) = Nothing
    | stop (rs ^. diprrsPatches) = Nothing
    | otherwise =
      Just $ rq & dipNextToken .~ rs ^. diprrsNextToken

instance AWSRequest DescribeInstancePatches where
  type
    Rs DescribeInstancePatches =
      DescribeInstancePatchesResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          DescribeInstancePatchesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Patches" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstancePatches

instance NFData DescribeInstancePatches

instance ToHeaders DescribeInstancePatches where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DescribeInstancePatches" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeInstancePatches where
  toJSON DescribeInstancePatches' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _dipNextToken,
            ("MaxResults" .=) <$> _dipMaxResults,
            ("Filters" .=) <$> _dipFilters,
            Just ("InstanceId" .= _dipInstanceId)
          ]
      )

instance ToPath DescribeInstancePatches where
  toPath = const "/"

instance ToQuery DescribeInstancePatches where
  toQuery = const mempty

-- | /See:/ 'describeInstancePatchesResponse' smart constructor.
data DescribeInstancePatchesResponse = DescribeInstancePatchesResponse'
  { _diprrsNextToken ::
      !( Maybe
           Text
       ),
    _diprrsPatches ::
      !( Maybe
           [PatchComplianceData]
       ),
    _diprrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstancePatchesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diprrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'diprrsPatches' - Each entry in the array is a structure containing: Title (string) KBId (string) Classification (string) Severity (string) State (string, such as "INSTALLED" or "FAILED") InstalledTime (DateTime) InstalledBy (string)
--
-- * 'diprrsResponseStatus' - -- | The response status code.
describeInstancePatchesResponse ::
  -- | 'diprrsResponseStatus'
  Int ->
  DescribeInstancePatchesResponse
describeInstancePatchesResponse pResponseStatus_ =
  DescribeInstancePatchesResponse'
    { _diprrsNextToken =
        Nothing,
      _diprrsPatches = Nothing,
      _diprrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
diprrsNextToken :: Lens' DescribeInstancePatchesResponse (Maybe Text)
diprrsNextToken = lens _diprrsNextToken (\s a -> s {_diprrsNextToken = a})

-- | Each entry in the array is a structure containing: Title (string) KBId (string) Classification (string) Severity (string) State (string, such as "INSTALLED" or "FAILED") InstalledTime (DateTime) InstalledBy (string)
diprrsPatches :: Lens' DescribeInstancePatchesResponse [PatchComplianceData]
diprrsPatches = lens _diprrsPatches (\s a -> s {_diprrsPatches = a}) . _Default . _Coerce

-- | -- | The response status code.
diprrsResponseStatus :: Lens' DescribeInstancePatchesResponse Int
diprrsResponseStatus = lens _diprrsResponseStatus (\s a -> s {_diprrsResponseStatus = a})

instance NFData DescribeInstancePatchesResponse
