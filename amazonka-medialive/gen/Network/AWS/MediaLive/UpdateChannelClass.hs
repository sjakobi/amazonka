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
-- Module      : Network.AWS.MediaLive.UpdateChannelClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the class of the channel.
module Network.AWS.MediaLive.UpdateChannelClass
  ( -- * Creating a Request
    updateChannelClass',
    UpdateChannelClass',

    -- * Request Lenses
    uDestinations,
    uChannelId,
    uChannelClass,

    -- * Destructuring the Response
    updateChannelClassResponse,
    UpdateChannelClassResponse,

    -- * Response Lenses
    uccrrsChannel,
    uccrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Channel class that the channel should be updated to.
--
-- /See:/ 'updateChannelClass'' smart constructor.
data UpdateChannelClass' = UpdateChannelClass''
  { _uDestinations ::
      !(Maybe [OutputDestination]),
    _uChannelId :: !Text,
    _uChannelClass :: !ChannelClass
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateChannelClass'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uDestinations' - A list of output destinations for this channel.
--
-- * 'uChannelId' - Channel Id of the channel whose class should be updated.
--
-- * 'uChannelClass' - The channel class that you wish to update this channel to use.
updateChannelClass' ::
  -- | 'uChannelId'
  Text ->
  -- | 'uChannelClass'
  ChannelClass ->
  UpdateChannelClass'
updateChannelClass' pChannelId_ pChannelClass_ =
  UpdateChannelClass''
    { _uDestinations = Nothing,
      _uChannelId = pChannelId_,
      _uChannelClass = pChannelClass_
    }

-- | A list of output destinations for this channel.
uDestinations :: Lens' UpdateChannelClass' [OutputDestination]
uDestinations = lens _uDestinations (\s a -> s {_uDestinations = a}) . _Default . _Coerce

-- | Channel Id of the channel whose class should be updated.
uChannelId :: Lens' UpdateChannelClass' Text
uChannelId = lens _uChannelId (\s a -> s {_uChannelId = a})

-- | The channel class that you wish to update this channel to use.
uChannelClass :: Lens' UpdateChannelClass' ChannelClass
uChannelClass = lens _uChannelClass (\s a -> s {_uChannelClass = a})

instance AWSRequest UpdateChannelClass' where
  type
    Rs UpdateChannelClass' =
      UpdateChannelClassResponse
  request = putJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          UpdateChannelClassResponse'
            <$> (x .?> "channel") <*> (pure (fromEnum s))
      )

instance Hashable UpdateChannelClass'

instance NFData UpdateChannelClass'

instance ToHeaders UpdateChannelClass' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateChannelClass' where
  toJSON UpdateChannelClass'' {..} =
    object
      ( catMaybes
          [ ("destinations" .=) <$> _uDestinations,
            Just ("channelClass" .= _uChannelClass)
          ]
      )

instance ToPath UpdateChannelClass' where
  toPath UpdateChannelClass'' {..} =
    mconcat
      [ "/prod/channels/",
        toBS _uChannelId,
        "/channelClass"
      ]

instance ToQuery UpdateChannelClass' where
  toQuery = const mempty

-- | Placeholder documentation for UpdateChannelClassResponse
--
-- /See:/ 'updateChannelClassResponse' smart constructor.
data UpdateChannelClassResponse = UpdateChannelClassResponse'
  { _uccrrsChannel ::
      !(Maybe Channel),
    _uccrrsResponseStatus ::
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

-- | Creates a value of 'UpdateChannelClassResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uccrrsChannel' - Undocumented member.
--
-- * 'uccrrsResponseStatus' - -- | The response status code.
updateChannelClassResponse ::
  -- | 'uccrrsResponseStatus'
  Int ->
  UpdateChannelClassResponse
updateChannelClassResponse pResponseStatus_ =
  UpdateChannelClassResponse'
    { _uccrrsChannel =
        Nothing,
      _uccrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
uccrrsChannel :: Lens' UpdateChannelClassResponse (Maybe Channel)
uccrrsChannel = lens _uccrrsChannel (\s a -> s {_uccrrsChannel = a})

-- | -- | The response status code.
uccrrsResponseStatus :: Lens' UpdateChannelClassResponse Int
uccrrsResponseStatus = lens _uccrrsResponseStatus (\s a -> s {_uccrrsResponseStatus = a})

instance NFData UpdateChannelClassResponse
