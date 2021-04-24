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
-- Module      : Network.AWS.DynamoDB.DescribeTableReplicaAutoScaling
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes auto scaling settings across replicas of the global table at once.
module Network.AWS.DynamoDB.DescribeTableReplicaAutoScaling
  ( -- * Creating a Request
    describeTableReplicaAutoScaling,
    DescribeTableReplicaAutoScaling,

    -- * Request Lenses
    dtrasTableName,

    -- * Destructuring the Response
    describeTableReplicaAutoScalingResponse,
    DescribeTableReplicaAutoScalingResponse,

    -- * Response Lenses
    dtrasrrsTableAutoScalingDescription,
    dtrasrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTableReplicaAutoScaling' smart constructor.
newtype DescribeTableReplicaAutoScaling = DescribeTableReplicaAutoScaling'
  { _dtrasTableName ::
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

-- | Creates a value of 'DescribeTableReplicaAutoScaling' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrasTableName' - The name of the table.
describeTableReplicaAutoScaling ::
  -- | 'dtrasTableName'
  Text ->
  DescribeTableReplicaAutoScaling
describeTableReplicaAutoScaling pTableName_ =
  DescribeTableReplicaAutoScaling'
    { _dtrasTableName =
        pTableName_
    }

-- | The name of the table.
dtrasTableName :: Lens' DescribeTableReplicaAutoScaling Text
dtrasTableName = lens _dtrasTableName (\s a -> s {_dtrasTableName = a})

instance AWSRequest DescribeTableReplicaAutoScaling where
  type
    Rs DescribeTableReplicaAutoScaling =
      DescribeTableReplicaAutoScalingResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          DescribeTableReplicaAutoScalingResponse'
            <$> (x .?> "TableAutoScalingDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTableReplicaAutoScaling

instance NFData DescribeTableReplicaAutoScaling

instance ToHeaders DescribeTableReplicaAutoScaling where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDB_20120810.DescribeTableReplicaAutoScaling" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeTableReplicaAutoScaling where
  toJSON DescribeTableReplicaAutoScaling' {..} =
    object
      (catMaybes [Just ("TableName" .= _dtrasTableName)])

instance ToPath DescribeTableReplicaAutoScaling where
  toPath = const "/"

instance ToQuery DescribeTableReplicaAutoScaling where
  toQuery = const mempty

-- | /See:/ 'describeTableReplicaAutoScalingResponse' smart constructor.
data DescribeTableReplicaAutoScalingResponse = DescribeTableReplicaAutoScalingResponse'
  { _dtrasrrsTableAutoScalingDescription ::
      !( Maybe
           TableAutoScalingDescription
       ),
    _dtrasrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTableReplicaAutoScalingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrasrrsTableAutoScalingDescription' - Represents the auto scaling properties of the table.
--
-- * 'dtrasrrsResponseStatus' - -- | The response status code.
describeTableReplicaAutoScalingResponse ::
  -- | 'dtrasrrsResponseStatus'
  Int ->
  DescribeTableReplicaAutoScalingResponse
describeTableReplicaAutoScalingResponse
  pResponseStatus_ =
    DescribeTableReplicaAutoScalingResponse'
      { _dtrasrrsTableAutoScalingDescription =
          Nothing,
        _dtrasrrsResponseStatus =
          pResponseStatus_
      }

-- | Represents the auto scaling properties of the table.
dtrasrrsTableAutoScalingDescription :: Lens' DescribeTableReplicaAutoScalingResponse (Maybe TableAutoScalingDescription)
dtrasrrsTableAutoScalingDescription = lens _dtrasrrsTableAutoScalingDescription (\s a -> s {_dtrasrrsTableAutoScalingDescription = a})

-- | -- | The response status code.
dtrasrrsResponseStatus :: Lens' DescribeTableReplicaAutoScalingResponse Int
dtrasrrsResponseStatus = lens _dtrasrrsResponseStatus (\s a -> s {_dtrasrrsResponseStatus = a})

instance
  NFData
    DescribeTableReplicaAutoScalingResponse
