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
-- Module      : Network.AWS.GameLift.UpdateBuild
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates metadata in a build resource, including the build name and version. To update the metadata, specify the build ID to update and provide the new values. If successful, a build object containing the updated metadata is returned.
--
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html Upload a Custom Server Build>
--
-- __Related operations__
--
--     * 'CreateBuild'
--
--     * 'ListBuilds'
--
--     * 'DescribeBuild'
--
--     * 'UpdateBuild'
--
--     * 'DeleteBuild'
module Network.AWS.GameLift.UpdateBuild
  ( -- * Creating a Request
    updateBuild,
    UpdateBuild,

    -- * Request Lenses
    ubVersion,
    ubName,
    ubBuildId,

    -- * Destructuring the Response
    updateBuildResponse,
    UpdateBuildResponse,

    -- * Response Lenses
    ubrrsBuild,
    ubrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'updateBuild' smart constructor.
data UpdateBuild = UpdateBuild'
  { _ubVersion ::
      !(Maybe Text),
    _ubName :: !(Maybe Text),
    _ubBuildId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateBuild' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubVersion' - Version information that is associated with a build or script. Version strings do not need to be unique.
--
-- * 'ubName' - A descriptive label that is associated with a build. Build names do not need to be unique.
--
-- * 'ubBuildId' - A unique identifier for a build to update. You can use either the build ID or ARN value.
updateBuild ::
  -- | 'ubBuildId'
  Text ->
  UpdateBuild
updateBuild pBuildId_ =
  UpdateBuild'
    { _ubVersion = Nothing,
      _ubName = Nothing,
      _ubBuildId = pBuildId_
    }

-- | Version information that is associated with a build or script. Version strings do not need to be unique.
ubVersion :: Lens' UpdateBuild (Maybe Text)
ubVersion = lens _ubVersion (\s a -> s {_ubVersion = a})

-- | A descriptive label that is associated with a build. Build names do not need to be unique.
ubName :: Lens' UpdateBuild (Maybe Text)
ubName = lens _ubName (\s a -> s {_ubName = a})

-- | A unique identifier for a build to update. You can use either the build ID or ARN value.
ubBuildId :: Lens' UpdateBuild Text
ubBuildId = lens _ubBuildId (\s a -> s {_ubBuildId = a})

instance AWSRequest UpdateBuild where
  type Rs UpdateBuild = UpdateBuildResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          UpdateBuildResponse'
            <$> (x .?> "Build") <*> (pure (fromEnum s))
      )

instance Hashable UpdateBuild

instance NFData UpdateBuild

instance ToHeaders UpdateBuild where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.UpdateBuild" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateBuild where
  toJSON UpdateBuild' {..} =
    object
      ( catMaybes
          [ ("Version" .=) <$> _ubVersion,
            ("Name" .=) <$> _ubName,
            Just ("BuildId" .= _ubBuildId)
          ]
      )

instance ToPath UpdateBuild where
  toPath = const "/"

instance ToQuery UpdateBuild where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'updateBuildResponse' smart constructor.
data UpdateBuildResponse = UpdateBuildResponse'
  { _ubrrsBuild ::
      !(Maybe Build),
    _ubrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateBuildResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubrrsBuild' - The updated build resource.
--
-- * 'ubrrsResponseStatus' - -- | The response status code.
updateBuildResponse ::
  -- | 'ubrrsResponseStatus'
  Int ->
  UpdateBuildResponse
updateBuildResponse pResponseStatus_ =
  UpdateBuildResponse'
    { _ubrrsBuild = Nothing,
      _ubrrsResponseStatus = pResponseStatus_
    }

-- | The updated build resource.
ubrrsBuild :: Lens' UpdateBuildResponse (Maybe Build)
ubrrsBuild = lens _ubrrsBuild (\s a -> s {_ubrrsBuild = a})

-- | -- | The response status code.
ubrrsResponseStatus :: Lens' UpdateBuildResponse Int
ubrrsResponseStatus = lens _ubrrsResponseStatus (\s a -> s {_ubrrsResponseStatus = a})

instance NFData UpdateBuildResponse
