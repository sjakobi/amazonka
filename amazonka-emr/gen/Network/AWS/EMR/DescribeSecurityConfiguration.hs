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
-- Module      : Network.AWS.EMR.DescribeSecurityConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides the details of a security configuration by returning the configuration JSON.
module Network.AWS.EMR.DescribeSecurityConfiguration
  ( -- * Creating a Request
    describeSecurityConfiguration,
    DescribeSecurityConfiguration,

    -- * Request Lenses
    dName,

    -- * Destructuring the Response
    describeSecurityConfigurationResponse,
    DescribeSecurityConfigurationResponse,

    -- * Response Lenses
    desrsSecurityConfiguration,
    desrsName,
    desrsCreationDateTime,
    desrsResponseStatus,
  )
where

import Network.AWS.EMR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSecurityConfiguration' smart constructor.
newtype DescribeSecurityConfiguration = DescribeSecurityConfiguration'
  { _dName ::
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

-- | Creates a value of 'DescribeSecurityConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dName' - The name of the security configuration.
describeSecurityConfiguration ::
  -- | 'dName'
  Text ->
  DescribeSecurityConfiguration
describeSecurityConfiguration pName_ =
  DescribeSecurityConfiguration' {_dName = pName_}

-- | The name of the security configuration.
dName :: Lens' DescribeSecurityConfiguration Text
dName = lens _dName (\s a -> s {_dName = a})

instance AWSRequest DescribeSecurityConfiguration where
  type
    Rs DescribeSecurityConfiguration =
      DescribeSecurityConfigurationResponse
  request = postJSON emr
  response =
    receiveJSON
      ( \s h x ->
          DescribeSecurityConfigurationResponse'
            <$> (x .?> "SecurityConfiguration")
            <*> (x .?> "Name")
            <*> (x .?> "CreationDateTime")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSecurityConfiguration

instance NFData DescribeSecurityConfiguration

instance ToHeaders DescribeSecurityConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "ElasticMapReduce.DescribeSecurityConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSecurityConfiguration where
  toJSON DescribeSecurityConfiguration' {..} =
    object (catMaybes [Just ("Name" .= _dName)])

instance ToPath DescribeSecurityConfiguration where
  toPath = const "/"

instance ToQuery DescribeSecurityConfiguration where
  toQuery = const mempty

-- | /See:/ 'describeSecurityConfigurationResponse' smart constructor.
data DescribeSecurityConfigurationResponse = DescribeSecurityConfigurationResponse'
  { _desrsSecurityConfiguration ::
      !( Maybe
           Text
       ),
    _desrsName ::
      !( Maybe
           Text
       ),
    _desrsCreationDateTime ::
      !( Maybe
           POSIX
       ),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeSecurityConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsSecurityConfiguration' - The security configuration details in JSON format.
--
-- * 'desrsName' - The name of the security configuration.
--
-- * 'desrsCreationDateTime' - The date and time the security configuration was created
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeSecurityConfigurationResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeSecurityConfigurationResponse
describeSecurityConfigurationResponse
  pResponseStatus_ =
    DescribeSecurityConfigurationResponse'
      { _desrsSecurityConfiguration =
          Nothing,
        _desrsName = Nothing,
        _desrsCreationDateTime = Nothing,
        _desrsResponseStatus =
          pResponseStatus_
      }

-- | The security configuration details in JSON format.
desrsSecurityConfiguration :: Lens' DescribeSecurityConfigurationResponse (Maybe Text)
desrsSecurityConfiguration = lens _desrsSecurityConfiguration (\s a -> s {_desrsSecurityConfiguration = a})

-- | The name of the security configuration.
desrsName :: Lens' DescribeSecurityConfigurationResponse (Maybe Text)
desrsName = lens _desrsName (\s a -> s {_desrsName = a})

-- | The date and time the security configuration was created
desrsCreationDateTime :: Lens' DescribeSecurityConfigurationResponse (Maybe UTCTime)
desrsCreationDateTime = lens _desrsCreationDateTime (\s a -> s {_desrsCreationDateTime = a}) . mapping _Time

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeSecurityConfigurationResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeSecurityConfigurationResponse
