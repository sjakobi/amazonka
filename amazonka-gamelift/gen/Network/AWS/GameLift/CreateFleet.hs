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
-- Module      : Network.AWS.GameLift.CreateFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new fleet to run your game servers. whether they are custom game builds or Realtime Servers with game-specific script. A fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can host multiple game sessions. When creating a fleet, you choose the hardware specifications, set some configuration options, and specify the game server to deploy on the new fleet.
--
--
-- To create a new fleet, provide the following: (1) a fleet name, (2) an EC2 instance type and fleet type (spot or on-demand), (3) the build ID for your game build or script ID if using Realtime Servers, and (4) a runtime configuration, which determines how game servers will run on each instance in the fleet.
--
-- If the @CreateFleet@ call is successful, Amazon GameLift performs the following tasks. You can track the process of a fleet by checking the fleet status or by monitoring fleet creation events:
--
--     * Creates a fleet resource. Status: @NEW@ .
--
--     * Begins writing events to the fleet event log, which can be accessed in the Amazon GameLift console.
--
--     * Sets the fleet's target capacity to 1 (desired instances), which triggers Amazon GameLift to start one new EC2 instance.
--
--     * Downloads the game build or Realtime script to the new instance and installs it. Statuses: @DOWNLOADING@ , @VALIDATING@ , @BUILDING@ .
--
--     * Starts launching server processes on the instance. If the fleet is configured to run multiple server processes per instance, Amazon GameLift staggers each process launch by a few seconds. Status: @ACTIVATING@ .
--
--     * Sets the fleet's status to @ACTIVE@ as soon as one server process is ready to host a game session.
--
--
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html Setting Up Fleets>
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation Debug Fleet Creation Issues>
--
-- __Related operations__
--
--     * 'CreateFleet'
--
--     * 'ListFleets'
--
--     * 'DeleteFleet'
--
--     * 'DescribeFleetAttributes'
--
--     * 'UpdateFleetAttributes'
--
--     * 'StartFleetActions' or 'StopFleetActions'
module Network.AWS.GameLift.CreateFleet
  ( -- * Creating a Request
    createFleet,
    CreateFleet,

    -- * Request Lenses
    cfFleetType,
    cfPeerVPCAWSAccountId,
    cfInstanceRoleARN,
    cfCertificateConfiguration,
    cfServerLaunchPath,
    cfServerLaunchParameters,
    cfLogPaths,
    cfNewGameSessionProtectionPolicy,
    cfRuntimeConfiguration,
    cfTags,
    cfEC2InboundPermissions,
    cfDescription,
    cfResourceCreationLimitPolicy,
    cfBuildId,
    cfMetricGroups,
    cfPeerVPCId,
    cfScriptId,
    cfName,
    cfEC2InstanceType,

    -- * Destructuring the Response
    createFleetResponse,
    CreateFleetResponse,

    -- * Response Lenses
    cfrrsFleetAttributes,
    cfrrsResponseStatus,
  )
where

import Network.AWS.GameLift.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input for a request operation.
--
--
--
-- /See:/ 'createFleet' smart constructor.
data CreateFleet = CreateFleet'
  { _cfFleetType ::
      !(Maybe FleetType),
    _cfPeerVPCAWSAccountId :: !(Maybe Text),
    _cfInstanceRoleARN :: !(Maybe Text),
    _cfCertificateConfiguration ::
      !(Maybe CertificateConfiguration),
    _cfServerLaunchPath :: !(Maybe Text),
    _cfServerLaunchParameters :: !(Maybe Text),
    _cfLogPaths :: !(Maybe [Text]),
    _cfNewGameSessionProtectionPolicy ::
      !(Maybe ProtectionPolicy),
    _cfRuntimeConfiguration ::
      !(Maybe RuntimeConfiguration),
    _cfTags :: !(Maybe [Tag]),
    _cfEC2InboundPermissions ::
      !(Maybe [IPPermission]),
    _cfDescription :: !(Maybe Text),
    _cfResourceCreationLimitPolicy ::
      !(Maybe ResourceCreationLimitPolicy),
    _cfBuildId :: !(Maybe Text),
    _cfMetricGroups :: !(Maybe [Text]),
    _cfPeerVPCId :: !(Maybe Text),
    _cfScriptId :: !(Maybe Text),
    _cfName :: !Text,
    _cfEC2InstanceType :: !EC2InstanceType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateFleet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfFleetType' - Indicates whether to use On-Demand instances or Spot instances for this fleet. If empty, the default is @ON_DEMAND@ . Both categories of instances use identical hardware and configurations based on the instance type selected for this fleet. Learn more about <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot On-Demand versus Spot Instances> .
--
-- * 'cfPeerVPCAWSAccountId' - A unique identifier for the AWS account with the VPC that you want to peer your Amazon GameLift fleet with. You can find your account ID in the AWS Management Console under account settings.
--
-- * 'cfInstanceRoleARN' - A unique identifier for an AWS IAM role that manages access to your AWS services. Fleets with an instance role ARN allow applications that are running on the fleet's instances to assume the role. Learn more about using on-box credentials for your game servers at <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html Access external resources from a game server> . To call this operation with instance role ARN, you must have IAM PassRole permissions. See <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-iam-policy-examples.html IAM policy examples for GameLift> .
--
-- * 'cfCertificateConfiguration' - Indicates whether to generate a TLS/SSL certificate for the new fleet. TLS certificates are used for encrypting traffic between game clients and game servers running on GameLift. If this parameter is not specified, the default value, DISABLED, is used. This fleet setting cannot be changed once the fleet is created. Learn more at <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-howitworks.html#gamelift-howitworks-security Securing Client/Server Communication> .  Note: This feature requires the AWS Certificate Manager (ACM) service, which is available in the AWS global partition but not in all other partitions. When working in a partition that does not support this feature, a request for a new fleet with certificate generation results fails with a 4xx unsupported Region error. Valid values include:      * __GENERATED__ - Generate a TLS/SSL certificate for this fleet.     * __DISABLED__ - (default) Do not generate a TLS/SSL certificate for this fleet.
--
-- * 'cfServerLaunchPath' - This parameter is no longer used. Instead, specify a server launch path using the @RuntimeConfiguration@ parameter. Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.
--
-- * 'cfServerLaunchParameters' - This parameter is no longer used. Instead, specify server launch parameters in the @RuntimeConfiguration@ parameter. (Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.)
--
-- * 'cfLogPaths' - This parameter is no longer used. Instead, to specify where Amazon GameLift should store log files once a server process shuts down, use the Amazon GameLift server API @ProcessReady()@ and specify one or more directory paths in @logParameters@ . See more information in the <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process Server API Reference> .
--
-- * 'cfNewGameSessionProtectionPolicy' - A game session protection policy to apply to all instances in this fleet. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy using 'UpdateFleetAttributes' , but this change will only affect sessions created after the policy change. You can also set protection for individual instances using 'UpdateGameSession' .     * __NoProtection__ - The game session can be terminated during a scale-down event.     * __FullProtection__ - If the game session is in an @ACTIVE@ status, it cannot be terminated during a scale-down event.
--
-- * 'cfRuntimeConfiguration' - Instructions for launching server processes on each instance in the fleet. Server processes run either a custom game build executable or a Realtime script. The runtime configuration defines the server executables or launch script file, launch parameters, and the number of processes to run concurrently on each instance. When creating a fleet, the runtime configuration must have at least one server process configuration; otherwise the request fails with an invalid request exception. (This parameter replaces the parameters @ServerLaunchPath@ and @ServerLaunchParameters@ , although requests that contain values for these parameters instead of a runtime configuration will continue to work.) This parameter is required unless the parameters @ServerLaunchPath@ and @ServerLaunchParameters@ are defined. Runtime configuration replaced these parameters, but fleets that use them will continue to work.
--
-- * 'cfTags' - A list of labels to assign to the new fleet resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> in the /AWS General Reference/ . Once the resource is created, you can use 'TagResource' , 'UntagResource' , and 'ListTagsForResource' to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.
--
-- * 'cfEC2InboundPermissions' - Range of IP addresses and port settings that permit inbound traffic to access game sessions that are running on the fleet. For fleets using a custom game build, this parameter is required before game sessions running on the fleet can accept connections. For Realtime Servers fleets, Amazon GameLift automatically sets TCP and UDP ranges for use by the Realtime servers. You can specify multiple permission settings or add more by updating the fleet.
--
-- * 'cfDescription' - A human-readable description of a fleet.
--
-- * 'cfResourceCreationLimitPolicy' - A policy that limits the number of game sessions an individual player can create over a span of time for this fleet.
--
-- * 'cfBuildId' - A unique identifier for a build to be deployed on the new fleet. You can use either the build ID or ARN value. The custom game server build must have been successfully uploaded to Amazon GameLift and be in a @READY@ status. This fleet setting cannot be changed once the fleet is created.
--
-- * 'cfMetricGroups' - The name of an Amazon CloudWatch metric group to add this fleet to. A metric group aggregates the metrics for all fleets in the group. Specify an existing metric group name, or provide a new name to create a new metric group. A fleet can only be included in one metric group at a time.
--
-- * 'cfPeerVPCId' - A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region as your fleet. To look up a VPC ID, use the <https://console.aws.amazon.com/vpc/ VPC Dashboard> in the AWS Management Console. Learn more about VPC peering in <https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html VPC Peering with Amazon GameLift Fleets> .
--
-- * 'cfScriptId' - A unique identifier for a Realtime script to be deployed on the new fleet. You can use either the script ID or ARN value. The Realtime script must have been successfully uploaded to Amazon GameLift. This fleet setting cannot be changed once the fleet is created.
--
-- * 'cfName' - A descriptive label that is associated with a fleet. Fleet names do not need to be unique.
--
-- * 'cfEC2InstanceType' - The name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <http://aws.amazon.com/ec2/instance-types/ Amazon EC2 Instance Types> for detailed descriptions.
createFleet ::
  -- | 'cfName'
  Text ->
  -- | 'cfEC2InstanceType'
  EC2InstanceType ->
  CreateFleet
createFleet pName_ pEC2InstanceType_ =
  CreateFleet'
    { _cfFleetType = Nothing,
      _cfPeerVPCAWSAccountId = Nothing,
      _cfInstanceRoleARN = Nothing,
      _cfCertificateConfiguration = Nothing,
      _cfServerLaunchPath = Nothing,
      _cfServerLaunchParameters = Nothing,
      _cfLogPaths = Nothing,
      _cfNewGameSessionProtectionPolicy = Nothing,
      _cfRuntimeConfiguration = Nothing,
      _cfTags = Nothing,
      _cfEC2InboundPermissions = Nothing,
      _cfDescription = Nothing,
      _cfResourceCreationLimitPolicy = Nothing,
      _cfBuildId = Nothing,
      _cfMetricGroups = Nothing,
      _cfPeerVPCId = Nothing,
      _cfScriptId = Nothing,
      _cfName = pName_,
      _cfEC2InstanceType = pEC2InstanceType_
    }

-- | Indicates whether to use On-Demand instances or Spot instances for this fleet. If empty, the default is @ON_DEMAND@ . Both categories of instances use identical hardware and configurations based on the instance type selected for this fleet. Learn more about <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot On-Demand versus Spot Instances> .
cfFleetType :: Lens' CreateFleet (Maybe FleetType)
cfFleetType = lens _cfFleetType (\s a -> s {_cfFleetType = a})

-- | A unique identifier for the AWS account with the VPC that you want to peer your Amazon GameLift fleet with. You can find your account ID in the AWS Management Console under account settings.
cfPeerVPCAWSAccountId :: Lens' CreateFleet (Maybe Text)
cfPeerVPCAWSAccountId = lens _cfPeerVPCAWSAccountId (\s a -> s {_cfPeerVPCAWSAccountId = a})

-- | A unique identifier for an AWS IAM role that manages access to your AWS services. Fleets with an instance role ARN allow applications that are running on the fleet's instances to assume the role. Learn more about using on-box credentials for your game servers at <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html Access external resources from a game server> . To call this operation with instance role ARN, you must have IAM PassRole permissions. See <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-iam-policy-examples.html IAM policy examples for GameLift> .
cfInstanceRoleARN :: Lens' CreateFleet (Maybe Text)
cfInstanceRoleARN = lens _cfInstanceRoleARN (\s a -> s {_cfInstanceRoleARN = a})

-- | Indicates whether to generate a TLS/SSL certificate for the new fleet. TLS certificates are used for encrypting traffic between game clients and game servers running on GameLift. If this parameter is not specified, the default value, DISABLED, is used. This fleet setting cannot be changed once the fleet is created. Learn more at <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-howitworks.html#gamelift-howitworks-security Securing Client/Server Communication> .  Note: This feature requires the AWS Certificate Manager (ACM) service, which is available in the AWS global partition but not in all other partitions. When working in a partition that does not support this feature, a request for a new fleet with certificate generation results fails with a 4xx unsupported Region error. Valid values include:      * __GENERATED__ - Generate a TLS/SSL certificate for this fleet.     * __DISABLED__ - (default) Do not generate a TLS/SSL certificate for this fleet.
cfCertificateConfiguration :: Lens' CreateFleet (Maybe CertificateConfiguration)
cfCertificateConfiguration = lens _cfCertificateConfiguration (\s a -> s {_cfCertificateConfiguration = a})

-- | This parameter is no longer used. Instead, specify a server launch path using the @RuntimeConfiguration@ parameter. Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.
cfServerLaunchPath :: Lens' CreateFleet (Maybe Text)
cfServerLaunchPath = lens _cfServerLaunchPath (\s a -> s {_cfServerLaunchPath = a})

-- | This parameter is no longer used. Instead, specify server launch parameters in the @RuntimeConfiguration@ parameter. (Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.)
cfServerLaunchParameters :: Lens' CreateFleet (Maybe Text)
cfServerLaunchParameters = lens _cfServerLaunchParameters (\s a -> s {_cfServerLaunchParameters = a})

-- | This parameter is no longer used. Instead, to specify where Amazon GameLift should store log files once a server process shuts down, use the Amazon GameLift server API @ProcessReady()@ and specify one or more directory paths in @logParameters@ . See more information in the <https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process Server API Reference> .
cfLogPaths :: Lens' CreateFleet [Text]
cfLogPaths = lens _cfLogPaths (\s a -> s {_cfLogPaths = a}) . _Default . _Coerce

-- | A game session protection policy to apply to all instances in this fleet. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy using 'UpdateFleetAttributes' , but this change will only affect sessions created after the policy change. You can also set protection for individual instances using 'UpdateGameSession' .     * __NoProtection__ - The game session can be terminated during a scale-down event.     * __FullProtection__ - If the game session is in an @ACTIVE@ status, it cannot be terminated during a scale-down event.
cfNewGameSessionProtectionPolicy :: Lens' CreateFleet (Maybe ProtectionPolicy)
cfNewGameSessionProtectionPolicy = lens _cfNewGameSessionProtectionPolicy (\s a -> s {_cfNewGameSessionProtectionPolicy = a})

-- | Instructions for launching server processes on each instance in the fleet. Server processes run either a custom game build executable or a Realtime script. The runtime configuration defines the server executables or launch script file, launch parameters, and the number of processes to run concurrently on each instance. When creating a fleet, the runtime configuration must have at least one server process configuration; otherwise the request fails with an invalid request exception. (This parameter replaces the parameters @ServerLaunchPath@ and @ServerLaunchParameters@ , although requests that contain values for these parameters instead of a runtime configuration will continue to work.) This parameter is required unless the parameters @ServerLaunchPath@ and @ServerLaunchParameters@ are defined. Runtime configuration replaced these parameters, but fleets that use them will continue to work.
cfRuntimeConfiguration :: Lens' CreateFleet (Maybe RuntimeConfiguration)
cfRuntimeConfiguration = lens _cfRuntimeConfiguration (\s a -> s {_cfRuntimeConfiguration = a})

-- | A list of labels to assign to the new fleet resource. Tags are developer-defined key-value pairs. Tagging AWS resources are useful for resource management, access management and cost allocation. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> in the /AWS General Reference/ . Once the resource is created, you can use 'TagResource' , 'UntagResource' , and 'ListTagsForResource' to add, remove, and view tags. The maximum tag limit may be lower than stated. See the AWS General Reference for actual tagging limits.
cfTags :: Lens' CreateFleet [Tag]
cfTags = lens _cfTags (\s a -> s {_cfTags = a}) . _Default . _Coerce

-- | Range of IP addresses and port settings that permit inbound traffic to access game sessions that are running on the fleet. For fleets using a custom game build, this parameter is required before game sessions running on the fleet can accept connections. For Realtime Servers fleets, Amazon GameLift automatically sets TCP and UDP ranges for use by the Realtime servers. You can specify multiple permission settings or add more by updating the fleet.
cfEC2InboundPermissions :: Lens' CreateFleet [IPPermission]
cfEC2InboundPermissions = lens _cfEC2InboundPermissions (\s a -> s {_cfEC2InboundPermissions = a}) . _Default . _Coerce

-- | A human-readable description of a fleet.
cfDescription :: Lens' CreateFleet (Maybe Text)
cfDescription = lens _cfDescription (\s a -> s {_cfDescription = a})

-- | A policy that limits the number of game sessions an individual player can create over a span of time for this fleet.
cfResourceCreationLimitPolicy :: Lens' CreateFleet (Maybe ResourceCreationLimitPolicy)
cfResourceCreationLimitPolicy = lens _cfResourceCreationLimitPolicy (\s a -> s {_cfResourceCreationLimitPolicy = a})

-- | A unique identifier for a build to be deployed on the new fleet. You can use either the build ID or ARN value. The custom game server build must have been successfully uploaded to Amazon GameLift and be in a @READY@ status. This fleet setting cannot be changed once the fleet is created.
cfBuildId :: Lens' CreateFleet (Maybe Text)
cfBuildId = lens _cfBuildId (\s a -> s {_cfBuildId = a})

-- | The name of an Amazon CloudWatch metric group to add this fleet to. A metric group aggregates the metrics for all fleets in the group. Specify an existing metric group name, or provide a new name to create a new metric group. A fleet can only be included in one metric group at a time.
cfMetricGroups :: Lens' CreateFleet [Text]
cfMetricGroups = lens _cfMetricGroups (\s a -> s {_cfMetricGroups = a}) . _Default . _Coerce

-- | A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region as your fleet. To look up a VPC ID, use the <https://console.aws.amazon.com/vpc/ VPC Dashboard> in the AWS Management Console. Learn more about VPC peering in <https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html VPC Peering with Amazon GameLift Fleets> .
cfPeerVPCId :: Lens' CreateFleet (Maybe Text)
cfPeerVPCId = lens _cfPeerVPCId (\s a -> s {_cfPeerVPCId = a})

-- | A unique identifier for a Realtime script to be deployed on the new fleet. You can use either the script ID or ARN value. The Realtime script must have been successfully uploaded to Amazon GameLift. This fleet setting cannot be changed once the fleet is created.
cfScriptId :: Lens' CreateFleet (Maybe Text)
cfScriptId = lens _cfScriptId (\s a -> s {_cfScriptId = a})

-- | A descriptive label that is associated with a fleet. Fleet names do not need to be unique.
cfName :: Lens' CreateFleet Text
cfName = lens _cfName (\s a -> s {_cfName = a})

-- | The name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See <http://aws.amazon.com/ec2/instance-types/ Amazon EC2 Instance Types> for detailed descriptions.
cfEC2InstanceType :: Lens' CreateFleet EC2InstanceType
cfEC2InstanceType = lens _cfEC2InstanceType (\s a -> s {_cfEC2InstanceType = a})

instance AWSRequest CreateFleet where
  type Rs CreateFleet = CreateFleetResponse
  request = postJSON gameLift
  response =
    receiveJSON
      ( \s h x ->
          CreateFleetResponse'
            <$> (x .?> "FleetAttributes") <*> (pure (fromEnum s))
      )

instance Hashable CreateFleet

instance NFData CreateFleet

instance ToHeaders CreateFleet where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("GameLift.CreateFleet" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateFleet where
  toJSON CreateFleet' {..} =
    object
      ( catMaybes
          [ ("FleetType" .=) <$> _cfFleetType,
            ("PeerVpcAwsAccountId" .=)
              <$> _cfPeerVPCAWSAccountId,
            ("InstanceRoleArn" .=) <$> _cfInstanceRoleARN,
            ("CertificateConfiguration" .=)
              <$> _cfCertificateConfiguration,
            ("ServerLaunchPath" .=) <$> _cfServerLaunchPath,
            ("ServerLaunchParameters" .=)
              <$> _cfServerLaunchParameters,
            ("LogPaths" .=) <$> _cfLogPaths,
            ("NewGameSessionProtectionPolicy" .=)
              <$> _cfNewGameSessionProtectionPolicy,
            ("RuntimeConfiguration" .=)
              <$> _cfRuntimeConfiguration,
            ("Tags" .=) <$> _cfTags,
            ("EC2InboundPermissions" .=)
              <$> _cfEC2InboundPermissions,
            ("Description" .=) <$> _cfDescription,
            ("ResourceCreationLimitPolicy" .=)
              <$> _cfResourceCreationLimitPolicy,
            ("BuildId" .=) <$> _cfBuildId,
            ("MetricGroups" .=) <$> _cfMetricGroups,
            ("PeerVpcId" .=) <$> _cfPeerVPCId,
            ("ScriptId" .=) <$> _cfScriptId,
            Just ("Name" .= _cfName),
            Just ("EC2InstanceType" .= _cfEC2InstanceType)
          ]
      )

instance ToPath CreateFleet where
  toPath = const "/"

instance ToQuery CreateFleet where
  toQuery = const mempty

-- | Represents the returned data in response to a request operation.
--
--
--
-- /See:/ 'createFleetResponse' smart constructor.
data CreateFleetResponse = CreateFleetResponse'
  { _cfrrsFleetAttributes ::
      !(Maybe FleetAttributes),
    _cfrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateFleetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrrsFleetAttributes' - Properties for the newly created fleet.
--
-- * 'cfrrsResponseStatus' - -- | The response status code.
createFleetResponse ::
  -- | 'cfrrsResponseStatus'
  Int ->
  CreateFleetResponse
createFleetResponse pResponseStatus_ =
  CreateFleetResponse'
    { _cfrrsFleetAttributes =
        Nothing,
      _cfrrsResponseStatus = pResponseStatus_
    }

-- | Properties for the newly created fleet.
cfrrsFleetAttributes :: Lens' CreateFleetResponse (Maybe FleetAttributes)
cfrrsFleetAttributes = lens _cfrrsFleetAttributes (\s a -> s {_cfrrsFleetAttributes = a})

-- | -- | The response status code.
cfrrsResponseStatus :: Lens' CreateFleetResponse Int
cfrrsResponseStatus = lens _cfrrsResponseStatus (\s a -> s {_cfrrsResponseStatus = a})

instance NFData CreateFleetResponse
