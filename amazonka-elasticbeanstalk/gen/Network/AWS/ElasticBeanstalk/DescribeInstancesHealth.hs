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
-- Module      : Network.AWS.ElasticBeanstalk.DescribeInstancesHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html enhanced health reporting> .
module Network.AWS.ElasticBeanstalk.DescribeInstancesHealth
  ( -- * Creating a Request
    describeInstancesHealth,
    DescribeInstancesHealth,

    -- * Request Lenses
    dihNextToken,
    dihEnvironmentId,
    dihEnvironmentName,
    dihAttributeNames,

    -- * Destructuring the Response
    describeInstancesHealthResponse,
    DescribeInstancesHealthResponse,

    -- * Response Lenses
    dihrrsInstanceHealthList,
    dihrrsNextToken,
    dihrrsRefreshedAt,
    dihrrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Parameters for a call to @DescribeInstancesHealth@ .
--
--
--
-- /See:/ 'describeInstancesHealth' smart constructor.
data DescribeInstancesHealth = DescribeInstancesHealth'
  { _dihNextToken ::
      !(Maybe Text),
    _dihEnvironmentId ::
      !(Maybe Text),
    _dihEnvironmentName ::
      !(Maybe Text),
    _dihAttributeNames ::
      !( Maybe
           [InstancesHealthAttribute]
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

-- | Creates a value of 'DescribeInstancesHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dihNextToken' - Specify the pagination token returned by a previous call.
--
-- * 'dihEnvironmentId' - Specify the AWS Elastic Beanstalk environment by ID.
--
-- * 'dihEnvironmentName' - Specify the AWS Elastic Beanstalk environment by name.
--
-- * 'dihAttributeNames' - Specifies the response elements you wish to receive. To retrieve all attributes, set to @All@ . If no attribute names are specified, returns a list of instances.
describeInstancesHealth ::
  DescribeInstancesHealth
describeInstancesHealth =
  DescribeInstancesHealth'
    { _dihNextToken = Nothing,
      _dihEnvironmentId = Nothing,
      _dihEnvironmentName = Nothing,
      _dihAttributeNames = Nothing
    }

-- | Specify the pagination token returned by a previous call.
dihNextToken :: Lens' DescribeInstancesHealth (Maybe Text)
dihNextToken = lens _dihNextToken (\s a -> s {_dihNextToken = a})

-- | Specify the AWS Elastic Beanstalk environment by ID.
dihEnvironmentId :: Lens' DescribeInstancesHealth (Maybe Text)
dihEnvironmentId = lens _dihEnvironmentId (\s a -> s {_dihEnvironmentId = a})

-- | Specify the AWS Elastic Beanstalk environment by name.
dihEnvironmentName :: Lens' DescribeInstancesHealth (Maybe Text)
dihEnvironmentName = lens _dihEnvironmentName (\s a -> s {_dihEnvironmentName = a})

-- | Specifies the response elements you wish to receive. To retrieve all attributes, set to @All@ . If no attribute names are specified, returns a list of instances.
dihAttributeNames :: Lens' DescribeInstancesHealth [InstancesHealthAttribute]
dihAttributeNames = lens _dihAttributeNames (\s a -> s {_dihAttributeNames = a}) . _Default . _Coerce

instance AWSRequest DescribeInstancesHealth where
  type
    Rs DescribeInstancesHealth =
      DescribeInstancesHealthResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "DescribeInstancesHealthResult"
      ( \s h x ->
          DescribeInstancesHealthResponse'
            <$> ( x .@? "InstanceHealthList" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (x .@? "NextToken")
            <*> (x .@? "RefreshedAt")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstancesHealth

instance NFData DescribeInstancesHealth

instance ToHeaders DescribeInstancesHealth where
  toHeaders = const mempty

instance ToPath DescribeInstancesHealth where
  toPath = const "/"

instance ToQuery DescribeInstancesHealth where
  toQuery DescribeInstancesHealth' {..} =
    mconcat
      [ "Action"
          =: ("DescribeInstancesHealth" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "NextToken" =: _dihNextToken,
        "EnvironmentId" =: _dihEnvironmentId,
        "EnvironmentName" =: _dihEnvironmentName,
        "AttributeNames"
          =: toQuery
            (toQueryList "member" <$> _dihAttributeNames)
      ]

-- | Detailed health information about the Amazon EC2 instances in an AWS Elastic Beanstalk environment.
--
--
--
-- /See:/ 'describeInstancesHealthResponse' smart constructor.
data DescribeInstancesHealthResponse = DescribeInstancesHealthResponse'
  { _dihrrsInstanceHealthList ::
      !( Maybe
           [SingleInstanceHealth]
       ),
    _dihrrsNextToken ::
      !( Maybe
           Text
       ),
    _dihrrsRefreshedAt ::
      !( Maybe
           ISO8601
       ),
    _dihrrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstancesHealthResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dihrrsInstanceHealthList' - Detailed health information about each instance. The output differs slightly between Linux and Windows environments. There is a difference in the members that are supported under the @<CPUUtilization>@ type.
--
-- * 'dihrrsNextToken' - Pagination token for the next page of results, if available.
--
-- * 'dihrrsRefreshedAt' - The date and time that the health information was retrieved.
--
-- * 'dihrrsResponseStatus' - -- | The response status code.
describeInstancesHealthResponse ::
  -- | 'dihrrsResponseStatus'
  Int ->
  DescribeInstancesHealthResponse
describeInstancesHealthResponse pResponseStatus_ =
  DescribeInstancesHealthResponse'
    { _dihrrsInstanceHealthList =
        Nothing,
      _dihrrsNextToken = Nothing,
      _dihrrsRefreshedAt = Nothing,
      _dihrrsResponseStatus = pResponseStatus_
    }

-- | Detailed health information about each instance. The output differs slightly between Linux and Windows environments. There is a difference in the members that are supported under the @<CPUUtilization>@ type.
dihrrsInstanceHealthList :: Lens' DescribeInstancesHealthResponse [SingleInstanceHealth]
dihrrsInstanceHealthList = lens _dihrrsInstanceHealthList (\s a -> s {_dihrrsInstanceHealthList = a}) . _Default . _Coerce

-- | Pagination token for the next page of results, if available.
dihrrsNextToken :: Lens' DescribeInstancesHealthResponse (Maybe Text)
dihrrsNextToken = lens _dihrrsNextToken (\s a -> s {_dihrrsNextToken = a})

-- | The date and time that the health information was retrieved.
dihrrsRefreshedAt :: Lens' DescribeInstancesHealthResponse (Maybe UTCTime)
dihrrsRefreshedAt = lens _dihrrsRefreshedAt (\s a -> s {_dihrrsRefreshedAt = a}) . mapping _Time

-- | -- | The response status code.
dihrrsResponseStatus :: Lens' DescribeInstancesHealthResponse Int
dihrrsResponseStatus = lens _dihrrsResponseStatus (\s a -> s {_dihrrsResponseStatus = a})

instance NFData DescribeInstancesHealthResponse
