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
-- Module      : Network.AWS.DynamoDB.DescribeGlobalTableSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes Region-specific settings for a global table.
module Network.AWS.DynamoDB.DescribeGlobalTableSettings
  ( -- * Creating a Request
    describeGlobalTableSettings,
    DescribeGlobalTableSettings,

    -- * Request Lenses
    dgtsGlobalTableName,

    -- * Destructuring the Response
    describeGlobalTableSettingsResponse,
    DescribeGlobalTableSettingsResponse,

    -- * Response Lenses
    dgtsrrsReplicaSettings,
    dgtsrrsGlobalTableName,
    dgtsrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeGlobalTableSettings' smart constructor.
newtype DescribeGlobalTableSettings = DescribeGlobalTableSettings'
  { _dgtsGlobalTableName ::
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

-- | Creates a value of 'DescribeGlobalTableSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgtsGlobalTableName' - The name of the global table to describe.
describeGlobalTableSettings ::
  -- | 'dgtsGlobalTableName'
  Text ->
  DescribeGlobalTableSettings
describeGlobalTableSettings pGlobalTableName_ =
  DescribeGlobalTableSettings'
    { _dgtsGlobalTableName =
        pGlobalTableName_
    }

-- | The name of the global table to describe.
dgtsGlobalTableName :: Lens' DescribeGlobalTableSettings Text
dgtsGlobalTableName = lens _dgtsGlobalTableName (\s a -> s {_dgtsGlobalTableName = a})

instance AWSRequest DescribeGlobalTableSettings where
  type
    Rs DescribeGlobalTableSettings =
      DescribeGlobalTableSettingsResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          DescribeGlobalTableSettingsResponse'
            <$> (x .?> "ReplicaSettings" .!@ mempty)
            <*> (x .?> "GlobalTableName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGlobalTableSettings

instance NFData DescribeGlobalTableSettings

instance ToHeaders DescribeGlobalTableSettings where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDB_20120810.DescribeGlobalTableSettings" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeGlobalTableSettings where
  toJSON DescribeGlobalTableSettings' {..} =
    object
      ( catMaybes
          [Just ("GlobalTableName" .= _dgtsGlobalTableName)]
      )

instance ToPath DescribeGlobalTableSettings where
  toPath = const "/"

instance ToQuery DescribeGlobalTableSettings where
  toQuery = const mempty

-- | /See:/ 'describeGlobalTableSettingsResponse' smart constructor.
data DescribeGlobalTableSettingsResponse = DescribeGlobalTableSettingsResponse'
  { _dgtsrrsReplicaSettings ::
      !( Maybe
           [ReplicaSettingsDescription]
       ),
    _dgtsrrsGlobalTableName ::
      !( Maybe
           Text
       ),
    _dgtsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeGlobalTableSettingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgtsrrsReplicaSettings' - The Region-specific settings for the global table.
--
-- * 'dgtsrrsGlobalTableName' - The name of the global table.
--
-- * 'dgtsrrsResponseStatus' - -- | The response status code.
describeGlobalTableSettingsResponse ::
  -- | 'dgtsrrsResponseStatus'
  Int ->
  DescribeGlobalTableSettingsResponse
describeGlobalTableSettingsResponse pResponseStatus_ =
  DescribeGlobalTableSettingsResponse'
    { _dgtsrrsReplicaSettings =
        Nothing,
      _dgtsrrsGlobalTableName = Nothing,
      _dgtsrrsResponseStatus =
        pResponseStatus_
    }

-- | The Region-specific settings for the global table.
dgtsrrsReplicaSettings :: Lens' DescribeGlobalTableSettingsResponse [ReplicaSettingsDescription]
dgtsrrsReplicaSettings = lens _dgtsrrsReplicaSettings (\s a -> s {_dgtsrrsReplicaSettings = a}) . _Default . _Coerce

-- | The name of the global table.
dgtsrrsGlobalTableName :: Lens' DescribeGlobalTableSettingsResponse (Maybe Text)
dgtsrrsGlobalTableName = lens _dgtsrrsGlobalTableName (\s a -> s {_dgtsrrsGlobalTableName = a})

-- | -- | The response status code.
dgtsrrsResponseStatus :: Lens' DescribeGlobalTableSettingsResponse Int
dgtsrrsResponseStatus = lens _dgtsrrsResponseStatus (\s a -> s {_dgtsrrsResponseStatus = a})

instance NFData DescribeGlobalTableSettingsResponse
