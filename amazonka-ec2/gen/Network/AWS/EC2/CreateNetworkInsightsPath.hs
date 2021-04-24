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
-- Module      : Network.AWS.EC2.CreateNetworkInsightsPath
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a path to analyze for reachability.
--
--
-- Reachability Analyzer enables you to analyze and debug network reachability between two resources in your virtual private cloud (VPC). For more information, see <https://docs.aws.amazon.com/vpc/latest/reachability/ What is Reachability Analyzer> .
module Network.AWS.EC2.CreateNetworkInsightsPath
  ( -- * Creating a Request
    createNetworkInsightsPath,
    CreateNetworkInsightsPath,

    -- * Request Lenses
    cnipnTagSpecifications,
    cnipnDryRun,
    cnipnDestinationIP,
    cnipnSourceIP,
    cnipnDestinationPort,
    cnipnSource,
    cnipnDestination,
    cnipnProtocol,
    cnipnClientToken,

    -- * Destructuring the Response
    createNetworkInsightsPathResponse,
    CreateNetworkInsightsPathResponse,

    -- * Response Lenses
    cniprnrsNetworkInsightsPath,
    cniprnrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createNetworkInsightsPath' smart constructor.
data CreateNetworkInsightsPath = CreateNetworkInsightsPath'
  { _cnipnTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _cnipnDryRun ::
      !(Maybe Bool),
    _cnipnDestinationIP ::
      !(Maybe Text),
    _cnipnSourceIP ::
      !(Maybe Text),
    _cnipnDestinationPort ::
      !(Maybe Nat),
    _cnipnSource ::
      !Text,
    _cnipnDestination ::
      !Text,
    _cnipnProtocol ::
      !Protocol,
    _cnipnClientToken ::
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

-- | Creates a value of 'CreateNetworkInsightsPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnipnTagSpecifications' - The tags to add to the path.
--
-- * 'cnipnDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cnipnDestinationIP' - The IP address of the AWS resource that is the destination of the path.
--
-- * 'cnipnSourceIP' - The IP address of the AWS resource that is the source of the path.
--
-- * 'cnipnDestinationPort' - The destination port.
--
-- * 'cnipnSource' - The AWS resource that is the source of the path.
--
-- * 'cnipnDestination' - The AWS resource that is the destination of the path.
--
-- * 'cnipnProtocol' - The protocol.
--
-- * 'cnipnClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
createNetworkInsightsPath ::
  -- | 'cnipnSource'
  Text ->
  -- | 'cnipnDestination'
  Text ->
  -- | 'cnipnProtocol'
  Protocol ->
  -- | 'cnipnClientToken'
  Text ->
  CreateNetworkInsightsPath
createNetworkInsightsPath
  pSource_
  pDestination_
  pProtocol_
  pClientToken_ =
    CreateNetworkInsightsPath'
      { _cnipnTagSpecifications =
          Nothing,
        _cnipnDryRun = Nothing,
        _cnipnDestinationIP = Nothing,
        _cnipnSourceIP = Nothing,
        _cnipnDestinationPort = Nothing,
        _cnipnSource = pSource_,
        _cnipnDestination = pDestination_,
        _cnipnProtocol = pProtocol_,
        _cnipnClientToken = pClientToken_
      }

-- | The tags to add to the path.
cnipnTagSpecifications :: Lens' CreateNetworkInsightsPath [TagSpecification]
cnipnTagSpecifications = lens _cnipnTagSpecifications (\s a -> s {_cnipnTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cnipnDryRun :: Lens' CreateNetworkInsightsPath (Maybe Bool)
cnipnDryRun = lens _cnipnDryRun (\s a -> s {_cnipnDryRun = a})

-- | The IP address of the AWS resource that is the destination of the path.
cnipnDestinationIP :: Lens' CreateNetworkInsightsPath (Maybe Text)
cnipnDestinationIP = lens _cnipnDestinationIP (\s a -> s {_cnipnDestinationIP = a})

-- | The IP address of the AWS resource that is the source of the path.
cnipnSourceIP :: Lens' CreateNetworkInsightsPath (Maybe Text)
cnipnSourceIP = lens _cnipnSourceIP (\s a -> s {_cnipnSourceIP = a})

-- | The destination port.
cnipnDestinationPort :: Lens' CreateNetworkInsightsPath (Maybe Natural)
cnipnDestinationPort = lens _cnipnDestinationPort (\s a -> s {_cnipnDestinationPort = a}) . mapping _Nat

-- | The AWS resource that is the source of the path.
cnipnSource :: Lens' CreateNetworkInsightsPath Text
cnipnSource = lens _cnipnSource (\s a -> s {_cnipnSource = a})

-- | The AWS resource that is the destination of the path.
cnipnDestination :: Lens' CreateNetworkInsightsPath Text
cnipnDestination = lens _cnipnDestination (\s a -> s {_cnipnDestination = a})

-- | The protocol.
cnipnProtocol :: Lens' CreateNetworkInsightsPath Protocol
cnipnProtocol = lens _cnipnProtocol (\s a -> s {_cnipnProtocol = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
cnipnClientToken :: Lens' CreateNetworkInsightsPath Text
cnipnClientToken = lens _cnipnClientToken (\s a -> s {_cnipnClientToken = a})

instance AWSRequest CreateNetworkInsightsPath where
  type
    Rs CreateNetworkInsightsPath =
      CreateNetworkInsightsPathResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateNetworkInsightsPathResponse'
            <$> (x .@? "networkInsightsPath")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateNetworkInsightsPath

instance NFData CreateNetworkInsightsPath

instance ToHeaders CreateNetworkInsightsPath where
  toHeaders = const mempty

instance ToPath CreateNetworkInsightsPath where
  toPath = const "/"

instance ToQuery CreateNetworkInsightsPath where
  toQuery CreateNetworkInsightsPath' {..} =
    mconcat
      [ "Action"
          =: ("CreateNetworkInsightsPath" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cnipnTagSpecifications
          ),
        "DryRun" =: _cnipnDryRun,
        "DestinationIp" =: _cnipnDestinationIP,
        "SourceIp" =: _cnipnSourceIP,
        "DestinationPort" =: _cnipnDestinationPort,
        "Source" =: _cnipnSource,
        "Destination" =: _cnipnDestination,
        "Protocol" =: _cnipnProtocol,
        "ClientToken" =: _cnipnClientToken
      ]

-- | /See:/ 'createNetworkInsightsPathResponse' smart constructor.
data CreateNetworkInsightsPathResponse = CreateNetworkInsightsPathResponse'
  { _cniprnrsNetworkInsightsPath ::
      !( Maybe
           NetworkInsightsPath
       ),
    _cniprnrsResponseStatus ::
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

-- | Creates a value of 'CreateNetworkInsightsPathResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cniprnrsNetworkInsightsPath' - Information about the path.
--
-- * 'cniprnrsResponseStatus' - -- | The response status code.
createNetworkInsightsPathResponse ::
  -- | 'cniprnrsResponseStatus'
  Int ->
  CreateNetworkInsightsPathResponse
createNetworkInsightsPathResponse pResponseStatus_ =
  CreateNetworkInsightsPathResponse'
    { _cniprnrsNetworkInsightsPath =
        Nothing,
      _cniprnrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the path.
cniprnrsNetworkInsightsPath :: Lens' CreateNetworkInsightsPathResponse (Maybe NetworkInsightsPath)
cniprnrsNetworkInsightsPath = lens _cniprnrsNetworkInsightsPath (\s a -> s {_cniprnrsNetworkInsightsPath = a})

-- | -- | The response status code.
cniprnrsResponseStatus :: Lens' CreateNetworkInsightsPathResponse Int
cniprnrsResponseStatus = lens _cniprnrsResponseStatus (\s a -> s {_cniprnrsResponseStatus = a})

instance NFData CreateNetworkInsightsPathResponse
