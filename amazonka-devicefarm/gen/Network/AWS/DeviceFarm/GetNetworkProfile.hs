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
-- Module      : Network.AWS.DeviceFarm.GetNetworkProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a network profile.
module Network.AWS.DeviceFarm.GetNetworkProfile
  ( -- * Creating a Request
    getNetworkProfile,
    GetNetworkProfile,

    -- * Request Lenses
    gnpArn,

    -- * Destructuring the Response
    getNetworkProfileResponse,
    GetNetworkProfileResponse,

    -- * Response Lenses
    gnprrsNetworkProfile,
    gnprrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getNetworkProfile' smart constructor.
newtype GetNetworkProfile = GetNetworkProfile'
  { _gnpArn ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetNetworkProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnpArn' - The ARN of the network profile to return information about.
getNetworkProfile ::
  -- | 'gnpArn'
  Text ->
  GetNetworkProfile
getNetworkProfile pArn_ =
  GetNetworkProfile' {_gnpArn = pArn_}

-- | The ARN of the network profile to return information about.
gnpArn :: Lens' GetNetworkProfile Text
gnpArn = lens _gnpArn (\s a -> s {_gnpArn = a})

instance AWSRequest GetNetworkProfile where
  type Rs GetNetworkProfile = GetNetworkProfileResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          GetNetworkProfileResponse'
            <$> (x .?> "networkProfile") <*> (pure (fromEnum s))
      )

instance Hashable GetNetworkProfile

instance NFData GetNetworkProfile

instance ToHeaders GetNetworkProfile where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.GetNetworkProfile" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetNetworkProfile where
  toJSON GetNetworkProfile' {..} =
    object (catMaybes [Just ("arn" .= _gnpArn)])

instance ToPath GetNetworkProfile where
  toPath = const "/"

instance ToQuery GetNetworkProfile where
  toQuery = const mempty

-- | /See:/ 'getNetworkProfileResponse' smart constructor.
data GetNetworkProfileResponse = GetNetworkProfileResponse'
  { _gnprrsNetworkProfile ::
      !( Maybe
           NetworkProfile
       ),
    _gnprrsResponseStatus ::
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

-- | Creates a value of 'GetNetworkProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnprrsNetworkProfile' - The network profile.
--
-- * 'gnprrsResponseStatus' - -- | The response status code.
getNetworkProfileResponse ::
  -- | 'gnprrsResponseStatus'
  Int ->
  GetNetworkProfileResponse
getNetworkProfileResponse pResponseStatus_ =
  GetNetworkProfileResponse'
    { _gnprrsNetworkProfile =
        Nothing,
      _gnprrsResponseStatus = pResponseStatus_
    }

-- | The network profile.
gnprrsNetworkProfile :: Lens' GetNetworkProfileResponse (Maybe NetworkProfile)
gnprrsNetworkProfile = lens _gnprrsNetworkProfile (\s a -> s {_gnprrsNetworkProfile = a})

-- | -- | The response status code.
gnprrsResponseStatus :: Lens' GetNetworkProfileResponse Int
gnprrsResponseStatus = lens _gnprrsResponseStatus (\s a -> s {_gnprrsResponseStatus = a})

instance NFData GetNetworkProfileResponse
