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
-- Module      : Network.AWS.EC2.GetLaunchTemplateData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the configuration data of the specified instance. You can use this data to create a launch template.
--
--
-- This action calls on other describe actions to get instance information. Depending on your instance configuration, you may need to allow the following actions in your IAM policy: DescribeSpotInstanceRequests, DescribeInstanceCreditSpecifications, DescribeVolumes, DescribeInstanceAttribute, and DescribeElasticGpus. Or, you can allow @describe*@ depending on your instance requirements.
module Network.AWS.EC2.GetLaunchTemplateData
  ( -- * Creating a Request
    getLaunchTemplateData,
    GetLaunchTemplateData,

    -- * Request Lenses
    gltdDryRun,
    gltdInstanceId,

    -- * Destructuring the Response
    getLaunchTemplateDataResponse,
    GetLaunchTemplateDataResponse,

    -- * Response Lenses
    gltdrrsLaunchTemplateData,
    gltdrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLaunchTemplateData' smart constructor.
data GetLaunchTemplateData = GetLaunchTemplateData'
  { _gltdDryRun ::
      !(Maybe Bool),
    _gltdInstanceId :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetLaunchTemplateData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gltdDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gltdInstanceId' - The ID of the instance.
getLaunchTemplateData ::
  -- | 'gltdInstanceId'
  Text ->
  GetLaunchTemplateData
getLaunchTemplateData pInstanceId_ =
  GetLaunchTemplateData'
    { _gltdDryRun = Nothing,
      _gltdInstanceId = pInstanceId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gltdDryRun :: Lens' GetLaunchTemplateData (Maybe Bool)
gltdDryRun = lens _gltdDryRun (\s a -> s {_gltdDryRun = a})

-- | The ID of the instance.
gltdInstanceId :: Lens' GetLaunchTemplateData Text
gltdInstanceId = lens _gltdInstanceId (\s a -> s {_gltdInstanceId = a})

instance AWSRequest GetLaunchTemplateData where
  type
    Rs GetLaunchTemplateData =
      GetLaunchTemplateDataResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetLaunchTemplateDataResponse'
            <$> (x .@? "launchTemplateData") <*> (pure (fromEnum s))
      )

instance Hashable GetLaunchTemplateData

instance NFData GetLaunchTemplateData

instance ToHeaders GetLaunchTemplateData where
  toHeaders = const mempty

instance ToPath GetLaunchTemplateData where
  toPath = const "/"

instance ToQuery GetLaunchTemplateData where
  toQuery GetLaunchTemplateData' {..} =
    mconcat
      [ "Action" =: ("GetLaunchTemplateData" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _gltdDryRun,
        "InstanceId" =: _gltdInstanceId
      ]

-- | /See:/ 'getLaunchTemplateDataResponse' smart constructor.
data GetLaunchTemplateDataResponse = GetLaunchTemplateDataResponse'
  { _gltdrrsLaunchTemplateData ::
      !( Maybe
           ResponseLaunchTemplateData
       ),
    _gltdrrsResponseStatus ::
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

-- | Creates a value of 'GetLaunchTemplateDataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gltdrrsLaunchTemplateData' - The instance data.
--
-- * 'gltdrrsResponseStatus' - -- | The response status code.
getLaunchTemplateDataResponse ::
  -- | 'gltdrrsResponseStatus'
  Int ->
  GetLaunchTemplateDataResponse
getLaunchTemplateDataResponse pResponseStatus_ =
  GetLaunchTemplateDataResponse'
    { _gltdrrsLaunchTemplateData =
        Nothing,
      _gltdrrsResponseStatus = pResponseStatus_
    }

-- | The instance data.
gltdrrsLaunchTemplateData :: Lens' GetLaunchTemplateDataResponse (Maybe ResponseLaunchTemplateData)
gltdrrsLaunchTemplateData = lens _gltdrrsLaunchTemplateData (\s a -> s {_gltdrrsLaunchTemplateData = a})

-- | -- | The response status code.
gltdrrsResponseStatus :: Lens' GetLaunchTemplateDataResponse Int
gltdrrsResponseStatus = lens _gltdrrsResponseStatus (\s a -> s {_gltdrrsResponseStatus = a})

instance NFData GetLaunchTemplateDataResponse
