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
-- Module      : Network.AWS.Connect.DescribeInstanceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Describes the specified instance attribute.
module Network.AWS.Connect.DescribeInstanceAttribute
  ( -- * Creating a Request
    describeInstanceAttribute,
    DescribeInstanceAttribute,

    -- * Request Lenses
    desInstanceId,
    desAttributeType,

    -- * Destructuring the Response
    describeInstanceAttributeResponse,
    DescribeInstanceAttributeResponse,

    -- * Response Lenses
    diarrsAttribute,
    diarrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInstanceAttribute' smart constructor.
data DescribeInstanceAttribute = DescribeInstanceAttribute'
  { _desInstanceId ::
      !Text,
    _desAttributeType ::
      !InstanceAttributeType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstanceAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'desAttributeType' - The type of attribute.
describeInstanceAttribute ::
  -- | 'desInstanceId'
  Text ->
  -- | 'desAttributeType'
  InstanceAttributeType ->
  DescribeInstanceAttribute
describeInstanceAttribute
  pInstanceId_
  pAttributeType_ =
    DescribeInstanceAttribute'
      { _desInstanceId =
          pInstanceId_,
        _desAttributeType = pAttributeType_
      }

-- | The identifier of the Amazon Connect instance.
desInstanceId :: Lens' DescribeInstanceAttribute Text
desInstanceId = lens _desInstanceId (\s a -> s {_desInstanceId = a})

-- | The type of attribute.
desAttributeType :: Lens' DescribeInstanceAttribute InstanceAttributeType
desAttributeType = lens _desAttributeType (\s a -> s {_desAttributeType = a})

instance AWSRequest DescribeInstanceAttribute where
  type
    Rs DescribeInstanceAttribute =
      DescribeInstanceAttributeResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          DescribeInstanceAttributeResponse'
            <$> (x .?> "Attribute") <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstanceAttribute

instance NFData DescribeInstanceAttribute

instance ToHeaders DescribeInstanceAttribute where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeInstanceAttribute where
  toPath DescribeInstanceAttribute' {..} =
    mconcat
      [ "/instance/",
        toBS _desInstanceId,
        "/attribute/",
        toBS _desAttributeType
      ]

instance ToQuery DescribeInstanceAttribute where
  toQuery = const mempty

-- | /See:/ 'describeInstanceAttributeResponse' smart constructor.
data DescribeInstanceAttributeResponse = DescribeInstanceAttributeResponse'
  { _diarrsAttribute ::
      !( Maybe
           Attribute
       ),
    _diarrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstanceAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diarrsAttribute' - The type of attribute.
--
-- * 'diarrsResponseStatus' - -- | The response status code.
describeInstanceAttributeResponse ::
  -- | 'diarrsResponseStatus'
  Int ->
  DescribeInstanceAttributeResponse
describeInstanceAttributeResponse pResponseStatus_ =
  DescribeInstanceAttributeResponse'
    { _diarrsAttribute =
        Nothing,
      _diarrsResponseStatus = pResponseStatus_
    }

-- | The type of attribute.
diarrsAttribute :: Lens' DescribeInstanceAttributeResponse (Maybe Attribute)
diarrsAttribute = lens _diarrsAttribute (\s a -> s {_diarrsAttribute = a})

-- | -- | The response status code.
diarrsResponseStatus :: Lens' DescribeInstanceAttributeResponse Int
diarrsResponseStatus = lens _diarrsResponseStatus (\s a -> s {_diarrsResponseStatus = a})

instance NFData DescribeInstanceAttributeResponse
