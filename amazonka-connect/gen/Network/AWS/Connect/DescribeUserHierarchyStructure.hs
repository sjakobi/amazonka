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
-- Module      : Network.AWS.Connect.DescribeUserHierarchyStructure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the hierarchy structure of the specified Amazon Connect instance.
module Network.AWS.Connect.DescribeUserHierarchyStructure
  ( -- * Creating a Request
    describeUserHierarchyStructure,
    DescribeUserHierarchyStructure,

    -- * Request Lenses
    duhsInstanceId,

    -- * Destructuring the Response
    describeUserHierarchyStructureResponse,
    DescribeUserHierarchyStructureResponse,

    -- * Response Lenses
    duhsrrsHierarchyStructure,
    duhsrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeUserHierarchyStructure' smart constructor.
newtype DescribeUserHierarchyStructure = DescribeUserHierarchyStructure'
  { _duhsInstanceId ::
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

-- | Creates a value of 'DescribeUserHierarchyStructure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duhsInstanceId' - The identifier of the Amazon Connect instance.
describeUserHierarchyStructure ::
  -- | 'duhsInstanceId'
  Text ->
  DescribeUserHierarchyStructure
describeUserHierarchyStructure pInstanceId_ =
  DescribeUserHierarchyStructure'
    { _duhsInstanceId =
        pInstanceId_
    }

-- | The identifier of the Amazon Connect instance.
duhsInstanceId :: Lens' DescribeUserHierarchyStructure Text
duhsInstanceId = lens _duhsInstanceId (\s a -> s {_duhsInstanceId = a})

instance AWSRequest DescribeUserHierarchyStructure where
  type
    Rs DescribeUserHierarchyStructure =
      DescribeUserHierarchyStructureResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          DescribeUserHierarchyStructureResponse'
            <$> (x .?> "HierarchyStructure") <*> (pure (fromEnum s))
      )

instance Hashable DescribeUserHierarchyStructure

instance NFData DescribeUserHierarchyStructure

instance ToHeaders DescribeUserHierarchyStructure where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeUserHierarchyStructure where
  toPath DescribeUserHierarchyStructure' {..} =
    mconcat
      ["/user-hierarchy-structure/", toBS _duhsInstanceId]

instance ToQuery DescribeUserHierarchyStructure where
  toQuery = const mempty

-- | /See:/ 'describeUserHierarchyStructureResponse' smart constructor.
data DescribeUserHierarchyStructureResponse = DescribeUserHierarchyStructureResponse'
  { _duhsrrsHierarchyStructure ::
      !( Maybe
           HierarchyStructure
       ),
    _duhsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeUserHierarchyStructureResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duhsrrsHierarchyStructure' - Information about the hierarchy structure.
--
-- * 'duhsrrsResponseStatus' - -- | The response status code.
describeUserHierarchyStructureResponse ::
  -- | 'duhsrrsResponseStatus'
  Int ->
  DescribeUserHierarchyStructureResponse
describeUserHierarchyStructureResponse
  pResponseStatus_ =
    DescribeUserHierarchyStructureResponse'
      { _duhsrrsHierarchyStructure =
          Nothing,
        _duhsrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the hierarchy structure.
duhsrrsHierarchyStructure :: Lens' DescribeUserHierarchyStructureResponse (Maybe HierarchyStructure)
duhsrrsHierarchyStructure = lens _duhsrrsHierarchyStructure (\s a -> s {_duhsrrsHierarchyStructure = a})

-- | -- | The response status code.
duhsrrsResponseStatus :: Lens' DescribeUserHierarchyStructureResponse Int
duhsrrsResponseStatus = lens _duhsrrsResponseStatus (\s a -> s {_duhsrrsResponseStatus = a})

instance
  NFData
    DescribeUserHierarchyStructureResponse
