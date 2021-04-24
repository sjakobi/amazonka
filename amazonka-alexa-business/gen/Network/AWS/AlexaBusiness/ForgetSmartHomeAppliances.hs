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
-- Module      : Network.AWS.AlexaBusiness.ForgetSmartHomeAppliances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Forgets smart home appliances associated to a room.
module Network.AWS.AlexaBusiness.ForgetSmartHomeAppliances
  ( -- * Creating a Request
    forgetSmartHomeAppliances,
    ForgetSmartHomeAppliances,

    -- * Request Lenses
    fshaRoomARN,

    -- * Destructuring the Response
    forgetSmartHomeAppliancesResponse,
    ForgetSmartHomeAppliancesResponse,

    -- * Response Lenses
    fsharrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'forgetSmartHomeAppliances' smart constructor.
newtype ForgetSmartHomeAppliances = ForgetSmartHomeAppliances'
  { _fshaRoomARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ForgetSmartHomeAppliances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fshaRoomARN' - The room that the appliances are associated with.
forgetSmartHomeAppliances ::
  -- | 'fshaRoomARN'
  Text ->
  ForgetSmartHomeAppliances
forgetSmartHomeAppliances pRoomARN_ =
  ForgetSmartHomeAppliances'
    { _fshaRoomARN =
        pRoomARN_
    }

-- | The room that the appliances are associated with.
fshaRoomARN :: Lens' ForgetSmartHomeAppliances Text
fshaRoomARN = lens _fshaRoomARN (\s a -> s {_fshaRoomARN = a})

instance AWSRequest ForgetSmartHomeAppliances where
  type
    Rs ForgetSmartHomeAppliances =
      ForgetSmartHomeAppliancesResponse
  request = postJSON alexaBusiness
  response =
    receiveEmpty
      ( \s h x ->
          ForgetSmartHomeAppliancesResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable ForgetSmartHomeAppliances

instance NFData ForgetSmartHomeAppliances

instance ToHeaders ForgetSmartHomeAppliances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AlexaForBusiness.ForgetSmartHomeAppliances" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ForgetSmartHomeAppliances where
  toJSON ForgetSmartHomeAppliances' {..} =
    object
      (catMaybes [Just ("RoomArn" .= _fshaRoomARN)])

instance ToPath ForgetSmartHomeAppliances where
  toPath = const "/"

instance ToQuery ForgetSmartHomeAppliances where
  toQuery = const mempty

-- | /See:/ 'forgetSmartHomeAppliancesResponse' smart constructor.
newtype ForgetSmartHomeAppliancesResponse = ForgetSmartHomeAppliancesResponse'
  { _fsharrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ForgetSmartHomeAppliancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsharrsResponseStatus' - -- | The response status code.
forgetSmartHomeAppliancesResponse ::
  -- | 'fsharrsResponseStatus'
  Int ->
  ForgetSmartHomeAppliancesResponse
forgetSmartHomeAppliancesResponse pResponseStatus_ =
  ForgetSmartHomeAppliancesResponse'
    { _fsharrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
fsharrsResponseStatus :: Lens' ForgetSmartHomeAppliancesResponse Int
fsharrsResponseStatus = lens _fsharrsResponseStatus (\s a -> s {_fsharrsResponseStatus = a})

instance NFData ForgetSmartHomeAppliancesResponse
