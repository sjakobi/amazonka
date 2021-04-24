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
-- Module      : Network.AWS.AppStream.StartFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the specified fleet.
module Network.AWS.AppStream.StartFleet
  ( -- * Creating a Request
    startFleet,
    StartFleet,

    -- * Request Lenses
    sfName,

    -- * Destructuring the Response
    startFleetResponse,
    StartFleetResponse,

    -- * Response Lenses
    starsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startFleet' smart constructor.
newtype StartFleet = StartFleet' {_sfName :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartFleet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfName' - The name of the fleet.
startFleet ::
  -- | 'sfName'
  Text ->
  StartFleet
startFleet pName_ = StartFleet' {_sfName = pName_}

-- | The name of the fleet.
sfName :: Lens' StartFleet Text
sfName = lens _sfName (\s a -> s {_sfName = a})

instance AWSRequest StartFleet where
  type Rs StartFleet = StartFleetResponse
  request = postJSON appStream
  response =
    receiveEmpty
      ( \s h x ->
          StartFleetResponse' <$> (pure (fromEnum s))
      )

instance Hashable StartFleet

instance NFData StartFleet

instance ToHeaders StartFleet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("PhotonAdminProxyService.StartFleet" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartFleet where
  toJSON StartFleet' {..} =
    object (catMaybes [Just ("Name" .= _sfName)])

instance ToPath StartFleet where
  toPath = const "/"

instance ToQuery StartFleet where
  toQuery = const mempty

-- | /See:/ 'startFleetResponse' smart constructor.
newtype StartFleetResponse = StartFleetResponse'
  { _starsResponseStatus ::
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

-- | Creates a value of 'StartFleetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'starsResponseStatus' - -- | The response status code.
startFleetResponse ::
  -- | 'starsResponseStatus'
  Int ->
  StartFleetResponse
startFleetResponse pResponseStatus_ =
  StartFleetResponse'
    { _starsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
starsResponseStatus :: Lens' StartFleetResponse Int
starsResponseStatus = lens _starsResponseStatus (\s a -> s {_starsResponseStatus = a})

instance NFData StartFleetResponse
