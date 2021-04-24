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
-- Module      : Network.AWS.EFS.DescribeMountTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the descriptions of all the current mount targets, or a specific mount target, for a file system. When requesting all of the current mount targets, the order of mount targets returned in the response is unspecified.
--
--
-- This operation requires permissions for the @elasticfilesystem:DescribeMountTargets@ action, on either the file system ID that you specify in @FileSystemId@ , or on the file system of the mount target that you specify in @MountTargetId@ .
--
--
-- This operation returns paginated results.
module Network.AWS.EFS.DescribeMountTargets
  ( -- * Creating a Request
    describeMountTargets,
    DescribeMountTargets,

    -- * Request Lenses
    dMountTargetId,
    dAccessPointId,
    dFileSystemId,
    dMaxItems,
    dMarker,

    -- * Destructuring the Response
    describeMountTargetsResponse,
    DescribeMountTargetsResponse,

    -- * Response Lenses
    dmtrrsNextMarker,
    dmtrrsMountTargets,
    dmtrrsMarker,
    dmtrrsResponseStatus,
  )
where

import Network.AWS.EFS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeMountTargets' smart constructor.
data DescribeMountTargets = DescribeMountTargets'
  { _dMountTargetId ::
      !(Maybe Text),
    _dAccessPointId ::
      !(Maybe Text),
    _dFileSystemId ::
      !(Maybe Text),
    _dMaxItems :: !(Maybe Nat),
    _dMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeMountTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMountTargetId' - (Optional) ID of the mount target that you want to have described (String). It must be included in your request if @FileSystemId@ is not included. Accepts either a mount target ID or ARN as input.
--
-- * 'dAccessPointId' - (Optional) The ID of the access point whose mount targets that you want to list. It must be included in your request if a @FileSystemId@ or @MountTargetId@ is not included in your request. Accepts either an access point ID or ARN as input.
--
-- * 'dFileSystemId' - (Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if an @AccessPointId@ or @MountTargetId@ is not included. Accepts either a file system ID or ARN as input.
--
-- * 'dMaxItems' - (Optional) Maximum number of mount targets to return in the response. Currently, this number is automatically set to 10, and other values are ignored. The response is paginated at 100 per page if you have more than 100 mount targets.
--
-- * 'dMarker' - (Optional) Opaque pagination token returned from a previous @DescribeMountTargets@ operation (String). If present, it specifies to continue the list from where the previous returning call left off.
describeMountTargets ::
  DescribeMountTargets
describeMountTargets =
  DescribeMountTargets'
    { _dMountTargetId = Nothing,
      _dAccessPointId = Nothing,
      _dFileSystemId = Nothing,
      _dMaxItems = Nothing,
      _dMarker = Nothing
    }

-- | (Optional) ID of the mount target that you want to have described (String). It must be included in your request if @FileSystemId@ is not included. Accepts either a mount target ID or ARN as input.
dMountTargetId :: Lens' DescribeMountTargets (Maybe Text)
dMountTargetId = lens _dMountTargetId (\s a -> s {_dMountTargetId = a})

-- | (Optional) The ID of the access point whose mount targets that you want to list. It must be included in your request if a @FileSystemId@ or @MountTargetId@ is not included in your request. Accepts either an access point ID or ARN as input.
dAccessPointId :: Lens' DescribeMountTargets (Maybe Text)
dAccessPointId = lens _dAccessPointId (\s a -> s {_dAccessPointId = a})

-- | (Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if an @AccessPointId@ or @MountTargetId@ is not included. Accepts either a file system ID or ARN as input.
dFileSystemId :: Lens' DescribeMountTargets (Maybe Text)
dFileSystemId = lens _dFileSystemId (\s a -> s {_dFileSystemId = a})

-- | (Optional) Maximum number of mount targets to return in the response. Currently, this number is automatically set to 10, and other values are ignored. The response is paginated at 100 per page if you have more than 100 mount targets.
dMaxItems :: Lens' DescribeMountTargets (Maybe Natural)
dMaxItems = lens _dMaxItems (\s a -> s {_dMaxItems = a}) . mapping _Nat

-- | (Optional) Opaque pagination token returned from a previous @DescribeMountTargets@ operation (String). If present, it specifies to continue the list from where the previous returning call left off.
dMarker :: Lens' DescribeMountTargets (Maybe Text)
dMarker = lens _dMarker (\s a -> s {_dMarker = a})

instance AWSPager DescribeMountTargets where
  page rq rs
    | stop (rs ^. dmtrrsNextMarker) = Nothing
    | stop (rs ^. dmtrrsMountTargets) = Nothing
    | otherwise =
      Just $ rq & dMarker .~ rs ^. dmtrrsNextMarker

instance AWSRequest DescribeMountTargets where
  type
    Rs DescribeMountTargets =
      DescribeMountTargetsResponse
  request = get efs
  response =
    receiveJSON
      ( \s h x ->
          DescribeMountTargetsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "MountTargets" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMountTargets

instance NFData DescribeMountTargets

instance ToHeaders DescribeMountTargets where
  toHeaders = const mempty

instance ToPath DescribeMountTargets where
  toPath = const "/2015-02-01/mount-targets"

instance ToQuery DescribeMountTargets where
  toQuery DescribeMountTargets' {..} =
    mconcat
      [ "MountTargetId" =: _dMountTargetId,
        "AccessPointId" =: _dAccessPointId,
        "FileSystemId" =: _dFileSystemId,
        "MaxItems" =: _dMaxItems,
        "Marker" =: _dMarker
      ]

-- |
--
--
--
-- /See:/ 'describeMountTargetsResponse' smart constructor.
data DescribeMountTargetsResponse = DescribeMountTargetsResponse'
  { _dmtrrsNextMarker ::
      !(Maybe Text),
    _dmtrrsMountTargets ::
      !( Maybe
           [MountTargetDescription]
       ),
    _dmtrrsMarker ::
      !(Maybe Text),
    _dmtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeMountTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmtrrsNextMarker' - If a value is present, there are more mount targets to return. In a subsequent request, you can provide @Marker@ in your request with this value to retrieve the next set of mount targets.
--
-- * 'dmtrrsMountTargets' - Returns the file system's mount targets as an array of @MountTargetDescription@ objects.
--
-- * 'dmtrrsMarker' - If the request included the @Marker@ , the response returns that value in this field.
--
-- * 'dmtrrsResponseStatus' - -- | The response status code.
describeMountTargetsResponse ::
  -- | 'dmtrrsResponseStatus'
  Int ->
  DescribeMountTargetsResponse
describeMountTargetsResponse pResponseStatus_ =
  DescribeMountTargetsResponse'
    { _dmtrrsNextMarker =
        Nothing,
      _dmtrrsMountTargets = Nothing,
      _dmtrrsMarker = Nothing,
      _dmtrrsResponseStatus = pResponseStatus_
    }

-- | If a value is present, there are more mount targets to return. In a subsequent request, you can provide @Marker@ in your request with this value to retrieve the next set of mount targets.
dmtrrsNextMarker :: Lens' DescribeMountTargetsResponse (Maybe Text)
dmtrrsNextMarker = lens _dmtrrsNextMarker (\s a -> s {_dmtrrsNextMarker = a})

-- | Returns the file system's mount targets as an array of @MountTargetDescription@ objects.
dmtrrsMountTargets :: Lens' DescribeMountTargetsResponse [MountTargetDescription]
dmtrrsMountTargets = lens _dmtrrsMountTargets (\s a -> s {_dmtrrsMountTargets = a}) . _Default . _Coerce

-- | If the request included the @Marker@ , the response returns that value in this field.
dmtrrsMarker :: Lens' DescribeMountTargetsResponse (Maybe Text)
dmtrrsMarker = lens _dmtrrsMarker (\s a -> s {_dmtrrsMarker = a})

-- | -- | The response status code.
dmtrrsResponseStatus :: Lens' DescribeMountTargetsResponse Int
dmtrrsResponseStatus = lens _dmtrrsResponseStatus (\s a -> s {_dmtrrsResponseStatus = a})

instance NFData DescribeMountTargetsResponse
