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
-- Module      : Network.AWS.AppStream.StartImageBuilder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the specified image builder.
module Network.AWS.AppStream.StartImageBuilder
  ( -- * Creating a Request
    startImageBuilder,
    StartImageBuilder,

    -- * Request Lenses
    staAppstreamAgentVersion,
    staName,

    -- * Destructuring the Response
    startImageBuilderResponse,
    StartImageBuilderResponse,

    -- * Response Lenses
    srsImageBuilder,
    srsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startImageBuilder' smart constructor.
data StartImageBuilder = StartImageBuilder'
  { _staAppstreamAgentVersion ::
      !(Maybe Text),
    _staName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartImageBuilder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'staAppstreamAgentVersion' - The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST].
--
-- * 'staName' - The name of the image builder.
startImageBuilder ::
  -- | 'staName'
  Text ->
  StartImageBuilder
startImageBuilder pName_ =
  StartImageBuilder'
    { _staAppstreamAgentVersion =
        Nothing,
      _staName = pName_
    }

-- | The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST].
staAppstreamAgentVersion :: Lens' StartImageBuilder (Maybe Text)
staAppstreamAgentVersion = lens _staAppstreamAgentVersion (\s a -> s {_staAppstreamAgentVersion = a})

-- | The name of the image builder.
staName :: Lens' StartImageBuilder Text
staName = lens _staName (\s a -> s {_staName = a})

instance AWSRequest StartImageBuilder where
  type Rs StartImageBuilder = StartImageBuilderResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          StartImageBuilderResponse'
            <$> (x .?> "ImageBuilder") <*> (pure (fromEnum s))
      )

instance Hashable StartImageBuilder

instance NFData StartImageBuilder

instance ToHeaders StartImageBuilder where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.StartImageBuilder" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartImageBuilder where
  toJSON StartImageBuilder' {..} =
    object
      ( catMaybes
          [ ("AppstreamAgentVersion" .=)
              <$> _staAppstreamAgentVersion,
            Just ("Name" .= _staName)
          ]
      )

instance ToPath StartImageBuilder where
  toPath = const "/"

instance ToQuery StartImageBuilder where
  toQuery = const mempty

-- | /See:/ 'startImageBuilderResponse' smart constructor.
data StartImageBuilderResponse = StartImageBuilderResponse'
  { _srsImageBuilder ::
      !( Maybe
           ImageBuilder
       ),
    _srsResponseStatus ::
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

-- | Creates a value of 'StartImageBuilderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsImageBuilder' - Information about the image builder.
--
-- * 'srsResponseStatus' - -- | The response status code.
startImageBuilderResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StartImageBuilderResponse
startImageBuilderResponse pResponseStatus_ =
  StartImageBuilderResponse'
    { _srsImageBuilder =
        Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | Information about the image builder.
srsImageBuilder :: Lens' StartImageBuilderResponse (Maybe ImageBuilder)
srsImageBuilder = lens _srsImageBuilder (\s a -> s {_srsImageBuilder = a})

-- | -- | The response status code.
srsResponseStatus :: Lens' StartImageBuilderResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StartImageBuilderResponse
