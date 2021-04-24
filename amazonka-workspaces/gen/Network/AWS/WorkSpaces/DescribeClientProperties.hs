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
-- Module      : Network.AWS.WorkSpaces.DescribeClientProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list that describes one or more specified Amazon WorkSpaces clients.
module Network.AWS.WorkSpaces.DescribeClientProperties
  ( -- * Creating a Request
    describeClientProperties,
    DescribeClientProperties,

    -- * Request Lenses
    dcpResourceIds,

    -- * Destructuring the Response
    describeClientPropertiesResponse,
    DescribeClientPropertiesResponse,

    -- * Response Lenses
    dcprrsClientPropertiesList,
    dcprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'describeClientProperties' smart constructor.
newtype DescribeClientProperties = DescribeClientProperties'
  { _dcpResourceIds ::
      List1 Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeClientProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpResourceIds' - The resource identifier, in the form of directory IDs.
describeClientProperties ::
  -- | 'dcpResourceIds'
  NonEmpty Text ->
  DescribeClientProperties
describeClientProperties pResourceIds_ =
  DescribeClientProperties'
    { _dcpResourceIds =
        _List1 # pResourceIds_
    }

-- | The resource identifier, in the form of directory IDs.
dcpResourceIds :: Lens' DescribeClientProperties (NonEmpty Text)
dcpResourceIds = lens _dcpResourceIds (\s a -> s {_dcpResourceIds = a}) . _List1

instance AWSRequest DescribeClientProperties where
  type
    Rs DescribeClientProperties =
      DescribeClientPropertiesResponse
  request = postJSON workSpaces
  response =
    receiveJSON
      ( \s h x ->
          DescribeClientPropertiesResponse'
            <$> (x .?> "ClientPropertiesList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClientProperties

instance NFData DescribeClientProperties

instance ToHeaders DescribeClientProperties where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "WorkspacesService.DescribeClientProperties" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeClientProperties where
  toJSON DescribeClientProperties' {..} =
    object
      (catMaybes [Just ("ResourceIds" .= _dcpResourceIds)])

instance ToPath DescribeClientProperties where
  toPath = const "/"

instance ToQuery DescribeClientProperties where
  toQuery = const mempty

-- | /See:/ 'describeClientPropertiesResponse' smart constructor.
data DescribeClientPropertiesResponse = DescribeClientPropertiesResponse'
  { _dcprrsClientPropertiesList ::
      !( Maybe
           [ClientPropertiesResult]
       ),
    _dcprrsResponseStatus ::
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

-- | Creates a value of 'DescribeClientPropertiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcprrsClientPropertiesList' - Information about the specified Amazon WorkSpaces clients.
--
-- * 'dcprrsResponseStatus' - -- | The response status code.
describeClientPropertiesResponse ::
  -- | 'dcprrsResponseStatus'
  Int ->
  DescribeClientPropertiesResponse
describeClientPropertiesResponse pResponseStatus_ =
  DescribeClientPropertiesResponse'
    { _dcprrsClientPropertiesList =
        Nothing,
      _dcprrsResponseStatus = pResponseStatus_
    }

-- | Information about the specified Amazon WorkSpaces clients.
dcprrsClientPropertiesList :: Lens' DescribeClientPropertiesResponse [ClientPropertiesResult]
dcprrsClientPropertiesList = lens _dcprrsClientPropertiesList (\s a -> s {_dcprrsClientPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
dcprrsResponseStatus :: Lens' DescribeClientPropertiesResponse Int
dcprrsResponseStatus = lens _dcprrsResponseStatus (\s a -> s {_dcprrsResponseStatus = a})

instance NFData DescribeClientPropertiesResponse
