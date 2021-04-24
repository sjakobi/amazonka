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
-- Module      : Network.AWS.ElasticBeanstalk.DescribeEnvironmentHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the overall health of the specified environment. The __DescribeEnvironmentHealth__ operation is only available with AWS Elastic Beanstalk Enhanced Health.
module Network.AWS.ElasticBeanstalk.DescribeEnvironmentHealth
  ( -- * Creating a Request
    describeEnvironmentHealth,
    DescribeEnvironmentHealth,

    -- * Request Lenses
    dehEnvironmentId,
    dehEnvironmentName,
    dehAttributeNames,

    -- * Destructuring the Response
    describeEnvironmentHealthResponse,
    DescribeEnvironmentHealthResponse,

    -- * Response Lenses
    dehrrsStatus,
    dehrrsRefreshedAt,
    dehrrsColor,
    dehrrsCauses,
    dehrrsEnvironmentName,
    dehrrsInstancesHealth,
    dehrrsHealthStatus,
    dehrrsApplicationMetrics,
    dehrrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | See the example below to learn how to create a request body.
--
--
--
-- /See:/ 'describeEnvironmentHealth' smart constructor.
data DescribeEnvironmentHealth = DescribeEnvironmentHealth'
  { _dehEnvironmentId ::
      !(Maybe Text),
    _dehEnvironmentName ::
      !(Maybe Text),
    _dehAttributeNames ::
      !( Maybe
           [EnvironmentHealthAttribute]
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEnvironmentHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dehEnvironmentId' - Specify the environment by ID. You must specify either this or an EnvironmentName, or both.
--
-- * 'dehEnvironmentName' - Specify the environment by name. You must specify either this or an EnvironmentName, or both.
--
-- * 'dehAttributeNames' - Specify the response elements to return. To retrieve all attributes, set to @All@ . If no attribute names are specified, returns the name of the environment.
describeEnvironmentHealth ::
  DescribeEnvironmentHealth
describeEnvironmentHealth =
  DescribeEnvironmentHealth'
    { _dehEnvironmentId =
        Nothing,
      _dehEnvironmentName = Nothing,
      _dehAttributeNames = Nothing
    }

-- | Specify the environment by ID. You must specify either this or an EnvironmentName, or both.
dehEnvironmentId :: Lens' DescribeEnvironmentHealth (Maybe Text)
dehEnvironmentId = lens _dehEnvironmentId (\s a -> s {_dehEnvironmentId = a})

-- | Specify the environment by name. You must specify either this or an EnvironmentName, or both.
dehEnvironmentName :: Lens' DescribeEnvironmentHealth (Maybe Text)
dehEnvironmentName = lens _dehEnvironmentName (\s a -> s {_dehEnvironmentName = a})

-- | Specify the response elements to return. To retrieve all attributes, set to @All@ . If no attribute names are specified, returns the name of the environment.
dehAttributeNames :: Lens' DescribeEnvironmentHealth [EnvironmentHealthAttribute]
dehAttributeNames = lens _dehAttributeNames (\s a -> s {_dehAttributeNames = a}) . _Default . _Coerce

instance AWSRequest DescribeEnvironmentHealth where
  type
    Rs DescribeEnvironmentHealth =
      DescribeEnvironmentHealthResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "DescribeEnvironmentHealthResult"
      ( \s h x ->
          DescribeEnvironmentHealthResponse'
            <$> (x .@? "Status")
            <*> (x .@? "RefreshedAt")
            <*> (x .@? "Color")
            <*> ( x .@? "Causes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "EnvironmentName")
            <*> (x .@? "InstancesHealth")
            <*> (x .@? "HealthStatus")
            <*> (x .@? "ApplicationMetrics")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEnvironmentHealth

instance NFData DescribeEnvironmentHealth

instance ToHeaders DescribeEnvironmentHealth where
  toHeaders = const mempty

instance ToPath DescribeEnvironmentHealth where
  toPath = const "/"

instance ToQuery DescribeEnvironmentHealth where
  toQuery DescribeEnvironmentHealth' {..} =
    mconcat
      [ "Action"
          =: ("DescribeEnvironmentHealth" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "EnvironmentId" =: _dehEnvironmentId,
        "EnvironmentName" =: _dehEnvironmentName,
        "AttributeNames"
          =: toQuery
            (toQueryList "member" <$> _dehAttributeNames)
      ]

-- | Health details for an AWS Elastic Beanstalk environment.
--
--
--
-- /See:/ 'describeEnvironmentHealthResponse' smart constructor.
data DescribeEnvironmentHealthResponse = DescribeEnvironmentHealthResponse'
  { _dehrrsStatus ::
      !( Maybe
           EnvironmentHealth
       ),
    _dehrrsRefreshedAt ::
      !( Maybe
           ISO8601
       ),
    _dehrrsColor ::
      !( Maybe
           Text
       ),
    _dehrrsCauses ::
      !( Maybe
           [Text]
       ),
    _dehrrsEnvironmentName ::
      !( Maybe
           Text
       ),
    _dehrrsInstancesHealth ::
      !( Maybe
           InstanceHealthSummary
       ),
    _dehrrsHealthStatus ::
      !( Maybe
           Text
       ),
    _dehrrsApplicationMetrics ::
      !( Maybe
           ApplicationMetrics
       ),
    _dehrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEnvironmentHealthResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dehrrsStatus' - The environment's operational status. @Ready@ , @Launching@ , @Updating@ , @Terminating@ , or @Terminated@ .
--
-- * 'dehrrsRefreshedAt' - The date and time that the health information was retrieved.
--
-- * 'dehrrsColor' - The <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html health color> of the environment.
--
-- * 'dehrrsCauses' - Descriptions of the data that contributed to the environment's current health status.
--
-- * 'dehrrsEnvironmentName' - The environment's name.
--
-- * 'dehrrsInstancesHealth' - Summary health information for the instances in the environment.
--
-- * 'dehrrsHealthStatus' - The <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html health status> of the environment. For example, @Ok@ .
--
-- * 'dehrrsApplicationMetrics' - Application request metrics for the environment.
--
-- * 'dehrrsResponseStatus' - -- | The response status code.
describeEnvironmentHealthResponse ::
  -- | 'dehrrsResponseStatus'
  Int ->
  DescribeEnvironmentHealthResponse
describeEnvironmentHealthResponse pResponseStatus_ =
  DescribeEnvironmentHealthResponse'
    { _dehrrsStatus =
        Nothing,
      _dehrrsRefreshedAt = Nothing,
      _dehrrsColor = Nothing,
      _dehrrsCauses = Nothing,
      _dehrrsEnvironmentName = Nothing,
      _dehrrsInstancesHealth = Nothing,
      _dehrrsHealthStatus = Nothing,
      _dehrrsApplicationMetrics = Nothing,
      _dehrrsResponseStatus = pResponseStatus_
    }

-- | The environment's operational status. @Ready@ , @Launching@ , @Updating@ , @Terminating@ , or @Terminated@ .
dehrrsStatus :: Lens' DescribeEnvironmentHealthResponse (Maybe EnvironmentHealth)
dehrrsStatus = lens _dehrrsStatus (\s a -> s {_dehrrsStatus = a})

-- | The date and time that the health information was retrieved.
dehrrsRefreshedAt :: Lens' DescribeEnvironmentHealthResponse (Maybe UTCTime)
dehrrsRefreshedAt = lens _dehrrsRefreshedAt (\s a -> s {_dehrrsRefreshedAt = a}) . mapping _Time

-- | The <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html health color> of the environment.
dehrrsColor :: Lens' DescribeEnvironmentHealthResponse (Maybe Text)
dehrrsColor = lens _dehrrsColor (\s a -> s {_dehrrsColor = a})

-- | Descriptions of the data that contributed to the environment's current health status.
dehrrsCauses :: Lens' DescribeEnvironmentHealthResponse [Text]
dehrrsCauses = lens _dehrrsCauses (\s a -> s {_dehrrsCauses = a}) . _Default . _Coerce

-- | The environment's name.
dehrrsEnvironmentName :: Lens' DescribeEnvironmentHealthResponse (Maybe Text)
dehrrsEnvironmentName = lens _dehrrsEnvironmentName (\s a -> s {_dehrrsEnvironmentName = a})

-- | Summary health information for the instances in the environment.
dehrrsInstancesHealth :: Lens' DescribeEnvironmentHealthResponse (Maybe InstanceHealthSummary)
dehrrsInstancesHealth = lens _dehrrsInstancesHealth (\s a -> s {_dehrrsInstancesHealth = a})

-- | The <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html health status> of the environment. For example, @Ok@ .
dehrrsHealthStatus :: Lens' DescribeEnvironmentHealthResponse (Maybe Text)
dehrrsHealthStatus = lens _dehrrsHealthStatus (\s a -> s {_dehrrsHealthStatus = a})

-- | Application request metrics for the environment.
dehrrsApplicationMetrics :: Lens' DescribeEnvironmentHealthResponse (Maybe ApplicationMetrics)
dehrrsApplicationMetrics = lens _dehrrsApplicationMetrics (\s a -> s {_dehrrsApplicationMetrics = a})

-- | -- | The response status code.
dehrrsResponseStatus :: Lens' DescribeEnvironmentHealthResponse Int
dehrrsResponseStatus = lens _dehrrsResponseStatus (\s a -> s {_dehrrsResponseStatus = a})

instance NFData DescribeEnvironmentHealthResponse
