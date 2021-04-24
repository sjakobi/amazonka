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
-- Module      : Network.AWS.Route53AutoNaming.GetInstancesHealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current health status (@Healthy@ , @Unhealthy@ , or @Unknown@ ) of one or more instances that are associated with a specified service.
module Network.AWS.Route53AutoNaming.GetInstancesHealthStatus
  ( -- * Creating a Request
    getInstancesHealthStatus,
    GetInstancesHealthStatus,

    -- * Request Lenses
    gihsNextToken,
    gihsMaxResults,
    gihsInstances,
    gihsServiceId,

    -- * Destructuring the Response
    getInstancesHealthStatusResponse,
    GetInstancesHealthStatusResponse,

    -- * Response Lenses
    gihsrrsStatus,
    gihsrrsNextToken,
    gihsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53AutoNaming.Types

-- | /See:/ 'getInstancesHealthStatus' smart constructor.
data GetInstancesHealthStatus = GetInstancesHealthStatus'
  { _gihsNextToken ::
      !(Maybe Text),
    _gihsMaxResults ::
      !(Maybe Nat),
    _gihsInstances ::
      !(Maybe (List1 Text)),
    _gihsServiceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetInstancesHealthStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gihsNextToken' - For the first @GetInstancesHealthStatus@ request, omit this value. If more than @MaxResults@ instances match the specified criteria, you can submit another @GetInstancesHealthStatus@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
--
-- * 'gihsMaxResults' - The maximum number of instances that you want AWS Cloud Map to return in the response to a @GetInstancesHealthStatus@ request. If you don't specify a value for @MaxResults@ , AWS Cloud Map returns up to 100 instances.
--
-- * 'gihsInstances' - An array that contains the IDs of all the instances that you want to get the health status for. If you omit @Instances@ , AWS Cloud Map returns the health status for all the instances that are associated with the specified service.
--
-- * 'gihsServiceId' - The ID of the service that the instance is associated with.
getInstancesHealthStatus ::
  -- | 'gihsServiceId'
  Text ->
  GetInstancesHealthStatus
getInstancesHealthStatus pServiceId_ =
  GetInstancesHealthStatus'
    { _gihsNextToken = Nothing,
      _gihsMaxResults = Nothing,
      _gihsInstances = Nothing,
      _gihsServiceId = pServiceId_
    }

-- | For the first @GetInstancesHealthStatus@ request, omit this value. If more than @MaxResults@ instances match the specified criteria, you can submit another @GetInstancesHealthStatus@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
gihsNextToken :: Lens' GetInstancesHealthStatus (Maybe Text)
gihsNextToken = lens _gihsNextToken (\s a -> s {_gihsNextToken = a})

-- | The maximum number of instances that you want AWS Cloud Map to return in the response to a @GetInstancesHealthStatus@ request. If you don't specify a value for @MaxResults@ , AWS Cloud Map returns up to 100 instances.
gihsMaxResults :: Lens' GetInstancesHealthStatus (Maybe Natural)
gihsMaxResults = lens _gihsMaxResults (\s a -> s {_gihsMaxResults = a}) . mapping _Nat

-- | An array that contains the IDs of all the instances that you want to get the health status for. If you omit @Instances@ , AWS Cloud Map returns the health status for all the instances that are associated with the specified service.
gihsInstances :: Lens' GetInstancesHealthStatus (Maybe (NonEmpty Text))
gihsInstances = lens _gihsInstances (\s a -> s {_gihsInstances = a}) . mapping _List1

-- | The ID of the service that the instance is associated with.
gihsServiceId :: Lens' GetInstancesHealthStatus Text
gihsServiceId = lens _gihsServiceId (\s a -> s {_gihsServiceId = a})

instance AWSRequest GetInstancesHealthStatus where
  type
    Rs GetInstancesHealthStatus =
      GetInstancesHealthStatusResponse
  request = postJSON route53AutoNaming
  response =
    receiveJSON
      ( \s h x ->
          GetInstancesHealthStatusResponse'
            <$> (x .?> "Status" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable GetInstancesHealthStatus

instance NFData GetInstancesHealthStatus

instance ToHeaders GetInstancesHealthStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53AutoNaming_v20170314.GetInstancesHealthStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetInstancesHealthStatus where
  toJSON GetInstancesHealthStatus' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gihsNextToken,
            ("MaxResults" .=) <$> _gihsMaxResults,
            ("Instances" .=) <$> _gihsInstances,
            Just ("ServiceId" .= _gihsServiceId)
          ]
      )

instance ToPath GetInstancesHealthStatus where
  toPath = const "/"

instance ToQuery GetInstancesHealthStatus where
  toQuery = const mempty

-- | /See:/ 'getInstancesHealthStatusResponse' smart constructor.
data GetInstancesHealthStatusResponse = GetInstancesHealthStatusResponse'
  { _gihsrrsStatus ::
      !( Maybe
           ( Map
               Text
               HealthStatus
           )
       ),
    _gihsrrsNextToken ::
      !( Maybe
           Text
       ),
    _gihsrrsResponseStatus ::
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

-- | Creates a value of 'GetInstancesHealthStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gihsrrsStatus' - A complex type that contains the IDs and the health status of the instances that you specified in the @GetInstancesHealthStatus@ request.
--
-- * 'gihsrrsNextToken' - If more than @MaxResults@ instances match the specified criteria, you can submit another @GetInstancesHealthStatus@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
--
-- * 'gihsrrsResponseStatus' - -- | The response status code.
getInstancesHealthStatusResponse ::
  -- | 'gihsrrsResponseStatus'
  Int ->
  GetInstancesHealthStatusResponse
getInstancesHealthStatusResponse pResponseStatus_ =
  GetInstancesHealthStatusResponse'
    { _gihsrrsStatus =
        Nothing,
      _gihsrrsNextToken = Nothing,
      _gihsrrsResponseStatus = pResponseStatus_
    }

-- | A complex type that contains the IDs and the health status of the instances that you specified in the @GetInstancesHealthStatus@ request.
gihsrrsStatus :: Lens' GetInstancesHealthStatusResponse (HashMap Text HealthStatus)
gihsrrsStatus = lens _gihsrrsStatus (\s a -> s {_gihsrrsStatus = a}) . _Default . _Map

-- | If more than @MaxResults@ instances match the specified criteria, you can submit another @GetInstancesHealthStatus@ request to get the next group of results. Specify the value of @NextToken@ from the previous response in the next request.
gihsrrsNextToken :: Lens' GetInstancesHealthStatusResponse (Maybe Text)
gihsrrsNextToken = lens _gihsrrsNextToken (\s a -> s {_gihsrrsNextToken = a})

-- | -- | The response status code.
gihsrrsResponseStatus :: Lens' GetInstancesHealthStatusResponse Int
gihsrrsResponseStatus = lens _gihsrrsResponseStatus (\s a -> s {_gihsrrsResponseStatus = a})

instance NFData GetInstancesHealthStatusResponse
