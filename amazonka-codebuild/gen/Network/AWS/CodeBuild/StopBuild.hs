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
-- Module      : Network.AWS.CodeBuild.StopBuild
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempts to stop running a build.
module Network.AWS.CodeBuild.StopBuild
  ( -- * Creating a Request
    stopBuild,
    StopBuild,

    -- * Request Lenses
    sbId,

    -- * Destructuring the Response
    stopBuildResponse,
    StopBuildResponse,

    -- * Response Lenses
    storsBuild,
    storsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopBuild' smart constructor.
newtype StopBuild = StopBuild' {_sbId :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopBuild' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbId' - The ID of the build.
stopBuild ::
  -- | 'sbId'
  Text ->
  StopBuild
stopBuild pId_ = StopBuild' {_sbId = pId_}

-- | The ID of the build.
sbId :: Lens' StopBuild Text
sbId = lens _sbId (\s a -> s {_sbId = a})

instance AWSRequest StopBuild where
  type Rs StopBuild = StopBuildResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          StopBuildResponse'
            <$> (x .?> "build") <*> (pure (fromEnum s))
      )

instance Hashable StopBuild

instance NFData StopBuild

instance ToHeaders StopBuild where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.StopBuild" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopBuild where
  toJSON StopBuild' {..} =
    object (catMaybes [Just ("id" .= _sbId)])

instance ToPath StopBuild where
  toPath = const "/"

instance ToQuery StopBuild where
  toQuery = const mempty

-- | /See:/ 'stopBuildResponse' smart constructor.
data StopBuildResponse = StopBuildResponse'
  { _storsBuild ::
      !(Maybe Build),
    _storsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopBuildResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'storsBuild' - Information about the build.
--
-- * 'storsResponseStatus' - -- | The response status code.
stopBuildResponse ::
  -- | 'storsResponseStatus'
  Int ->
  StopBuildResponse
stopBuildResponse pResponseStatus_ =
  StopBuildResponse'
    { _storsBuild = Nothing,
      _storsResponseStatus = pResponseStatus_
    }

-- | Information about the build.
storsBuild :: Lens' StopBuildResponse (Maybe Build)
storsBuild = lens _storsBuild (\s a -> s {_storsBuild = a})

-- | -- | The response status code.
storsResponseStatus :: Lens' StopBuildResponse Int
storsResponseStatus = lens _storsResponseStatus (\s a -> s {_storsResponseStatus = a})

instance NFData StopBuildResponse
