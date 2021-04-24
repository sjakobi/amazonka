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
-- Module      : Network.AWS.ElasticBeanstalk.DescribeEnvironmentResources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns AWS resources for this environment.
module Network.AWS.ElasticBeanstalk.DescribeEnvironmentResources
  ( -- * Creating a Request
    describeEnvironmentResources,
    DescribeEnvironmentResources,

    -- * Request Lenses
    derEnvironmentId,
    derEnvironmentName,

    -- * Destructuring the Response
    describeEnvironmentResourcesResponse,
    DescribeEnvironmentResourcesResponse,

    -- * Response Lenses
    derrrsEnvironmentResources,
    derrrsResponseStatus,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to describe the resources in an environment.
--
--
--
-- /See:/ 'describeEnvironmentResources' smart constructor.
data DescribeEnvironmentResources = DescribeEnvironmentResources'
  { _derEnvironmentId ::
      !(Maybe Text),
    _derEnvironmentName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEnvironmentResources' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derEnvironmentId' - The ID of the environment to retrieve AWS resource usage data. Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
--
-- * 'derEnvironmentName' - The name of the environment to retrieve AWS resource usage data. Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
describeEnvironmentResources ::
  DescribeEnvironmentResources
describeEnvironmentResources =
  DescribeEnvironmentResources'
    { _derEnvironmentId =
        Nothing,
      _derEnvironmentName = Nothing
    }

-- | The ID of the environment to retrieve AWS resource usage data. Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
derEnvironmentId :: Lens' DescribeEnvironmentResources (Maybe Text)
derEnvironmentId = lens _derEnvironmentId (\s a -> s {_derEnvironmentId = a})

-- | The name of the environment to retrieve AWS resource usage data. Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
derEnvironmentName :: Lens' DescribeEnvironmentResources (Maybe Text)
derEnvironmentName = lens _derEnvironmentName (\s a -> s {_derEnvironmentName = a})

instance AWSRequest DescribeEnvironmentResources where
  type
    Rs DescribeEnvironmentResources =
      DescribeEnvironmentResourcesResponse
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "DescribeEnvironmentResourcesResult"
      ( \s h x ->
          DescribeEnvironmentResourcesResponse'
            <$> (x .@? "EnvironmentResources")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEnvironmentResources

instance NFData DescribeEnvironmentResources

instance ToHeaders DescribeEnvironmentResources where
  toHeaders = const mempty

instance ToPath DescribeEnvironmentResources where
  toPath = const "/"

instance ToQuery DescribeEnvironmentResources where
  toQuery DescribeEnvironmentResources' {..} =
    mconcat
      [ "Action"
          =: ("DescribeEnvironmentResources" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "EnvironmentId" =: _derEnvironmentId,
        "EnvironmentName" =: _derEnvironmentName
      ]

-- | Result message containing a list of environment resource descriptions.
--
--
--
-- /See:/ 'describeEnvironmentResourcesResponse' smart constructor.
data DescribeEnvironmentResourcesResponse = DescribeEnvironmentResourcesResponse'
  { _derrrsEnvironmentResources ::
      !( Maybe
           EnvironmentResourceDescription
       ),
    _derrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEnvironmentResourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrrsEnvironmentResources' - A list of 'EnvironmentResourceDescription' .
--
-- * 'derrrsResponseStatus' - -- | The response status code.
describeEnvironmentResourcesResponse ::
  -- | 'derrrsResponseStatus'
  Int ->
  DescribeEnvironmentResourcesResponse
describeEnvironmentResourcesResponse pResponseStatus_ =
  DescribeEnvironmentResourcesResponse'
    { _derrrsEnvironmentResources =
        Nothing,
      _derrrsResponseStatus =
        pResponseStatus_
    }

-- | A list of 'EnvironmentResourceDescription' .
derrrsEnvironmentResources :: Lens' DescribeEnvironmentResourcesResponse (Maybe EnvironmentResourceDescription)
derrrsEnvironmentResources = lens _derrrsEnvironmentResources (\s a -> s {_derrrsEnvironmentResources = a})

-- | -- | The response status code.
derrrsResponseStatus :: Lens' DescribeEnvironmentResourcesResponse Int
derrrsResponseStatus = lens _derrrsResponseStatus (\s a -> s {_derrrsResponseStatus = a})

instance NFData DescribeEnvironmentResourcesResponse
