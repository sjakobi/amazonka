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
-- Module      : Network.AWS.DynamoDB.DescribeGlobalTable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified global table.
module Network.AWS.DynamoDB.DescribeGlobalTable
  ( -- * Creating a Request
    describeGlobalTable,
    DescribeGlobalTable,

    -- * Request Lenses
    dgtGlobalTableName,

    -- * Destructuring the Response
    describeGlobalTableResponse,
    DescribeGlobalTableResponse,

    -- * Response Lenses
    dgtrrsGlobalTableDescription,
    dgtrrsResponseStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeGlobalTable' smart constructor.
newtype DescribeGlobalTable = DescribeGlobalTable'
  { _dgtGlobalTableName ::
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

-- | Creates a value of 'DescribeGlobalTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgtGlobalTableName' - The name of the global table.
describeGlobalTable ::
  -- | 'dgtGlobalTableName'
  Text ->
  DescribeGlobalTable
describeGlobalTable pGlobalTableName_ =
  DescribeGlobalTable'
    { _dgtGlobalTableName =
        pGlobalTableName_
    }

-- | The name of the global table.
dgtGlobalTableName :: Lens' DescribeGlobalTable Text
dgtGlobalTableName = lens _dgtGlobalTableName (\s a -> s {_dgtGlobalTableName = a})

instance AWSRequest DescribeGlobalTable where
  type
    Rs DescribeGlobalTable =
      DescribeGlobalTableResponse
  request = postJSON dynamoDB
  response =
    receiveJSON
      ( \s h x ->
          DescribeGlobalTableResponse'
            <$> (x .?> "GlobalTableDescription")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGlobalTable

instance NFData DescribeGlobalTable

instance ToHeaders DescribeGlobalTable where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DynamoDB_20120810.DescribeGlobalTable" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.0" :: ByteString)
          ]
      )

instance ToJSON DescribeGlobalTable where
  toJSON DescribeGlobalTable' {..} =
    object
      ( catMaybes
          [Just ("GlobalTableName" .= _dgtGlobalTableName)]
      )

instance ToPath DescribeGlobalTable where
  toPath = const "/"

instance ToQuery DescribeGlobalTable where
  toQuery = const mempty

-- | /See:/ 'describeGlobalTableResponse' smart constructor.
data DescribeGlobalTableResponse = DescribeGlobalTableResponse'
  { _dgtrrsGlobalTableDescription ::
      !( Maybe
           GlobalTableDescription
       ),
    _dgtrrsResponseStatus ::
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

-- | Creates a value of 'DescribeGlobalTableResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgtrrsGlobalTableDescription' - Contains the details of the global table.
--
-- * 'dgtrrsResponseStatus' - -- | The response status code.
describeGlobalTableResponse ::
  -- | 'dgtrrsResponseStatus'
  Int ->
  DescribeGlobalTableResponse
describeGlobalTableResponse pResponseStatus_ =
  DescribeGlobalTableResponse'
    { _dgtrrsGlobalTableDescription =
        Nothing,
      _dgtrrsResponseStatus = pResponseStatus_
    }

-- | Contains the details of the global table.
dgtrrsGlobalTableDescription :: Lens' DescribeGlobalTableResponse (Maybe GlobalTableDescription)
dgtrrsGlobalTableDescription = lens _dgtrrsGlobalTableDescription (\s a -> s {_dgtrrsGlobalTableDescription = a})

-- | -- | The response status code.
dgtrrsResponseStatus :: Lens' DescribeGlobalTableResponse Int
dgtrrsResponseStatus = lens _dgtrrsResponseStatus (\s a -> s {_dgtrrsResponseStatus = a})

instance NFData DescribeGlobalTableResponse
