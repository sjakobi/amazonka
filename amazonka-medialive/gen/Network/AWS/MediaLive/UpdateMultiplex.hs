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
-- Module      : Network.AWS.MediaLive.UpdateMultiplex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a multiplex.
module Network.AWS.MediaLive.UpdateMultiplex
  ( -- * Creating a Request
    updateMultiplex',
    UpdateMultiplex',

    -- * Request Lenses
    uName,
    uMultiplexSettings,
    uMultiplexId,

    -- * Destructuring the Response
    updateMultiplexResponse,
    UpdateMultiplexResponse,

    -- * Response Lenses
    umrrsMultiplex,
    umrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to update a multiplex.
--
-- /See:/ 'updateMultiplex'' smart constructor.
data UpdateMultiplex' = UpdateMultiplex''
  { _uName ::
      !(Maybe Text),
    _uMultiplexSettings ::
      !(Maybe MultiplexSettings),
    _uMultiplexId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateMultiplex'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uName' - Name of the multiplex.
--
-- * 'uMultiplexSettings' - The new settings for a multiplex.
--
-- * 'uMultiplexId' - ID of the multiplex to update.
updateMultiplex' ::
  -- | 'uMultiplexId'
  Text ->
  UpdateMultiplex'
updateMultiplex' pMultiplexId_ =
  UpdateMultiplex''
    { _uName = Nothing,
      _uMultiplexSettings = Nothing,
      _uMultiplexId = pMultiplexId_
    }

-- | Name of the multiplex.
uName :: Lens' UpdateMultiplex' (Maybe Text)
uName = lens _uName (\s a -> s {_uName = a})

-- | The new settings for a multiplex.
uMultiplexSettings :: Lens' UpdateMultiplex' (Maybe MultiplexSettings)
uMultiplexSettings = lens _uMultiplexSettings (\s a -> s {_uMultiplexSettings = a})

-- | ID of the multiplex to update.
uMultiplexId :: Lens' UpdateMultiplex' Text
uMultiplexId = lens _uMultiplexId (\s a -> s {_uMultiplexId = a})

instance AWSRequest UpdateMultiplex' where
  type Rs UpdateMultiplex' = UpdateMultiplexResponse
  request = putJSON mediaLive
  response =
    receiveJSON
      ( \s h x ->
          UpdateMultiplexResponse'
            <$> (x .?> "multiplex") <*> (pure (fromEnum s))
      )

instance Hashable UpdateMultiplex'

instance NFData UpdateMultiplex'

instance ToHeaders UpdateMultiplex' where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateMultiplex' where
  toJSON UpdateMultiplex'' {..} =
    object
      ( catMaybes
          [ ("name" .=) <$> _uName,
            ("multiplexSettings" .=) <$> _uMultiplexSettings
          ]
      )

instance ToPath UpdateMultiplex' where
  toPath UpdateMultiplex'' {..} =
    mconcat ["/prod/multiplexes/", toBS _uMultiplexId]

instance ToQuery UpdateMultiplex' where
  toQuery = const mempty

-- | Placeholder documentation for UpdateMultiplexResponse
--
-- /See:/ 'updateMultiplexResponse' smart constructor.
data UpdateMultiplexResponse = UpdateMultiplexResponse'
  { _umrrsMultiplex ::
      !(Maybe Multiplex),
    _umrrsResponseStatus ::
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

-- | Creates a value of 'UpdateMultiplexResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umrrsMultiplex' - The updated multiplex.
--
-- * 'umrrsResponseStatus' - -- | The response status code.
updateMultiplexResponse ::
  -- | 'umrrsResponseStatus'
  Int ->
  UpdateMultiplexResponse
updateMultiplexResponse pResponseStatus_ =
  UpdateMultiplexResponse'
    { _umrrsMultiplex = Nothing,
      _umrrsResponseStatus = pResponseStatus_
    }

-- | The updated multiplex.
umrrsMultiplex :: Lens' UpdateMultiplexResponse (Maybe Multiplex)
umrrsMultiplex = lens _umrrsMultiplex (\s a -> s {_umrrsMultiplex = a})

-- | -- | The response status code.
umrrsResponseStatus :: Lens' UpdateMultiplexResponse Int
umrrsResponseStatus = lens _umrrsResponseStatus (\s a -> s {_umrrsResponseStatus = a})

instance NFData UpdateMultiplexResponse
