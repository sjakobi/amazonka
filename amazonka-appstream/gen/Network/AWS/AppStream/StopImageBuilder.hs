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
-- Module      : Network.AWS.AppStream.StopImageBuilder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the specified image builder.
module Network.AWS.AppStream.StopImageBuilder
  ( -- * Creating a Request
    stopImageBuilder,
    StopImageBuilder,

    -- * Request Lenses
    sibName,

    -- * Destructuring the Response
    stopImageBuilderResponse,
    StopImageBuilderResponse,

    -- * Response Lenses
    sibrrsImageBuilder,
    sibrrsResponseStatus,
  )
where

import Network.AWS.AppStream.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopImageBuilder' smart constructor.
newtype StopImageBuilder = StopImageBuilder'
  { _sibName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopImageBuilder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sibName' - The name of the image builder.
stopImageBuilder ::
  -- | 'sibName'
  Text ->
  StopImageBuilder
stopImageBuilder pName_ =
  StopImageBuilder' {_sibName = pName_}

-- | The name of the image builder.
sibName :: Lens' StopImageBuilder Text
sibName = lens _sibName (\s a -> s {_sibName = a})

instance AWSRequest StopImageBuilder where
  type Rs StopImageBuilder = StopImageBuilderResponse
  request = postJSON appStream
  response =
    receiveJSON
      ( \s h x ->
          StopImageBuilderResponse'
            <$> (x .?> "ImageBuilder") <*> (pure (fromEnum s))
      )

instance Hashable StopImageBuilder

instance NFData StopImageBuilder

instance ToHeaders StopImageBuilder where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "PhotonAdminProxyService.StopImageBuilder" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopImageBuilder where
  toJSON StopImageBuilder' {..} =
    object (catMaybes [Just ("Name" .= _sibName)])

instance ToPath StopImageBuilder where
  toPath = const "/"

instance ToQuery StopImageBuilder where
  toQuery = const mempty

-- | /See:/ 'stopImageBuilderResponse' smart constructor.
data StopImageBuilderResponse = StopImageBuilderResponse'
  { _sibrrsImageBuilder ::
      !(Maybe ImageBuilder),
    _sibrrsResponseStatus ::
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

-- | Creates a value of 'StopImageBuilderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sibrrsImageBuilder' - Information about the image builder.
--
-- * 'sibrrsResponseStatus' - -- | The response status code.
stopImageBuilderResponse ::
  -- | 'sibrrsResponseStatus'
  Int ->
  StopImageBuilderResponse
stopImageBuilderResponse pResponseStatus_ =
  StopImageBuilderResponse'
    { _sibrrsImageBuilder =
        Nothing,
      _sibrrsResponseStatus = pResponseStatus_
    }

-- | Information about the image builder.
sibrrsImageBuilder :: Lens' StopImageBuilderResponse (Maybe ImageBuilder)
sibrrsImageBuilder = lens _sibrrsImageBuilder (\s a -> s {_sibrrsImageBuilder = a})

-- | -- | The response status code.
sibrrsResponseStatus :: Lens' StopImageBuilderResponse Int
sibrrsResponseStatus = lens _sibrrsResponseStatus (\s a -> s {_sibrrsResponseStatus = a})

instance NFData StopImageBuilderResponse
