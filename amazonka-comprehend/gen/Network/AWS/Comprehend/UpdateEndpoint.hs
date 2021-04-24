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
-- Module      : Network.AWS.Comprehend.UpdateEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information about the specified endpoint.
module Network.AWS.Comprehend.UpdateEndpoint
  ( -- * Creating a Request
    updateEndpoint,
    UpdateEndpoint,

    -- * Request Lenses
    ueEndpointARN,
    ueDesiredInferenceUnits,

    -- * Destructuring the Response
    updateEndpointResponse,
    UpdateEndpointResponse,

    -- * Response Lenses
    uerrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateEndpoint' smart constructor.
data UpdateEndpoint = UpdateEndpoint'
  { _ueEndpointARN ::
      !Text,
    _ueDesiredInferenceUnits :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueEndpointARN' - The Amazon Resource Number (ARN) of the endpoint being updated.
--
-- * 'ueDesiredInferenceUnits' - The desired number of inference units to be used by the model using this endpoint. Each inference unit represents of a throughput of 100 characters per second.
updateEndpoint ::
  -- | 'ueEndpointARN'
  Text ->
  -- | 'ueDesiredInferenceUnits'
  Natural ->
  UpdateEndpoint
updateEndpoint pEndpointARN_ pDesiredInferenceUnits_ =
  UpdateEndpoint'
    { _ueEndpointARN = pEndpointARN_,
      _ueDesiredInferenceUnits =
        _Nat # pDesiredInferenceUnits_
    }

-- | The Amazon Resource Number (ARN) of the endpoint being updated.
ueEndpointARN :: Lens' UpdateEndpoint Text
ueEndpointARN = lens _ueEndpointARN (\s a -> s {_ueEndpointARN = a})

-- | The desired number of inference units to be used by the model using this endpoint. Each inference unit represents of a throughput of 100 characters per second.
ueDesiredInferenceUnits :: Lens' UpdateEndpoint Natural
ueDesiredInferenceUnits = lens _ueDesiredInferenceUnits (\s a -> s {_ueDesiredInferenceUnits = a}) . _Nat

instance AWSRequest UpdateEndpoint where
  type Rs UpdateEndpoint = UpdateEndpointResponse
  request = postJSON comprehend
  response =
    receiveEmpty
      ( \s h x ->
          UpdateEndpointResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateEndpoint

instance NFData UpdateEndpoint

instance ToHeaders UpdateEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Comprehend_20171127.UpdateEndpoint" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateEndpoint where
  toJSON UpdateEndpoint' {..} =
    object
      ( catMaybes
          [ Just ("EndpointArn" .= _ueEndpointARN),
            Just
              ( "DesiredInferenceUnits"
                  .= _ueDesiredInferenceUnits
              )
          ]
      )

instance ToPath UpdateEndpoint where
  toPath = const "/"

instance ToQuery UpdateEndpoint where
  toQuery = const mempty

-- | /See:/ 'updateEndpointResponse' smart constructor.
newtype UpdateEndpointResponse = UpdateEndpointResponse'
  { _uerrsResponseStatus ::
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

-- | Creates a value of 'UpdateEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uerrsResponseStatus' - -- | The response status code.
updateEndpointResponse ::
  -- | 'uerrsResponseStatus'
  Int ->
  UpdateEndpointResponse
updateEndpointResponse pResponseStatus_ =
  UpdateEndpointResponse'
    { _uerrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
uerrsResponseStatus :: Lens' UpdateEndpointResponse Int
uerrsResponseStatus = lens _uerrsResponseStatus (\s a -> s {_uerrsResponseStatus = a})

instance NFData UpdateEndpointResponse
