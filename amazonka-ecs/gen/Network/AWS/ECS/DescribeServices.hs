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
-- Module      : Network.AWS.ECS.DescribeServices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified services running in your cluster.
module Network.AWS.ECS.DescribeServices
  ( -- * Creating a Request
    describeServices,
    DescribeServices,

    -- * Request Lenses
    dssInclude,
    dssCluster,
    dssServices,

    -- * Destructuring the Response
    describeServicesResponse,
    DescribeServicesResponse,

    -- * Response Lenses
    dsrsrsServices,
    dsrsrsFailures,
    dsrsrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeServices' smart constructor.
data DescribeServices = DescribeServices'
  { _dssInclude ::
      !(Maybe [ServiceField]),
    _dssCluster :: !(Maybe Text),
    _dssServices :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeServices' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dssInclude' - Specifies whether you want to see the resource tags for the service. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
--
-- * 'dssCluster' - The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the service or services you are describing were launched in any cluster other than the default cluster.
--
-- * 'dssServices' - A list of services to describe. You may specify up to 10 services to describe in a single operation.
describeServices ::
  DescribeServices
describeServices =
  DescribeServices'
    { _dssInclude = Nothing,
      _dssCluster = Nothing,
      _dssServices = mempty
    }

-- | Specifies whether you want to see the resource tags for the service. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
dssInclude :: Lens' DescribeServices [ServiceField]
dssInclude = lens _dssInclude (\s a -> s {_dssInclude = a}) . _Default . _Coerce

-- | The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the service or services you are describing were launched in any cluster other than the default cluster.
dssCluster :: Lens' DescribeServices (Maybe Text)
dssCluster = lens _dssCluster (\s a -> s {_dssCluster = a})

-- | A list of services to describe. You may specify up to 10 services to describe in a single operation.
dssServices :: Lens' DescribeServices [Text]
dssServices = lens _dssServices (\s a -> s {_dssServices = a}) . _Coerce

instance AWSRequest DescribeServices where
  type Rs DescribeServices = DescribeServicesResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DescribeServicesResponse'
            <$> (x .?> "services" .!@ mempty)
            <*> (x .?> "failures" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeServices

instance NFData DescribeServices

instance ToHeaders DescribeServices where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.DescribeServices" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeServices where
  toJSON DescribeServices' {..} =
    object
      ( catMaybes
          [ ("include" .=) <$> _dssInclude,
            ("cluster" .=) <$> _dssCluster,
            Just ("services" .= _dssServices)
          ]
      )

instance ToPath DescribeServices where
  toPath = const "/"

instance ToQuery DescribeServices where
  toQuery = const mempty

-- | /See:/ 'describeServicesResponse' smart constructor.
data DescribeServicesResponse = DescribeServicesResponse'
  { _dsrsrsServices ::
      !( Maybe
           [ContainerService]
       ),
    _dsrsrsFailures ::
      !(Maybe [Failure]),
    _dsrsrsResponseStatus ::
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

-- | Creates a value of 'DescribeServicesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrsrsServices' - The list of services described.
--
-- * 'dsrsrsFailures' - Any failures associated with the call.
--
-- * 'dsrsrsResponseStatus' - -- | The response status code.
describeServicesResponse ::
  -- | 'dsrsrsResponseStatus'
  Int ->
  DescribeServicesResponse
describeServicesResponse pResponseStatus_ =
  DescribeServicesResponse'
    { _dsrsrsServices =
        Nothing,
      _dsrsrsFailures = Nothing,
      _dsrsrsResponseStatus = pResponseStatus_
    }

-- | The list of services described.
dsrsrsServices :: Lens' DescribeServicesResponse [ContainerService]
dsrsrsServices = lens _dsrsrsServices (\s a -> s {_dsrsrsServices = a}) . _Default . _Coerce

-- | Any failures associated with the call.
dsrsrsFailures :: Lens' DescribeServicesResponse [Failure]
dsrsrsFailures = lens _dsrsrsFailures (\s a -> s {_dsrsrsFailures = a}) . _Default . _Coerce

-- | -- | The response status code.
dsrsrsResponseStatus :: Lens' DescribeServicesResponse Int
dsrsrsResponseStatus = lens _dsrsrsResponseStatus (\s a -> s {_dsrsrsResponseStatus = a})

instance NFData DescribeServicesResponse
