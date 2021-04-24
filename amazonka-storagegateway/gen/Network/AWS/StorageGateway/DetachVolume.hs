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
-- Module      : Network.AWS.StorageGateway.DetachVolume
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disconnects a volume from an iSCSI connection and then detaches the volume from the specified gateway. Detaching and attaching a volume enables you to recover your data from one gateway to a different gateway without creating a snapshot. It also makes it easier to move your volumes from an on-premises gateway to a gateway hosted on an Amazon EC2 instance. This operation is only supported in the volume gateway type.
module Network.AWS.StorageGateway.DetachVolume
  ( -- * Creating a Request
    detachVolume,
    DetachVolume,

    -- * Request Lenses
    dvForceDetach,
    dvVolumeARN,

    -- * Destructuring the Response
    detachVolumeResponse,
    DetachVolumeResponse,

    -- * Response Lenses
    dvrrsVolumeARN,
    dvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | AttachVolumeInput
--
--
--
-- /See:/ 'detachVolume' smart constructor.
data DetachVolume = DetachVolume'
  { _dvForceDetach ::
      !(Maybe Bool),
    _dvVolumeARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetachVolume' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvForceDetach' - Set to @true@ to forcibly remove the iSCSI connection of the target volume and detach the volume. The default is @false@ . If this value is set to @false@ , you must manually disconnect the iSCSI connection from the target volume. Valid Values: @true@ | @false@
--
-- * 'dvVolumeARN' - The Amazon Resource Name (ARN) of the volume to detach from the gateway.
detachVolume ::
  -- | 'dvVolumeARN'
  Text ->
  DetachVolume
detachVolume pVolumeARN_ =
  DetachVolume'
    { _dvForceDetach = Nothing,
      _dvVolumeARN = pVolumeARN_
    }

-- | Set to @true@ to forcibly remove the iSCSI connection of the target volume and detach the volume. The default is @false@ . If this value is set to @false@ , you must manually disconnect the iSCSI connection from the target volume. Valid Values: @true@ | @false@
dvForceDetach :: Lens' DetachVolume (Maybe Bool)
dvForceDetach = lens _dvForceDetach (\s a -> s {_dvForceDetach = a})

-- | The Amazon Resource Name (ARN) of the volume to detach from the gateway.
dvVolumeARN :: Lens' DetachVolume Text
dvVolumeARN = lens _dvVolumeARN (\s a -> s {_dvVolumeARN = a})

instance AWSRequest DetachVolume where
  type Rs DetachVolume = DetachVolumeResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DetachVolumeResponse'
            <$> (x .?> "VolumeARN") <*> (pure (fromEnum s))
      )

instance Hashable DetachVolume

instance NFData DetachVolume

instance ToHeaders DetachVolume where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DetachVolume" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DetachVolume where
  toJSON DetachVolume' {..} =
    object
      ( catMaybes
          [ ("ForceDetach" .=) <$> _dvForceDetach,
            Just ("VolumeARN" .= _dvVolumeARN)
          ]
      )

instance ToPath DetachVolume where
  toPath = const "/"

instance ToQuery DetachVolume where
  toQuery = const mempty

-- | AttachVolumeOutput
--
--
--
-- /See:/ 'detachVolumeResponse' smart constructor.
data DetachVolumeResponse = DetachVolumeResponse'
  { _dvrrsVolumeARN ::
      !(Maybe Text),
    _dvrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetachVolumeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvrrsVolumeARN' - The Amazon Resource Name (ARN) of the volume that was detached.
--
-- * 'dvrrsResponseStatus' - -- | The response status code.
detachVolumeResponse ::
  -- | 'dvrrsResponseStatus'
  Int ->
  DetachVolumeResponse
detachVolumeResponse pResponseStatus_ =
  DetachVolumeResponse'
    { _dvrrsVolumeARN = Nothing,
      _dvrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the volume that was detached.
dvrrsVolumeARN :: Lens' DetachVolumeResponse (Maybe Text)
dvrrsVolumeARN = lens _dvrrsVolumeARN (\s a -> s {_dvrrsVolumeARN = a})

-- | -- | The response status code.
dvrrsResponseStatus :: Lens' DetachVolumeResponse Int
dvrrsResponseStatus = lens _dvrrsResponseStatus (\s a -> s {_dvrrsResponseStatus = a})

instance NFData DetachVolumeResponse
