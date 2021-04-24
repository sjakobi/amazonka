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
-- Module      : Network.AWS.AppStream.StopFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the specified fleet.
module Network.AWS.AppStream.StopFleet
  ( -- * Creating a Request
    stopFleet,
    StopFleet,

    -- * Request Lenses
    stoName,

    -- * Destructuring the Response
    stopFleetResponse,
    StopFleetResponse,

    -- * Response Lenses
    sfrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopFleet' smart constructor.
newtype StopFleet = StopFleet' {_stoName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopFleet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stoName' - The name of the fleet.
stopFleet ::
  -- | 'stoName'
  Text ->
  StopFleet
stopFleet pName_ = StopFleet' {_stoName = pName_}

-- | The name of the fleet.
stoName :: Lens' StopFleet Text
stoName = lens _stoName (\s a -> s {_stoName = a})

instance AWSRequest StopFleet where
  type Rs StopFleet = StopFleetResponse
  request = postJSON appStream
  response =
    receiveEmpty
      ( \s h x ->
          StopFleetResponse' <$> (pure (fromEnum s))
      )

instance Hashable StopFleet

instance NFData StopFleet

instance ToHeaders StopFleet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("PhotonAdminProxyService.StopFleet" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopFleet where
  toJSON StopFleet' {..} =
    object (catMaybes [Just ("Name" .= _stoName)])

instance ToPath StopFleet where
  toPath = const "/"

instance ToQuery StopFleet where
  toQuery = const mempty

-- | /See:/ 'stopFleetResponse' smart constructor.
newtype StopFleetResponse = StopFleetResponse'
  { _sfrrsResponseStatus ::
      Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopFleetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfrrsResponseStatus' - -- | The response status code.
stopFleetResponse ::
  -- | 'sfrrsResponseStatus'
  Int ->
  StopFleetResponse
stopFleetResponse pResponseStatus_ =
  StopFleetResponse'
    { _sfrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
sfrrsResponseStatus :: Lens' StopFleetResponse Int
sfrrsResponseStatus = lens _sfrrsResponseStatus (\s a -> s {_sfrrsResponseStatus = a})

instance NFData StopFleetResponse
