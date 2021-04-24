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
-- Module      : Network.AWS.EC2.CreateTrafficMirrorFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Traffic Mirror filter.
--
--
-- A Traffic Mirror filter is a set of rules that defines the traffic to mirror.
--
-- By default, no traffic is mirrored. To mirror traffic, use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilterRule.htm CreateTrafficMirrorFilterRule> to add Traffic Mirror rules to the filter. The rules you add define what traffic gets mirrored. You can also use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTrafficMirrorFilterNetworkServices.html ModifyTrafficMirrorFilterNetworkServices> to mirror supported network services.
module Network.AWS.EC2.CreateTrafficMirrorFilter
  ( -- * Creating a Request
    createTrafficMirrorFilter,
    CreateTrafficMirrorFilter,

    -- * Request Lenses
    ctmfTagSpecifications,
    ctmfDryRun,
    ctmfDescription,
    ctmfClientToken,

    -- * Destructuring the Response
    createTrafficMirrorFilterResponse,
    CreateTrafficMirrorFilterResponse,

    -- * Response Lenses
    ctmfrrsTrafficMirrorFilter,
    ctmfrrsClientToken,
    ctmfrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTrafficMirrorFilter' smart constructor.
data CreateTrafficMirrorFilter = CreateTrafficMirrorFilter'
  { _ctmfTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _ctmfDryRun ::
      !(Maybe Bool),
    _ctmfDescription ::
      !(Maybe Text),
    _ctmfClientToken ::
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

-- | Creates a value of 'CreateTrafficMirrorFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctmfTagSpecifications' - The tags to assign to a Traffic Mirror filter.
--
-- * 'ctmfDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ctmfDescription' - The description of the Traffic Mirror filter.
--
-- * 'ctmfClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
createTrafficMirrorFilter ::
  CreateTrafficMirrorFilter
createTrafficMirrorFilter =
  CreateTrafficMirrorFilter'
    { _ctmfTagSpecifications =
        Nothing,
      _ctmfDryRun = Nothing,
      _ctmfDescription = Nothing,
      _ctmfClientToken = Nothing
    }

-- | The tags to assign to a Traffic Mirror filter.
ctmfTagSpecifications :: Lens' CreateTrafficMirrorFilter [TagSpecification]
ctmfTagSpecifications = lens _ctmfTagSpecifications (\s a -> s {_ctmfTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ctmfDryRun :: Lens' CreateTrafficMirrorFilter (Maybe Bool)
ctmfDryRun = lens _ctmfDryRun (\s a -> s {_ctmfDryRun = a})

-- | The description of the Traffic Mirror filter.
ctmfDescription :: Lens' CreateTrafficMirrorFilter (Maybe Text)
ctmfDescription = lens _ctmfDescription (\s a -> s {_ctmfDescription = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
ctmfClientToken :: Lens' CreateTrafficMirrorFilter (Maybe Text)
ctmfClientToken = lens _ctmfClientToken (\s a -> s {_ctmfClientToken = a})

instance AWSRequest CreateTrafficMirrorFilter where
  type
    Rs CreateTrafficMirrorFilter =
      CreateTrafficMirrorFilterResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateTrafficMirrorFilterResponse'
            <$> (x .@? "trafficMirrorFilter")
            <*> (x .@? "clientToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateTrafficMirrorFilter

instance NFData CreateTrafficMirrorFilter

instance ToHeaders CreateTrafficMirrorFilter where
  toHeaders = const mempty

instance ToPath CreateTrafficMirrorFilter where
  toPath = const "/"

instance ToQuery CreateTrafficMirrorFilter where
  toQuery CreateTrafficMirrorFilter' {..} =
    mconcat
      [ "Action"
          =: ("CreateTrafficMirrorFilter" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _ctmfTagSpecifications
          ),
        "DryRun" =: _ctmfDryRun,
        "Description" =: _ctmfDescription,
        "ClientToken" =: _ctmfClientToken
      ]

-- | /See:/ 'createTrafficMirrorFilterResponse' smart constructor.
data CreateTrafficMirrorFilterResponse = CreateTrafficMirrorFilterResponse'
  { _ctmfrrsTrafficMirrorFilter ::
      !( Maybe
           TrafficMirrorFilter
       ),
    _ctmfrrsClientToken ::
      !( Maybe
           Text
       ),
    _ctmfrrsResponseStatus ::
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

-- | Creates a value of 'CreateTrafficMirrorFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctmfrrsTrafficMirrorFilter' - Information about the Traffic Mirror filter.
--
-- * 'ctmfrrsClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'ctmfrrsResponseStatus' - -- | The response status code.
createTrafficMirrorFilterResponse ::
  -- | 'ctmfrrsResponseStatus'
  Int ->
  CreateTrafficMirrorFilterResponse
createTrafficMirrorFilterResponse pResponseStatus_ =
  CreateTrafficMirrorFilterResponse'
    { _ctmfrrsTrafficMirrorFilter =
        Nothing,
      _ctmfrrsClientToken = Nothing,
      _ctmfrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the Traffic Mirror filter.
ctmfrrsTrafficMirrorFilter :: Lens' CreateTrafficMirrorFilterResponse (Maybe TrafficMirrorFilter)
ctmfrrsTrafficMirrorFilter = lens _ctmfrrsTrafficMirrorFilter (\s a -> s {_ctmfrrsTrafficMirrorFilter = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
ctmfrrsClientToken :: Lens' CreateTrafficMirrorFilterResponse (Maybe Text)
ctmfrrsClientToken = lens _ctmfrrsClientToken (\s a -> s {_ctmfrrsClientToken = a})

-- | -- | The response status code.
ctmfrrsResponseStatus :: Lens' CreateTrafficMirrorFilterResponse Int
ctmfrrsResponseStatus = lens _ctmfrrsResponseStatus (\s a -> s {_ctmfrrsResponseStatus = a})

instance NFData CreateTrafficMirrorFilterResponse
