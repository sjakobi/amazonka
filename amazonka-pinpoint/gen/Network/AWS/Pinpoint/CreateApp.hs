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
-- Module      : Network.AWS.Pinpoint.CreateApp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an application.
module Network.AWS.Pinpoint.CreateApp
  ( -- * Creating a Request
    createApp,
    CreateApp,

    -- * Request Lenses
    caCreateApplicationRequest,

    -- * Destructuring the Response
    createAppResponse,
    CreateAppResponse,

    -- * Response Lenses
    carrsResponseStatus,
    carrsApplicationResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createApp' smart constructor.
newtype CreateApp = CreateApp'
  { _caCreateApplicationRequest ::
      CreateApplicationRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateApp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caCreateApplicationRequest' - Undocumented member.
createApp ::
  -- | 'caCreateApplicationRequest'
  CreateApplicationRequest ->
  CreateApp
createApp pCreateApplicationRequest_ =
  CreateApp'
    { _caCreateApplicationRequest =
        pCreateApplicationRequest_
    }

-- | Undocumented member.
caCreateApplicationRequest :: Lens' CreateApp CreateApplicationRequest
caCreateApplicationRequest = lens _caCreateApplicationRequest (\s a -> s {_caCreateApplicationRequest = a})

instance AWSRequest CreateApp where
  type Rs CreateApp = CreateAppResponse
  request = postJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          CreateAppResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable CreateApp

instance NFData CreateApp

instance ToHeaders CreateApp where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateApp where
  toJSON CreateApp' {..} =
    object
      ( catMaybes
          [ Just
              ( "CreateApplicationRequest"
                  .= _caCreateApplicationRequest
              )
          ]
      )

instance ToPath CreateApp where
  toPath = const "/v1/apps"

instance ToQuery CreateApp where
  toQuery = const mempty

-- | /See:/ 'createAppResponse' smart constructor.
data CreateAppResponse = CreateAppResponse'
  { _carrsResponseStatus ::
      !Int,
    _carrsApplicationResponse ::
      !ApplicationResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAppResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsResponseStatus' - -- | The response status code.
--
-- * 'carrsApplicationResponse' - Undocumented member.
createAppResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  -- | 'carrsApplicationResponse'
  ApplicationResponse ->
  CreateAppResponse
createAppResponse
  pResponseStatus_
  pApplicationResponse_ =
    CreateAppResponse'
      { _carrsResponseStatus =
          pResponseStatus_,
        _carrsApplicationResponse = pApplicationResponse_
      }

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateAppResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

-- | Undocumented member.
carrsApplicationResponse :: Lens' CreateAppResponse ApplicationResponse
carrsApplicationResponse = lens _carrsApplicationResponse (\s a -> s {_carrsApplicationResponse = a})

instance NFData CreateAppResponse
