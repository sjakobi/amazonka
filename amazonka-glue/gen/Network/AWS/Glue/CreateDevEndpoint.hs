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
-- Module      : Network.AWS.Glue.CreateDevEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new development endpoint.
module Network.AWS.Glue.CreateDevEndpoint
  ( -- * Creating a Request
    createDevEndpoint,
    CreateDevEndpoint,

    -- * Request Lenses
    cdeSecurityGroupIds,
    cdeSecurityConfiguration,
    cdePublicKey,
    cdeExtraPythonLibsS3Path,
    cdeNumberOfWorkers,
    cdeGlueVersion,
    cdeTags,
    cdeNumberOfNodes,
    cdeWorkerType,
    cdeSubnetId,
    cdeArguments,
    cdePublicKeys,
    cdeExtraJARsS3Path,
    cdeEndpointName,
    cdeRoleARN,

    -- * Destructuring the Response
    createDevEndpointResponse,
    CreateDevEndpointResponse,

    -- * Response Lenses
    cderrsSecurityGroupIds,
    cderrsStatus,
    cderrsEndpointName,
    cderrsRoleARN,
    cderrsYarnEndpointAddress,
    cderrsSecurityConfiguration,
    cderrsCreatedTimestamp,
    cderrsExtraPythonLibsS3Path,
    cderrsNumberOfWorkers,
    cderrsZeppelinRemoteSparkInterpreterPort,
    cderrsAvailabilityZone,
    cderrsFailureReason,
    cderrsGlueVersion,
    cderrsNumberOfNodes,
    cderrsWorkerType,
    cderrsSubnetId,
    cderrsVPCId,
    cderrsArguments,
    cderrsExtraJARsS3Path,
    cderrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDevEndpoint' smart constructor.
data CreateDevEndpoint = CreateDevEndpoint'
  { _cdeSecurityGroupIds ::
      !(Maybe [Text]),
    _cdeSecurityConfiguration ::
      !(Maybe Text),
    _cdePublicKey :: !(Maybe Text),
    _cdeExtraPythonLibsS3Path ::
      !(Maybe Text),
    _cdeNumberOfWorkers :: !(Maybe Int),
    _cdeGlueVersion :: !(Maybe Text),
    _cdeTags ::
      !(Maybe (Map Text Text)),
    _cdeNumberOfNodes :: !(Maybe Int),
    _cdeWorkerType ::
      !(Maybe WorkerType),
    _cdeSubnetId :: !(Maybe Text),
    _cdeArguments ::
      !(Maybe (Map Text Text)),
    _cdePublicKeys :: !(Maybe [Text]),
    _cdeExtraJARsS3Path ::
      !(Maybe Text),
    _cdeEndpointName :: !Text,
    _cdeRoleARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDevEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdeSecurityGroupIds' - Security group IDs for the security groups to be used by the new @DevEndpoint@ .
--
-- * 'cdeSecurityConfiguration' - The name of the @SecurityConfiguration@ structure to be used with this @DevEndpoint@ .
--
-- * 'cdePublicKey' - The public key to be used by this @DevEndpoint@ for authentication. This attribute is provided for backward compatibility because the recommended attribute to use is public keys.
--
-- * 'cdeExtraPythonLibsS3Path' - The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in your @DevEndpoint@ . Multiple values must be complete paths separated by a comma.
--
-- * 'cdeNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated to the development endpoint. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
--
-- * 'cdeGlueVersion' - Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Development endpoints that are created without specifying a Glue version default to Glue 0.9. You can specify a version of Python support for development endpoints by using the @Arguments@ parameter in the @CreateDevEndpoint@ or @UpdateDevEndpoint@ APIs. If no arguments are provided, the version defaults to Python 2.
--
-- * 'cdeTags' - The tags to use with this DevEndpoint. You may use tags to limit access to the DevEndpoint. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
--
-- * 'cdeNumberOfNodes' - The number of AWS Glue Data Processing Units (DPUs) to allocate to this @DevEndpoint@ .
--
-- * 'cdeWorkerType' - The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs. Known issue: when a development endpoint is created with the @G.2X@ @WorkerType@ configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
--
-- * 'cdeSubnetId' - The subnet ID for the new @DevEndpoint@ to use.
--
-- * 'cdeArguments' - A map of arguments used to configure the @DevEndpoint@ .
--
-- * 'cdePublicKeys' - A list of public keys to be used by the development endpoints for authentication. The use of this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.
--
-- * 'cdeExtraJARsS3Path' - The path to one or more Java @.jar@ files in an S3 bucket that should be loaded in your @DevEndpoint@ .
--
-- * 'cdeEndpointName' - The name to be assigned to the new @DevEndpoint@ .
--
-- * 'cdeRoleARN' - The IAM role for the @DevEndpoint@ .
createDevEndpoint ::
  -- | 'cdeEndpointName'
  Text ->
  -- | 'cdeRoleARN'
  Text ->
  CreateDevEndpoint
createDevEndpoint pEndpointName_ pRoleARN_ =
  CreateDevEndpoint'
    { _cdeSecurityGroupIds = Nothing,
      _cdeSecurityConfiguration = Nothing,
      _cdePublicKey = Nothing,
      _cdeExtraPythonLibsS3Path = Nothing,
      _cdeNumberOfWorkers = Nothing,
      _cdeGlueVersion = Nothing,
      _cdeTags = Nothing,
      _cdeNumberOfNodes = Nothing,
      _cdeWorkerType = Nothing,
      _cdeSubnetId = Nothing,
      _cdeArguments = Nothing,
      _cdePublicKeys = Nothing,
      _cdeExtraJARsS3Path = Nothing,
      _cdeEndpointName = pEndpointName_,
      _cdeRoleARN = pRoleARN_
    }

-- | Security group IDs for the security groups to be used by the new @DevEndpoint@ .
cdeSecurityGroupIds :: Lens' CreateDevEndpoint [Text]
cdeSecurityGroupIds = lens _cdeSecurityGroupIds (\s a -> s {_cdeSecurityGroupIds = a}) . _Default . _Coerce

-- | The name of the @SecurityConfiguration@ structure to be used with this @DevEndpoint@ .
cdeSecurityConfiguration :: Lens' CreateDevEndpoint (Maybe Text)
cdeSecurityConfiguration = lens _cdeSecurityConfiguration (\s a -> s {_cdeSecurityConfiguration = a})

-- | The public key to be used by this @DevEndpoint@ for authentication. This attribute is provided for backward compatibility because the recommended attribute to use is public keys.
cdePublicKey :: Lens' CreateDevEndpoint (Maybe Text)
cdePublicKey = lens _cdePublicKey (\s a -> s {_cdePublicKey = a})

-- | The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in your @DevEndpoint@ . Multiple values must be complete paths separated by a comma.
cdeExtraPythonLibsS3Path :: Lens' CreateDevEndpoint (Maybe Text)
cdeExtraPythonLibsS3Path = lens _cdeExtraPythonLibsS3Path (\s a -> s {_cdeExtraPythonLibsS3Path = a})

-- | The number of workers of a defined @workerType@ that are allocated to the development endpoint. The maximum number of workers you can define are 299 for @G.1X@ , and 149 for @G.2X@ .
cdeNumberOfWorkers :: Lens' CreateDevEndpoint (Maybe Int)
cdeNumberOfWorkers = lens _cdeNumberOfWorkers (\s a -> s {_cdeNumberOfWorkers = a})

-- | Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints.  For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <https://docs.aws.amazon.com/glue/latest/dg/add-job.html Glue version> in the developer guide. Development endpoints that are created without specifying a Glue version default to Glue 0.9. You can specify a version of Python support for development endpoints by using the @Arguments@ parameter in the @CreateDevEndpoint@ or @UpdateDevEndpoint@ APIs. If no arguments are provided, the version defaults to Python 2.
cdeGlueVersion :: Lens' CreateDevEndpoint (Maybe Text)
cdeGlueVersion = lens _cdeGlueVersion (\s a -> s {_cdeGlueVersion = a})

-- | The tags to use with this DevEndpoint. You may use tags to limit access to the DevEndpoint. For more information about tags in AWS Glue, see <https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html AWS Tags in AWS Glue> in the developer guide.
cdeTags :: Lens' CreateDevEndpoint (HashMap Text Text)
cdeTags = lens _cdeTags (\s a -> s {_cdeTags = a}) . _Default . _Map

-- | The number of AWS Glue Data Processing Units (DPUs) to allocate to this @DevEndpoint@ .
cdeNumberOfNodes :: Lens' CreateDevEndpoint (Maybe Int)
cdeNumberOfNodes = lens _cdeNumberOfNodes (\s a -> s {_cdeNumberOfNodes = a})

-- | The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.     * For the @Standard@ worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.     * For the @G.1X@ worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.     * For the @G.2X@ worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs. Known issue: when a development endpoint is created with the @G.2X@ @WorkerType@ configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk.
cdeWorkerType :: Lens' CreateDevEndpoint (Maybe WorkerType)
cdeWorkerType = lens _cdeWorkerType (\s a -> s {_cdeWorkerType = a})

-- | The subnet ID for the new @DevEndpoint@ to use.
cdeSubnetId :: Lens' CreateDevEndpoint (Maybe Text)
cdeSubnetId = lens _cdeSubnetId (\s a -> s {_cdeSubnetId = a})

-- | A map of arguments used to configure the @DevEndpoint@ .
cdeArguments :: Lens' CreateDevEndpoint (HashMap Text Text)
cdeArguments = lens _cdeArguments (\s a -> s {_cdeArguments = a}) . _Default . _Map

-- | A list of public keys to be used by the development endpoints for authentication. The use of this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.
cdePublicKeys :: Lens' CreateDevEndpoint [Text]
cdePublicKeys = lens _cdePublicKeys (\s a -> s {_cdePublicKeys = a}) . _Default . _Coerce

-- | The path to one or more Java @.jar@ files in an S3 bucket that should be loaded in your @DevEndpoint@ .
cdeExtraJARsS3Path :: Lens' CreateDevEndpoint (Maybe Text)
cdeExtraJARsS3Path = lens _cdeExtraJARsS3Path (\s a -> s {_cdeExtraJARsS3Path = a})

-- | The name to be assigned to the new @DevEndpoint@ .
cdeEndpointName :: Lens' CreateDevEndpoint Text
cdeEndpointName = lens _cdeEndpointName (\s a -> s {_cdeEndpointName = a})

-- | The IAM role for the @DevEndpoint@ .
cdeRoleARN :: Lens' CreateDevEndpoint Text
cdeRoleARN = lens _cdeRoleARN (\s a -> s {_cdeRoleARN = a})

instance AWSRequest CreateDevEndpoint where
  type Rs CreateDevEndpoint = CreateDevEndpointResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          CreateDevEndpointResponse'
            <$> (x .?> "SecurityGroupIds" .!@ mempty)
            <*> (x .?> "Status")
            <*> (x .?> "EndpointName")
            <*> (x .?> "RoleArn")
            <*> (x .?> "YarnEndpointAddress")
            <*> (x .?> "SecurityConfiguration")
            <*> (x .?> "CreatedTimestamp")
            <*> (x .?> "ExtraPythonLibsS3Path")
            <*> (x .?> "NumberOfWorkers")
            <*> (x .?> "ZeppelinRemoteSparkInterpreterPort")
            <*> (x .?> "AvailabilityZone")
            <*> (x .?> "FailureReason")
            <*> (x .?> "GlueVersion")
            <*> (x .?> "NumberOfNodes")
            <*> (x .?> "WorkerType")
            <*> (x .?> "SubnetId")
            <*> (x .?> "VpcId")
            <*> (x .?> "Arguments" .!@ mempty)
            <*> (x .?> "ExtraJarsS3Path")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDevEndpoint

instance NFData CreateDevEndpoint

instance ToHeaders CreateDevEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.CreateDevEndpoint" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDevEndpoint where
  toJSON CreateDevEndpoint' {..} =
    object
      ( catMaybes
          [ ("SecurityGroupIds" .=) <$> _cdeSecurityGroupIds,
            ("SecurityConfiguration" .=)
              <$> _cdeSecurityConfiguration,
            ("PublicKey" .=) <$> _cdePublicKey,
            ("ExtraPythonLibsS3Path" .=)
              <$> _cdeExtraPythonLibsS3Path,
            ("NumberOfWorkers" .=) <$> _cdeNumberOfWorkers,
            ("GlueVersion" .=) <$> _cdeGlueVersion,
            ("Tags" .=) <$> _cdeTags,
            ("NumberOfNodes" .=) <$> _cdeNumberOfNodes,
            ("WorkerType" .=) <$> _cdeWorkerType,
            ("SubnetId" .=) <$> _cdeSubnetId,
            ("Arguments" .=) <$> _cdeArguments,
            ("PublicKeys" .=) <$> _cdePublicKeys,
            ("ExtraJarsS3Path" .=) <$> _cdeExtraJARsS3Path,
            Just ("EndpointName" .= _cdeEndpointName),
            Just ("RoleArn" .= _cdeRoleARN)
          ]
      )

instance ToPath CreateDevEndpoint where
  toPath = const "/"

instance ToQuery CreateDevEndpoint where
  toQuery = const mempty

-- | /See:/ 'createDevEndpointResponse' smart constructor.
data CreateDevEndpointResponse = CreateDevEndpointResponse'
  { _cderrsSecurityGroupIds ::
      !(Maybe [Text]),
    _cderrsStatus ::
      !(Maybe Text),
    _cderrsEndpointName ::
      !(Maybe Text),
    _cderrsRoleARN ::
      !(Maybe Text),
    _cderrsYarnEndpointAddress ::
      !(Maybe Text),
    _cderrsSecurityConfiguration ::
      !(Maybe Text),
    _cderrsCreatedTimestamp ::
      !(Maybe POSIX),
    _cderrsExtraPythonLibsS3Path ::
      !(Maybe Text),
    _cderrsNumberOfWorkers ::
      !(Maybe Int),
    _cderrsZeppelinRemoteSparkInterpreterPort ::
      !(Maybe Int),
    _cderrsAvailabilityZone ::
      !(Maybe Text),
    _cderrsFailureReason ::
      !(Maybe Text),
    _cderrsGlueVersion ::
      !(Maybe Text),
    _cderrsNumberOfNodes ::
      !(Maybe Int),
    _cderrsWorkerType ::
      !(Maybe WorkerType),
    _cderrsSubnetId ::
      !(Maybe Text),
    _cderrsVPCId ::
      !(Maybe Text),
    _cderrsArguments ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _cderrsExtraJARsS3Path ::
      !(Maybe Text),
    _cderrsResponseStatus ::
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

-- | Creates a value of 'CreateDevEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cderrsSecurityGroupIds' - The security groups assigned to the new @DevEndpoint@ .
--
-- * 'cderrsStatus' - The current status of the new @DevEndpoint@ .
--
-- * 'cderrsEndpointName' - The name assigned to the new @DevEndpoint@ .
--
-- * 'cderrsRoleARN' - The Amazon Resource Name (ARN) of the role assigned to the new @DevEndpoint@ .
--
-- * 'cderrsYarnEndpointAddress' - The address of the YARN endpoint used by this @DevEndpoint@ .
--
-- * 'cderrsSecurityConfiguration' - The name of the @SecurityConfiguration@ structure being used with this @DevEndpoint@ .
--
-- * 'cderrsCreatedTimestamp' - The point in time at which this @DevEndpoint@ was created.
--
-- * 'cderrsExtraPythonLibsS3Path' - The paths to one or more Python libraries in an S3 bucket that will be loaded in your @DevEndpoint@ .
--
-- * 'cderrsNumberOfWorkers' - The number of workers of a defined @workerType@ that are allocated to the development endpoint.
--
-- * 'cderrsZeppelinRemoteSparkInterpreterPort' - The Apache Zeppelin port for the remote Apache Spark interpreter.
--
-- * 'cderrsAvailabilityZone' - The AWS Availability Zone where this @DevEndpoint@ is located.
--
-- * 'cderrsFailureReason' - The reason for a current failure in this @DevEndpoint@ .
--
-- * 'cderrsGlueVersion' - Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints.
--
-- * 'cderrsNumberOfNodes' - The number of AWS Glue Data Processing Units (DPUs) allocated to this DevEndpoint.
--
-- * 'cderrsWorkerType' - The type of predefined worker that is allocated to the development endpoint. May be a value of Standard, G.1X, or G.2X.
--
-- * 'cderrsSubnetId' - The subnet ID assigned to the new @DevEndpoint@ .
--
-- * 'cderrsVPCId' - The ID of the virtual private cloud (VPC) used by this @DevEndpoint@ .
--
-- * 'cderrsArguments' - The map of arguments used to configure this @DevEndpoint@ . Valid arguments are:     * @"--enable-glue-datacatalog": ""@      * @"GLUE_PYTHON_VERSION": "3"@      * @"GLUE_PYTHON_VERSION": "2"@  You can specify a version of Python support for development endpoints by using the @Arguments@ parameter in the @CreateDevEndpoint@ or @UpdateDevEndpoint@ APIs. If no arguments are provided, the version defaults to Python 2.
--
-- * 'cderrsExtraJARsS3Path' - Path to one or more Java @.jar@ files in an S3 bucket that will be loaded in your @DevEndpoint@ .
--
-- * 'cderrsResponseStatus' - -- | The response status code.
createDevEndpointResponse ::
  -- | 'cderrsResponseStatus'
  Int ->
  CreateDevEndpointResponse
createDevEndpointResponse pResponseStatus_ =
  CreateDevEndpointResponse'
    { _cderrsSecurityGroupIds =
        Nothing,
      _cderrsStatus = Nothing,
      _cderrsEndpointName = Nothing,
      _cderrsRoleARN = Nothing,
      _cderrsYarnEndpointAddress = Nothing,
      _cderrsSecurityConfiguration = Nothing,
      _cderrsCreatedTimestamp = Nothing,
      _cderrsExtraPythonLibsS3Path = Nothing,
      _cderrsNumberOfWorkers = Nothing,
      _cderrsZeppelinRemoteSparkInterpreterPort =
        Nothing,
      _cderrsAvailabilityZone = Nothing,
      _cderrsFailureReason = Nothing,
      _cderrsGlueVersion = Nothing,
      _cderrsNumberOfNodes = Nothing,
      _cderrsWorkerType = Nothing,
      _cderrsSubnetId = Nothing,
      _cderrsVPCId = Nothing,
      _cderrsArguments = Nothing,
      _cderrsExtraJARsS3Path = Nothing,
      _cderrsResponseStatus = pResponseStatus_
    }

-- | The security groups assigned to the new @DevEndpoint@ .
cderrsSecurityGroupIds :: Lens' CreateDevEndpointResponse [Text]
cderrsSecurityGroupIds = lens _cderrsSecurityGroupIds (\s a -> s {_cderrsSecurityGroupIds = a}) . _Default . _Coerce

-- | The current status of the new @DevEndpoint@ .
cderrsStatus :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsStatus = lens _cderrsStatus (\s a -> s {_cderrsStatus = a})

-- | The name assigned to the new @DevEndpoint@ .
cderrsEndpointName :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsEndpointName = lens _cderrsEndpointName (\s a -> s {_cderrsEndpointName = a})

-- | The Amazon Resource Name (ARN) of the role assigned to the new @DevEndpoint@ .
cderrsRoleARN :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsRoleARN = lens _cderrsRoleARN (\s a -> s {_cderrsRoleARN = a})

-- | The address of the YARN endpoint used by this @DevEndpoint@ .
cderrsYarnEndpointAddress :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsYarnEndpointAddress = lens _cderrsYarnEndpointAddress (\s a -> s {_cderrsYarnEndpointAddress = a})

-- | The name of the @SecurityConfiguration@ structure being used with this @DevEndpoint@ .
cderrsSecurityConfiguration :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsSecurityConfiguration = lens _cderrsSecurityConfiguration (\s a -> s {_cderrsSecurityConfiguration = a})

-- | The point in time at which this @DevEndpoint@ was created.
cderrsCreatedTimestamp :: Lens' CreateDevEndpointResponse (Maybe UTCTime)
cderrsCreatedTimestamp = lens _cderrsCreatedTimestamp (\s a -> s {_cderrsCreatedTimestamp = a}) . mapping _Time

-- | The paths to one or more Python libraries in an S3 bucket that will be loaded in your @DevEndpoint@ .
cderrsExtraPythonLibsS3Path :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsExtraPythonLibsS3Path = lens _cderrsExtraPythonLibsS3Path (\s a -> s {_cderrsExtraPythonLibsS3Path = a})

-- | The number of workers of a defined @workerType@ that are allocated to the development endpoint.
cderrsNumberOfWorkers :: Lens' CreateDevEndpointResponse (Maybe Int)
cderrsNumberOfWorkers = lens _cderrsNumberOfWorkers (\s a -> s {_cderrsNumberOfWorkers = a})

-- | The Apache Zeppelin port for the remote Apache Spark interpreter.
cderrsZeppelinRemoteSparkInterpreterPort :: Lens' CreateDevEndpointResponse (Maybe Int)
cderrsZeppelinRemoteSparkInterpreterPort = lens _cderrsZeppelinRemoteSparkInterpreterPort (\s a -> s {_cderrsZeppelinRemoteSparkInterpreterPort = a})

-- | The AWS Availability Zone where this @DevEndpoint@ is located.
cderrsAvailabilityZone :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsAvailabilityZone = lens _cderrsAvailabilityZone (\s a -> s {_cderrsAvailabilityZone = a})

-- | The reason for a current failure in this @DevEndpoint@ .
cderrsFailureReason :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsFailureReason = lens _cderrsFailureReason (\s a -> s {_cderrsFailureReason = a})

-- | Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints.
cderrsGlueVersion :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsGlueVersion = lens _cderrsGlueVersion (\s a -> s {_cderrsGlueVersion = a})

-- | The number of AWS Glue Data Processing Units (DPUs) allocated to this DevEndpoint.
cderrsNumberOfNodes :: Lens' CreateDevEndpointResponse (Maybe Int)
cderrsNumberOfNodes = lens _cderrsNumberOfNodes (\s a -> s {_cderrsNumberOfNodes = a})

-- | The type of predefined worker that is allocated to the development endpoint. May be a value of Standard, G.1X, or G.2X.
cderrsWorkerType :: Lens' CreateDevEndpointResponse (Maybe WorkerType)
cderrsWorkerType = lens _cderrsWorkerType (\s a -> s {_cderrsWorkerType = a})

-- | The subnet ID assigned to the new @DevEndpoint@ .
cderrsSubnetId :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsSubnetId = lens _cderrsSubnetId (\s a -> s {_cderrsSubnetId = a})

-- | The ID of the virtual private cloud (VPC) used by this @DevEndpoint@ .
cderrsVPCId :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsVPCId = lens _cderrsVPCId (\s a -> s {_cderrsVPCId = a})

-- | The map of arguments used to configure this @DevEndpoint@ . Valid arguments are:     * @"--enable-glue-datacatalog": ""@      * @"GLUE_PYTHON_VERSION": "3"@      * @"GLUE_PYTHON_VERSION": "2"@  You can specify a version of Python support for development endpoints by using the @Arguments@ parameter in the @CreateDevEndpoint@ or @UpdateDevEndpoint@ APIs. If no arguments are provided, the version defaults to Python 2.
cderrsArguments :: Lens' CreateDevEndpointResponse (HashMap Text Text)
cderrsArguments = lens _cderrsArguments (\s a -> s {_cderrsArguments = a}) . _Default . _Map

-- | Path to one or more Java @.jar@ files in an S3 bucket that will be loaded in your @DevEndpoint@ .
cderrsExtraJARsS3Path :: Lens' CreateDevEndpointResponse (Maybe Text)
cderrsExtraJARsS3Path = lens _cderrsExtraJARsS3Path (\s a -> s {_cderrsExtraJARsS3Path = a})

-- | -- | The response status code.
cderrsResponseStatus :: Lens' CreateDevEndpointResponse Int
cderrsResponseStatus = lens _cderrsResponseStatus (\s a -> s {_cderrsResponseStatus = a})

instance NFData CreateDevEndpointResponse
