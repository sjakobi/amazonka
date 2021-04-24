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
-- Module      : Network.AWS.AppSync.UpdateAPIKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an API key. The key can be updated while it is not deleted.
module Network.AWS.AppSync.UpdateAPIKey
  ( -- * Creating a Request
    updateAPIKey,
    UpdateAPIKey,

    -- * Request Lenses
    uakDescription,
    uakExpires,
    uakApiId,
    uakId,

    -- * Destructuring the Response
    updateAPIKeyResponse,
    UpdateAPIKeyResponse,

    -- * Response Lenses
    uakrrsApiKey,
    uakrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateAPIKey' smart constructor.
data UpdateAPIKey = UpdateAPIKey'
  { _uakDescription ::
      !(Maybe Text),
    _uakExpires :: !(Maybe Integer),
    _uakApiId :: !Text,
    _uakId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAPIKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uakDescription' - A description of the purpose of the API key.
--
-- * 'uakExpires' - The time from update time after which the API key expires. The date is represented as seconds since the epoch. For more information, see .
--
-- * 'uakApiId' - The ID for the GraphQL API.
--
-- * 'uakId' - The API key ID.
updateAPIKey ::
  -- | 'uakApiId'
  Text ->
  -- | 'uakId'
  Text ->
  UpdateAPIKey
updateAPIKey pApiId_ pId_ =
  UpdateAPIKey'
    { _uakDescription = Nothing,
      _uakExpires = Nothing,
      _uakApiId = pApiId_,
      _uakId = pId_
    }

-- | A description of the purpose of the API key.
uakDescription :: Lens' UpdateAPIKey (Maybe Text)
uakDescription = lens _uakDescription (\s a -> s {_uakDescription = a})

-- | The time from update time after which the API key expires. The date is represented as seconds since the epoch. For more information, see .
uakExpires :: Lens' UpdateAPIKey (Maybe Integer)
uakExpires = lens _uakExpires (\s a -> s {_uakExpires = a})

-- | The ID for the GraphQL API.
uakApiId :: Lens' UpdateAPIKey Text
uakApiId = lens _uakApiId (\s a -> s {_uakApiId = a})

-- | The API key ID.
uakId :: Lens' UpdateAPIKey Text
uakId = lens _uakId (\s a -> s {_uakId = a})

instance AWSRequest UpdateAPIKey where
  type Rs UpdateAPIKey = UpdateAPIKeyResponse
  request = postJSON appSync
  response =
    receiveJSON
      ( \s h x ->
          UpdateAPIKeyResponse'
            <$> (x .?> "apiKey") <*> (pure (fromEnum s))
      )

instance Hashable UpdateAPIKey

instance NFData UpdateAPIKey

instance ToHeaders UpdateAPIKey where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateAPIKey where
  toJSON UpdateAPIKey' {..} =
    object
      ( catMaybes
          [ ("description" .=) <$> _uakDescription,
            ("expires" .=) <$> _uakExpires
          ]
      )

instance ToPath UpdateAPIKey where
  toPath UpdateAPIKey' {..} =
    mconcat
      [ "/v1/apis/",
        toBS _uakApiId,
        "/apikeys/",
        toBS _uakId
      ]

instance ToQuery UpdateAPIKey where
  toQuery = const mempty

-- | /See:/ 'updateAPIKeyResponse' smart constructor.
data UpdateAPIKeyResponse = UpdateAPIKeyResponse'
  { _uakrrsApiKey ::
      !(Maybe APIKey),
    _uakrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAPIKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uakrrsApiKey' - The API key.
--
-- * 'uakrrsResponseStatus' - -- | The response status code.
updateAPIKeyResponse ::
  -- | 'uakrrsResponseStatus'
  Int ->
  UpdateAPIKeyResponse
updateAPIKeyResponse pResponseStatus_ =
  UpdateAPIKeyResponse'
    { _uakrrsApiKey = Nothing,
      _uakrrsResponseStatus = pResponseStatus_
    }

-- | The API key.
uakrrsApiKey :: Lens' UpdateAPIKeyResponse (Maybe APIKey)
uakrrsApiKey = lens _uakrrsApiKey (\s a -> s {_uakrrsApiKey = a})

-- | -- | The response status code.
uakrrsResponseStatus :: Lens' UpdateAPIKeyResponse Int
uakrrsResponseStatus = lens _uakrrsResponseStatus (\s a -> s {_uakrrsResponseStatus = a})

instance NFData UpdateAPIKeyResponse
