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
-- Module      : Network.AWS.IoT.SetDefaultAuthorizer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the default authorizer. This will be used if a websocket connection is made without specifying an authorizer.
module Network.AWS.IoT.SetDefaultAuthorizer
  ( -- * Creating a Request
    setDefaultAuthorizer,
    SetDefaultAuthorizer,

    -- * Request Lenses
    sdaAuthorizerName,

    -- * Destructuring the Response
    setDefaultAuthorizerResponse,
    SetDefaultAuthorizerResponse,

    -- * Response Lenses
    sdarrsAuthorizerARN,
    sdarrsAuthorizerName,
    sdarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setDefaultAuthorizer' smart constructor.
newtype SetDefaultAuthorizer = SetDefaultAuthorizer'
  { _sdaAuthorizerName ::
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

-- | Creates a value of 'SetDefaultAuthorizer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdaAuthorizerName' - The authorizer name.
setDefaultAuthorizer ::
  -- | 'sdaAuthorizerName'
  Text ->
  SetDefaultAuthorizer
setDefaultAuthorizer pAuthorizerName_ =
  SetDefaultAuthorizer'
    { _sdaAuthorizerName =
        pAuthorizerName_
    }

-- | The authorizer name.
sdaAuthorizerName :: Lens' SetDefaultAuthorizer Text
sdaAuthorizerName = lens _sdaAuthorizerName (\s a -> s {_sdaAuthorizerName = a})

instance AWSRequest SetDefaultAuthorizer where
  type
    Rs SetDefaultAuthorizer =
      SetDefaultAuthorizerResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          SetDefaultAuthorizerResponse'
            <$> (x .?> "authorizerArn")
            <*> (x .?> "authorizerName")
            <*> (pure (fromEnum s))
      )

instance Hashable SetDefaultAuthorizer

instance NFData SetDefaultAuthorizer

instance ToHeaders SetDefaultAuthorizer where
  toHeaders = const mempty

instance ToJSON SetDefaultAuthorizer where
  toJSON SetDefaultAuthorizer' {..} =
    object
      ( catMaybes
          [Just ("authorizerName" .= _sdaAuthorizerName)]
      )

instance ToPath SetDefaultAuthorizer where
  toPath = const "/default-authorizer"

instance ToQuery SetDefaultAuthorizer where
  toQuery = const mempty

-- | /See:/ 'setDefaultAuthorizerResponse' smart constructor.
data SetDefaultAuthorizerResponse = SetDefaultAuthorizerResponse'
  { _sdarrsAuthorizerARN ::
      !(Maybe Text),
    _sdarrsAuthorizerName ::
      !(Maybe Text),
    _sdarrsResponseStatus ::
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

-- | Creates a value of 'SetDefaultAuthorizerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdarrsAuthorizerARN' - The authorizer ARN.
--
-- * 'sdarrsAuthorizerName' - The authorizer name.
--
-- * 'sdarrsResponseStatus' - -- | The response status code.
setDefaultAuthorizerResponse ::
  -- | 'sdarrsResponseStatus'
  Int ->
  SetDefaultAuthorizerResponse
setDefaultAuthorizerResponse pResponseStatus_ =
  SetDefaultAuthorizerResponse'
    { _sdarrsAuthorizerARN =
        Nothing,
      _sdarrsAuthorizerName = Nothing,
      _sdarrsResponseStatus = pResponseStatus_
    }

-- | The authorizer ARN.
sdarrsAuthorizerARN :: Lens' SetDefaultAuthorizerResponse (Maybe Text)
sdarrsAuthorizerARN = lens _sdarrsAuthorizerARN (\s a -> s {_sdarrsAuthorizerARN = a})

-- | The authorizer name.
sdarrsAuthorizerName :: Lens' SetDefaultAuthorizerResponse (Maybe Text)
sdarrsAuthorizerName = lens _sdarrsAuthorizerName (\s a -> s {_sdarrsAuthorizerName = a})

-- | -- | The response status code.
sdarrsResponseStatus :: Lens' SetDefaultAuthorizerResponse Int
sdarrsResponseStatus = lens _sdarrsResponseStatus (\s a -> s {_sdarrsResponseStatus = a})

instance NFData SetDefaultAuthorizerResponse
