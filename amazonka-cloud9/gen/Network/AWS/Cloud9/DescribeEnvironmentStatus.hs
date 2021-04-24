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
-- Module      : Network.AWS.Cloud9.DescribeEnvironmentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets status information for an AWS Cloud9 development environment.
module Network.AWS.Cloud9.DescribeEnvironmentStatus
  ( -- * Creating a Request
    describeEnvironmentStatus,
    DescribeEnvironmentStatus,

    -- * Request Lenses
    desEnvironmentId,

    -- * Destructuring the Response
    describeEnvironmentStatusResponse,
    DescribeEnvironmentStatusResponse,

    -- * Response Lenses
    desrrsStatus,
    desrrsMessage,
    desrrsResponseStatus,
  )
where

import Network.AWS.Cloud9.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEnvironmentStatus' smart constructor.
newtype DescribeEnvironmentStatus = DescribeEnvironmentStatus'
  { _desEnvironmentId ::
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

-- | Creates a value of 'DescribeEnvironmentStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desEnvironmentId' - The ID of the environment to get status information about.
describeEnvironmentStatus ::
  -- | 'desEnvironmentId'
  Text ->
  DescribeEnvironmentStatus
describeEnvironmentStatus pEnvironmentId_ =
  DescribeEnvironmentStatus'
    { _desEnvironmentId =
        pEnvironmentId_
    }

-- | The ID of the environment to get status information about.
desEnvironmentId :: Lens' DescribeEnvironmentStatus Text
desEnvironmentId = lens _desEnvironmentId (\s a -> s {_desEnvironmentId = a})

instance AWSRequest DescribeEnvironmentStatus where
  type
    Rs DescribeEnvironmentStatus =
      DescribeEnvironmentStatusResponse
  request = postJSON cloud9
  response =
    receiveJSON
      ( \s h x ->
          DescribeEnvironmentStatusResponse'
            <$> (x .?> "status")
            <*> (x .?> "message")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEnvironmentStatus

instance NFData DescribeEnvironmentStatus

instance ToHeaders DescribeEnvironmentStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCloud9WorkspaceManagementService.DescribeEnvironmentStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEnvironmentStatus where
  toJSON DescribeEnvironmentStatus' {..} =
    object
      ( catMaybes
          [Just ("environmentId" .= _desEnvironmentId)]
      )

instance ToPath DescribeEnvironmentStatus where
  toPath = const "/"

instance ToQuery DescribeEnvironmentStatus where
  toQuery = const mempty

-- | /See:/ 'describeEnvironmentStatusResponse' smart constructor.
data DescribeEnvironmentStatusResponse = DescribeEnvironmentStatusResponse'
  { _desrrsStatus ::
      !( Maybe
           EnvironmentStatus
       ),
    _desrrsMessage ::
      !( Maybe
           Text
       ),
    _desrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEnvironmentStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrrsStatus' - The status of the environment. Available values include:     * @connecting@ : The environment is connecting.     * @creating@ : The environment is being created.     * @deleting@ : The environment is being deleted.     * @error@ : The environment is in an error state.     * @ready@ : The environment is ready.     * @stopped@ : The environment is stopped.     * @stopping@ : The environment is stopping.
--
-- * 'desrrsMessage' - Any informational message about the status of the environment.
--
-- * 'desrrsResponseStatus' - -- | The response status code.
describeEnvironmentStatusResponse ::
  -- | 'desrrsResponseStatus'
  Int ->
  DescribeEnvironmentStatusResponse
describeEnvironmentStatusResponse pResponseStatus_ =
  DescribeEnvironmentStatusResponse'
    { _desrrsStatus =
        Nothing,
      _desrrsMessage = Nothing,
      _desrrsResponseStatus = pResponseStatus_
    }

-- | The status of the environment. Available values include:     * @connecting@ : The environment is connecting.     * @creating@ : The environment is being created.     * @deleting@ : The environment is being deleted.     * @error@ : The environment is in an error state.     * @ready@ : The environment is ready.     * @stopped@ : The environment is stopped.     * @stopping@ : The environment is stopping.
desrrsStatus :: Lens' DescribeEnvironmentStatusResponse (Maybe EnvironmentStatus)
desrrsStatus = lens _desrrsStatus (\s a -> s {_desrrsStatus = a})

-- | Any informational message about the status of the environment.
desrrsMessage :: Lens' DescribeEnvironmentStatusResponse (Maybe Text)
desrrsMessage = lens _desrrsMessage (\s a -> s {_desrrsMessage = a})

-- | -- | The response status code.
desrrsResponseStatus :: Lens' DescribeEnvironmentStatusResponse Int
desrrsResponseStatus = lens _desrrsResponseStatus (\s a -> s {_desrrsResponseStatus = a})

instance NFData DescribeEnvironmentStatusResponse
