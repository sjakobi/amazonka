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
-- Module      : Network.AWS.StorageGateway.ListVolumes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The response includes only the volume ARNs. If you want additional volume information, use the 'DescribeStorediSCSIVolumes' or the 'DescribeCachediSCSIVolumes' API.
--
--
-- The operation supports pagination. By default, the operation returns a maximum of up to 100 volumes. You can optionally specify the @Limit@ field in the body to limit the number of volumes in the response. If the number of volumes returned in the response is truncated, the response includes a Marker field. You can use this Marker value in your subsequent request to retrieve the next set of volumes. This operation is only supported in the cached volume and stored volume gateway types.
--
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.ListVolumes
  ( -- * Creating a Request
    listVolumes,
    ListVolumes,

    -- * Request Lenses
    lvLimit,
    lvGatewayARN,
    lvMarker,

    -- * Destructuring the Response
    listVolumesResponse,
    ListVolumesResponse,

    -- * Response Lenses
    lvrrsGatewayARN,
    lvrrsVolumeInfos,
    lvrrsMarker,
    lvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | A JSON object that contains one or more of the following fields:
--
--
--     * 'ListVolumesInput$Limit'
--
--     * 'ListVolumesInput$Marker'
--
--
--
--
-- /See:/ 'listVolumes' smart constructor.
data ListVolumes = ListVolumes'
  { _lvLimit ::
      !(Maybe Nat),
    _lvGatewayARN :: !(Maybe Text),
    _lvMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListVolumes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvLimit' - Specifies that the list of volumes returned be limited to the specified number of items.
--
-- * 'lvGatewayARN' - Undocumented member.
--
-- * 'lvMarker' - A string that indicates the position at which to begin the returned list of volumes. Obtain the marker from the response of a previous List iSCSI Volumes request.
listVolumes ::
  ListVolumes
listVolumes =
  ListVolumes'
    { _lvLimit = Nothing,
      _lvGatewayARN = Nothing,
      _lvMarker = Nothing
    }

-- | Specifies that the list of volumes returned be limited to the specified number of items.
lvLimit :: Lens' ListVolumes (Maybe Natural)
lvLimit = lens _lvLimit (\s a -> s {_lvLimit = a}) . mapping _Nat

-- | Undocumented member.
lvGatewayARN :: Lens' ListVolumes (Maybe Text)
lvGatewayARN = lens _lvGatewayARN (\s a -> s {_lvGatewayARN = a})

-- | A string that indicates the position at which to begin the returned list of volumes. Obtain the marker from the response of a previous List iSCSI Volumes request.
lvMarker :: Lens' ListVolumes (Maybe Text)
lvMarker = lens _lvMarker (\s a -> s {_lvMarker = a})

instance AWSPager ListVolumes where
  page rq rs
    | stop (rs ^. lvrrsMarker) = Nothing
    | stop (rs ^. lvrrsVolumeInfos) = Nothing
    | otherwise =
      Just $ rq & lvMarker .~ rs ^. lvrrsMarker

instance AWSRequest ListVolumes where
  type Rs ListVolumes = ListVolumesResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          ListVolumesResponse'
            <$> (x .?> "GatewayARN")
            <*> (x .?> "VolumeInfos" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListVolumes

instance NFData ListVolumes

instance ToHeaders ListVolumes where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.ListVolumes" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListVolumes where
  toJSON ListVolumes' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _lvLimit,
            ("GatewayARN" .=) <$> _lvGatewayARN,
            ("Marker" .=) <$> _lvMarker
          ]
      )

instance ToPath ListVolumes where
  toPath = const "/"

instance ToQuery ListVolumes where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--     * 'ListVolumesOutput$Marker'
--
--     * 'ListVolumesOutput$VolumeInfos'
--
--
--
--
-- /See:/ 'listVolumesResponse' smart constructor.
data ListVolumesResponse = ListVolumesResponse'
  { _lvrrsGatewayARN ::
      !(Maybe Text),
    _lvrrsVolumeInfos ::
      !(Maybe [VolumeInfo]),
    _lvrrsMarker :: !(Maybe Text),
    _lvrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListVolumesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lvrrsGatewayARN' - Undocumented member.
--
-- * 'lvrrsVolumeInfos' - An array of 'VolumeInfo' objects, where each object describes an iSCSI volume. If no volumes are defined for the gateway, then @VolumeInfos@ is an empty array "[]".
--
-- * 'lvrrsMarker' - Use the marker in your next request to continue pagination of iSCSI volumes. If there are no more volumes to list, this field does not appear in the response body.
--
-- * 'lvrrsResponseStatus' - -- | The response status code.
listVolumesResponse ::
  -- | 'lvrrsResponseStatus'
  Int ->
  ListVolumesResponse
listVolumesResponse pResponseStatus_ =
  ListVolumesResponse'
    { _lvrrsGatewayARN = Nothing,
      _lvrrsVolumeInfos = Nothing,
      _lvrrsMarker = Nothing,
      _lvrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lvrrsGatewayARN :: Lens' ListVolumesResponse (Maybe Text)
lvrrsGatewayARN = lens _lvrrsGatewayARN (\s a -> s {_lvrrsGatewayARN = a})

-- | An array of 'VolumeInfo' objects, where each object describes an iSCSI volume. If no volumes are defined for the gateway, then @VolumeInfos@ is an empty array "[]".
lvrrsVolumeInfos :: Lens' ListVolumesResponse [VolumeInfo]
lvrrsVolumeInfos = lens _lvrrsVolumeInfos (\s a -> s {_lvrrsVolumeInfos = a}) . _Default . _Coerce

-- | Use the marker in your next request to continue pagination of iSCSI volumes. If there are no more volumes to list, this field does not appear in the response body.
lvrrsMarker :: Lens' ListVolumesResponse (Maybe Text)
lvrrsMarker = lens _lvrrsMarker (\s a -> s {_lvrrsMarker = a})

-- | -- | The response status code.
lvrrsResponseStatus :: Lens' ListVolumesResponse Int
lvrrsResponseStatus = lens _lvrrsResponseStatus (\s a -> s {_lvrrsResponseStatus = a})

instance NFData ListVolumesResponse
