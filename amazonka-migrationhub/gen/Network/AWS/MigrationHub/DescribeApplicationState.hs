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
-- Module      : Network.AWS.MigrationHub.DescribeApplicationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the migration status of an application.
module Network.AWS.MigrationHub.DescribeApplicationState
  ( -- * Creating a Request
    describeApplicationState,
    DescribeApplicationState,

    -- * Request Lenses
    dasApplicationId,

    -- * Destructuring the Response
    describeApplicationStateResponse,
    DescribeApplicationStateResponse,

    -- * Response Lenses
    dasrrsApplicationStatus,
    dasrrsLastUpdatedTime,
    dasrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MigrationHub.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeApplicationState' smart constructor.
newtype DescribeApplicationState = DescribeApplicationState'
  { _dasApplicationId ::
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

-- | Creates a value of 'DescribeApplicationState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasApplicationId' - The configurationId in Application Discovery Service that uniquely identifies the grouped application.
describeApplicationState ::
  -- | 'dasApplicationId'
  Text ->
  DescribeApplicationState
describeApplicationState pApplicationId_ =
  DescribeApplicationState'
    { _dasApplicationId =
        pApplicationId_
    }

-- | The configurationId in Application Discovery Service that uniquely identifies the grouped application.
dasApplicationId :: Lens' DescribeApplicationState Text
dasApplicationId = lens _dasApplicationId (\s a -> s {_dasApplicationId = a})

instance AWSRequest DescribeApplicationState where
  type
    Rs DescribeApplicationState =
      DescribeApplicationStateResponse
  request = postJSON migrationHub
  response =
    receiveJSON
      ( \s h x ->
          DescribeApplicationStateResponse'
            <$> (x .?> "ApplicationStatus")
            <*> (x .?> "LastUpdatedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeApplicationState

instance NFData DescribeApplicationState

instance ToHeaders DescribeApplicationState where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSMigrationHub.DescribeApplicationState" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeApplicationState where
  toJSON DescribeApplicationState' {..} =
    object
      ( catMaybes
          [Just ("ApplicationId" .= _dasApplicationId)]
      )

instance ToPath DescribeApplicationState where
  toPath = const "/"

instance ToQuery DescribeApplicationState where
  toQuery = const mempty

-- | /See:/ 'describeApplicationStateResponse' smart constructor.
data DescribeApplicationStateResponse = DescribeApplicationStateResponse'
  { _dasrrsApplicationStatus ::
      !( Maybe
           ApplicationStatus
       ),
    _dasrrsLastUpdatedTime ::
      !( Maybe
           POSIX
       ),
    _dasrrsResponseStatus ::
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

-- | Creates a value of 'DescribeApplicationStateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dasrrsApplicationStatus' - Status of the application - Not Started, In-Progress, Complete.
--
-- * 'dasrrsLastUpdatedTime' - The timestamp when the application status was last updated.
--
-- * 'dasrrsResponseStatus' - -- | The response status code.
describeApplicationStateResponse ::
  -- | 'dasrrsResponseStatus'
  Int ->
  DescribeApplicationStateResponse
describeApplicationStateResponse pResponseStatus_ =
  DescribeApplicationStateResponse'
    { _dasrrsApplicationStatus =
        Nothing,
      _dasrrsLastUpdatedTime = Nothing,
      _dasrrsResponseStatus = pResponseStatus_
    }

-- | Status of the application - Not Started, In-Progress, Complete.
dasrrsApplicationStatus :: Lens' DescribeApplicationStateResponse (Maybe ApplicationStatus)
dasrrsApplicationStatus = lens _dasrrsApplicationStatus (\s a -> s {_dasrrsApplicationStatus = a})

-- | The timestamp when the application status was last updated.
dasrrsLastUpdatedTime :: Lens' DescribeApplicationStateResponse (Maybe UTCTime)
dasrrsLastUpdatedTime = lens _dasrrsLastUpdatedTime (\s a -> s {_dasrrsLastUpdatedTime = a}) . mapping _Time

-- | -- | The response status code.
dasrrsResponseStatus :: Lens' DescribeApplicationStateResponse Int
dasrrsResponseStatus = lens _dasrrsResponseStatus (\s a -> s {_dasrrsResponseStatus = a})

instance NFData DescribeApplicationStateResponse
