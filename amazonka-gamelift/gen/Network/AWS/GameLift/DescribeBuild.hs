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
-- Module      : Network.AWS.GameLift.DescribeBuild
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves properties for a custom game build. To request a build resource, specify a build ID. If successful, an object containing the build properties is returned.
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
module Network.AWS.GameLift.DescribeBuild
  ( -- * Creating a Request
    describeBuild,
    DescribeBuild,

    -- * Request Lenses
    dBuildId,

    -- * Destructuring the Response
    describeBuildResponse,
    DescribeBuildResponse,

    -- * Response Lenses
    dbrrsBuild,
    dbrrsResponseStatus,
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
-- /See:/ 'describeBuild' smart constructor.
newtype DescribeBuild = DescribeBuild'
  { _dBuildId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeBuild' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dBuildId' - A unique identifier for a build to retrieve properties for. You can use either the build ID or ARN value.
describeBuild ::
  -- | 'dBuildId'
  Text ->
  DescribeBuild
describeBuild pBuildId_ =
  DescribeBuild' {_dBuildId = pBuildId_}

-- | A unique identifier for a build to retrieve properties for. You can use either the build ID or ARN value.
dBuildId :: Lens' DescribeBuild Text
dBuildId = lens _dBuildId (\s a -> s {_dBuildId = a})

instance AWSRequest DescribeBuild where
  type Rs DescribeBuild = DescribeBuildResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          DescribeBuildResponse'
            <$> (x .?> "Build") <*> (pure (fromEnum s))
      )

instance Hashable DescribeBuild

instance NFData DescribeBuild

instance ToHeaders DescribeBuild where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.DescribeBuild" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeBuild where
  toJSON DescribeBuild' {..} =
    object (catMaybes [Just ("BuildId" .= _dBuildId)])

instance ToPath DescribeBuild where
  toPath = const "/"

instance ToQuery DescribeBuild where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'describeBuildResponse' smart constructor.
data DescribeBuildResponse = DescribeBuildResponse'
  { _dbrrsBuild ::
      !(Maybe Build),
    _dbrrsResponseStatus ::
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

-- | Creates a value of 'DescribeBuildResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrrsBuild' - Set of properties describing the requested build.
--
-- * 'dbrrsResponseStatus' - -- | The response status code.
describeBuildResponse ::
  -- | 'dbrrsResponseStatus'
  Int ->
  DescribeBuildResponse
describeBuildResponse pResponseStatus_ =
  DescribeBuildResponse'
    { _dbrrsBuild = Nothing,
      _dbrrsResponseStatus = pResponseStatus_
    }

-- | Set of properties describing the requested build.
dbrrsBuild :: Lens' DescribeBuildResponse (Maybe Build)
dbrrsBuild = lens _dbrrsBuild (\s a -> s {_dbrrsBuild = a})

-- | -- | The response status code.
dbrrsResponseStatus :: Lens' DescribeBuildResponse Int
dbrrsResponseStatus = lens _dbrrsResponseStatus (\s a -> s {_dbrrsResponseStatus = a})

instance NFData DescribeBuildResponse
