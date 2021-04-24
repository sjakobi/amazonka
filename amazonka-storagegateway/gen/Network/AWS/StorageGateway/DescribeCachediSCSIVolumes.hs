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
-- Module      : Network.AWS.StorageGateway.DescribeCachediSCSIVolumes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of the gateway volumes specified in the request. This operation is only supported in the cached volume gateway types.
--
--
-- The list of gateway volumes in the request must be from one gateway. In the response, AWS Storage Gateway returns volume information sorted by volume Amazon Resource Name (ARN).
module Network.AWS.StorageGateway.DescribeCachediSCSIVolumes
  ( -- * Creating a Request
    describeCachediSCSIVolumes,
    DescribeCachediSCSIVolumes,

    -- * Request Lenses
    dcscsivVolumeARNs,

    -- * Destructuring the Response
    describeCachediSCSIVolumesResponse,
    DescribeCachediSCSIVolumesResponse,

    -- * Response Lenses
    dcscsivrrsCachediSCSIVolumes,
    dcscsivrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | /See:/ 'describeCachediSCSIVolumes' smart constructor.
newtype DescribeCachediSCSIVolumes = DescribeCachediSCSIVolumes'
  { _dcscsivVolumeARNs ::
      [Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeCachediSCSIVolumes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcscsivVolumeARNs' - An array of strings where each string represents the Amazon Resource Name (ARN) of a cached volume. All of the specified cached volumes must be from the same gateway. Use 'ListVolumes' to get volume ARNs for a gateway.
describeCachediSCSIVolumes ::
  DescribeCachediSCSIVolumes
describeCachediSCSIVolumes =
  DescribeCachediSCSIVolumes'
    { _dcscsivVolumeARNs =
        mempty
    }

-- | An array of strings where each string represents the Amazon Resource Name (ARN) of a cached volume. All of the specified cached volumes must be from the same gateway. Use 'ListVolumes' to get volume ARNs for a gateway.
dcscsivVolumeARNs :: Lens' DescribeCachediSCSIVolumes [Text]
dcscsivVolumeARNs = lens _dcscsivVolumeARNs (\s a -> s {_dcscsivVolumeARNs = a}) . _Coerce

instance AWSRequest DescribeCachediSCSIVolumes where
  type
    Rs DescribeCachediSCSIVolumes =
      DescribeCachediSCSIVolumesResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DescribeCachediSCSIVolumesResponse'
            <$> (x .?> "CachediSCSIVolumes" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeCachediSCSIVolumes

instance NFData DescribeCachediSCSIVolumes

instance ToHeaders DescribeCachediSCSIVolumes where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DescribeCachediSCSIVolumes" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeCachediSCSIVolumes where
  toJSON DescribeCachediSCSIVolumes' {..} =
    object
      ( catMaybes
          [Just ("VolumeARNs" .= _dcscsivVolumeARNs)]
      )

instance ToPath DescribeCachediSCSIVolumes where
  toPath = const "/"

instance ToQuery DescribeCachediSCSIVolumes where
  toQuery = const mempty

-- | A JSON object containing the following fields:
--
--
--
-- /See:/ 'describeCachediSCSIVolumesResponse' smart constructor.
data DescribeCachediSCSIVolumesResponse = DescribeCachediSCSIVolumesResponse'
  { _dcscsivrrsCachediSCSIVolumes ::
      !( Maybe
           [CachediSCSIVolume]
       ),
    _dcscsivrrsResponseStatus ::
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

-- | Creates a value of 'DescribeCachediSCSIVolumesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcscsivrrsCachediSCSIVolumes' - An array of objects where each object contains metadata about one cached volume.
--
-- * 'dcscsivrrsResponseStatus' - -- | The response status code.
describeCachediSCSIVolumesResponse ::
  -- | 'dcscsivrrsResponseStatus'
  Int ->
  DescribeCachediSCSIVolumesResponse
describeCachediSCSIVolumesResponse pResponseStatus_ =
  DescribeCachediSCSIVolumesResponse'
    { _dcscsivrrsCachediSCSIVolumes =
        Nothing,
      _dcscsivrrsResponseStatus =
        pResponseStatus_
    }

-- | An array of objects where each object contains metadata about one cached volume.
dcscsivrrsCachediSCSIVolumes :: Lens' DescribeCachediSCSIVolumesResponse [CachediSCSIVolume]
dcscsivrrsCachediSCSIVolumes = lens _dcscsivrrsCachediSCSIVolumes (\s a -> s {_dcscsivrrsCachediSCSIVolumes = a}) . _Default . _Coerce

-- | -- | The response status code.
dcscsivrrsResponseStatus :: Lens' DescribeCachediSCSIVolumesResponse Int
dcscsivrrsResponseStatus = lens _dcscsivrrsResponseStatus (\s a -> s {_dcscsivrrsResponseStatus = a})

instance NFData DescribeCachediSCSIVolumesResponse
