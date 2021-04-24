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
-- Module      : Network.AWS.CodeDeploy.CreateDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploys an application revision through the specified deployment group.
module Network.AWS.CodeDeploy.CreateDeployment
  ( -- * Creating a Request
    createDeployment,
    CreateDeployment,

    -- * Request Lenses
    cdDeploymentConfigName,
    cdIgnoreApplicationStopFailures,
    cdUpdateOutdatedInstancesOnly,
    cdAutoRollbackConfiguration,
    cdDeploymentGroupName,
    cdTargetInstances,
    cdDescription,
    cdRevision,
    cdFileExistsBehavior,
    cdApplicationName,

    -- * Destructuring the Response
    createDeploymentResponse,
    CreateDeploymentResponse,

    -- * Response Lenses
    cdrrsDeploymentId,
    cdrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @CreateDeployment@ operation.
--
--
--
-- /See:/ 'createDeployment' smart constructor.
data CreateDeployment = CreateDeployment'
  { _cdDeploymentConfigName ::
      !(Maybe Text),
    _cdIgnoreApplicationStopFailures ::
      !(Maybe Bool),
    _cdUpdateOutdatedInstancesOnly ::
      !(Maybe Bool),
    _cdAutoRollbackConfiguration ::
      !(Maybe AutoRollbackConfiguration),
    _cdDeploymentGroupName ::
      !(Maybe Text),
    _cdTargetInstances ::
      !(Maybe TargetInstances),
    _cdDescription :: !(Maybe Text),
    _cdRevision ::
      !(Maybe RevisionLocation),
    _cdFileExistsBehavior ::
      !(Maybe FileExistsBehavior),
    _cdApplicationName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDeployment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdDeploymentConfigName' - The name of a deployment configuration associated with the IAM user or AWS account. If not specified, the value configured in the deployment group is used as the default. If the deployment group does not have a deployment configuration associated with it, @CodeDeployDefault@ .@OneAtATime@ is used by default.
--
-- * 'cdIgnoreApplicationStopFailures' - If true, then if an @ApplicationStop@ , @BeforeBlockTraffic@ , or @AfterBlockTraffic@ deployment lifecycle event to an instance fails, then the deployment continues to the next deployment lifecycle event. For example, if @ApplicationStop@ fails, the deployment continues with @DownloadBundle@ . If @BeforeBlockTraffic@ fails, the deployment continues with @BlockTraffic@ . If @AfterBlockTraffic@ fails, the deployment continues with @ApplicationStop@ .  If false or not specified, then if a lifecycle event fails during a deployment to an instance, that deployment fails. If deployment to that instance is part of an overall deployment and the number of healthy hosts is not less than the minimum number of healthy hosts, then a deployment to the next instance is attempted.  During a deployment, the AWS CodeDeploy agent runs the scripts specified for @ApplicationStop@ , @BeforeBlockTraffic@ , and @AfterBlockTraffic@ in the AppSpec file from the previous successful deployment. (All other scripts are run from the AppSpec file in the current deployment.) If one of these scripts contains an error and does not run successfully, the deployment can fail.  If the cause of the failure is a script from the last successful deployment that will never run successfully, create a new deployment and use @ignoreApplicationStopFailures@ to specify that the @ApplicationStop@ , @BeforeBlockTraffic@ , and @AfterBlockTraffic@ failures should be ignored.
--
-- * 'cdUpdateOutdatedInstancesOnly' - Indicates whether to deploy to all instances or only to instances that are not running the latest application revision.
--
-- * 'cdAutoRollbackConfiguration' - Configuration information for an automatic rollback that is added when a deployment is created.
--
-- * 'cdDeploymentGroupName' - The name of the deployment group.
--
-- * 'cdTargetInstances' - Information about the instances that belong to the replacement environment in a blue/green deployment.
--
-- * 'cdDescription' - A comment about the deployment.
--
-- * 'cdRevision' - The type and location of the revision to deploy.
--
-- * 'cdFileExistsBehavior' - Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment. The @fileExistsBehavior@ parameter takes any of the following values:     * DISALLOW: The deployment fails. This is also the default behavior if no option is specified.     * OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.     * RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.
--
-- * 'cdApplicationName' - The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
createDeployment ::
  -- | 'cdApplicationName'
  Text ->
  CreateDeployment
createDeployment pApplicationName_ =
  CreateDeployment'
    { _cdDeploymentConfigName =
        Nothing,
      _cdIgnoreApplicationStopFailures = Nothing,
      _cdUpdateOutdatedInstancesOnly = Nothing,
      _cdAutoRollbackConfiguration = Nothing,
      _cdDeploymentGroupName = Nothing,
      _cdTargetInstances = Nothing,
      _cdDescription = Nothing,
      _cdRevision = Nothing,
      _cdFileExistsBehavior = Nothing,
      _cdApplicationName = pApplicationName_
    }

-- | The name of a deployment configuration associated with the IAM user or AWS account. If not specified, the value configured in the deployment group is used as the default. If the deployment group does not have a deployment configuration associated with it, @CodeDeployDefault@ .@OneAtATime@ is used by default.
cdDeploymentConfigName :: Lens' CreateDeployment (Maybe Text)
cdDeploymentConfigName = lens _cdDeploymentConfigName (\s a -> s {_cdDeploymentConfigName = a})

-- | If true, then if an @ApplicationStop@ , @BeforeBlockTraffic@ , or @AfterBlockTraffic@ deployment lifecycle event to an instance fails, then the deployment continues to the next deployment lifecycle event. For example, if @ApplicationStop@ fails, the deployment continues with @DownloadBundle@ . If @BeforeBlockTraffic@ fails, the deployment continues with @BlockTraffic@ . If @AfterBlockTraffic@ fails, the deployment continues with @ApplicationStop@ .  If false or not specified, then if a lifecycle event fails during a deployment to an instance, that deployment fails. If deployment to that instance is part of an overall deployment and the number of healthy hosts is not less than the minimum number of healthy hosts, then a deployment to the next instance is attempted.  During a deployment, the AWS CodeDeploy agent runs the scripts specified for @ApplicationStop@ , @BeforeBlockTraffic@ , and @AfterBlockTraffic@ in the AppSpec file from the previous successful deployment. (All other scripts are run from the AppSpec file in the current deployment.) If one of these scripts contains an error and does not run successfully, the deployment can fail.  If the cause of the failure is a script from the last successful deployment that will never run successfully, create a new deployment and use @ignoreApplicationStopFailures@ to specify that the @ApplicationStop@ , @BeforeBlockTraffic@ , and @AfterBlockTraffic@ failures should be ignored.
cdIgnoreApplicationStopFailures :: Lens' CreateDeployment (Maybe Bool)
cdIgnoreApplicationStopFailures = lens _cdIgnoreApplicationStopFailures (\s a -> s {_cdIgnoreApplicationStopFailures = a})

-- | Indicates whether to deploy to all instances or only to instances that are not running the latest application revision.
cdUpdateOutdatedInstancesOnly :: Lens' CreateDeployment (Maybe Bool)
cdUpdateOutdatedInstancesOnly = lens _cdUpdateOutdatedInstancesOnly (\s a -> s {_cdUpdateOutdatedInstancesOnly = a})

-- | Configuration information for an automatic rollback that is added when a deployment is created.
cdAutoRollbackConfiguration :: Lens' CreateDeployment (Maybe AutoRollbackConfiguration)
cdAutoRollbackConfiguration = lens _cdAutoRollbackConfiguration (\s a -> s {_cdAutoRollbackConfiguration = a})

-- | The name of the deployment group.
cdDeploymentGroupName :: Lens' CreateDeployment (Maybe Text)
cdDeploymentGroupName = lens _cdDeploymentGroupName (\s a -> s {_cdDeploymentGroupName = a})

-- | Information about the instances that belong to the replacement environment in a blue/green deployment.
cdTargetInstances :: Lens' CreateDeployment (Maybe TargetInstances)
cdTargetInstances = lens _cdTargetInstances (\s a -> s {_cdTargetInstances = a})

-- | A comment about the deployment.
cdDescription :: Lens' CreateDeployment (Maybe Text)
cdDescription = lens _cdDescription (\s a -> s {_cdDescription = a})

-- | The type and location of the revision to deploy.
cdRevision :: Lens' CreateDeployment (Maybe RevisionLocation)
cdRevision = lens _cdRevision (\s a -> s {_cdRevision = a})

-- | Information about how AWS CodeDeploy handles files that already exist in a deployment target location but weren't part of the previous successful deployment. The @fileExistsBehavior@ parameter takes any of the following values:     * DISALLOW: The deployment fails. This is also the default behavior if no option is specified.     * OVERWRITE: The version of the file from the application revision currently being deployed replaces the version already on the instance.     * RETAIN: The version of the file already on the instance is kept and used as part of the new deployment.
cdFileExistsBehavior :: Lens' CreateDeployment (Maybe FileExistsBehavior)
cdFileExistsBehavior = lens _cdFileExistsBehavior (\s a -> s {_cdFileExistsBehavior = a})

-- | The name of an AWS CodeDeploy application associated with the IAM user or AWS account.
cdApplicationName :: Lens' CreateDeployment Text
cdApplicationName = lens _cdApplicationName (\s a -> s {_cdApplicationName = a})

instance AWSRequest CreateDeployment where
  type Rs CreateDeployment = CreateDeploymentResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          CreateDeploymentResponse'
            <$> (x .?> "deploymentId") <*> (pure (fromEnum s))
      )

instance Hashable CreateDeployment

instance NFData CreateDeployment

instance ToHeaders CreateDeployment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.CreateDeployment" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateDeployment where
  toJSON CreateDeployment' {..} =
    object
      ( catMaybes
          [ ("deploymentConfigName" .=)
              <$> _cdDeploymentConfigName,
            ("ignoreApplicationStopFailures" .=)
              <$> _cdIgnoreApplicationStopFailures,
            ("updateOutdatedInstancesOnly" .=)
              <$> _cdUpdateOutdatedInstancesOnly,
            ("autoRollbackConfiguration" .=)
              <$> _cdAutoRollbackConfiguration,
            ("deploymentGroupName" .=)
              <$> _cdDeploymentGroupName,
            ("targetInstances" .=) <$> _cdTargetInstances,
            ("description" .=) <$> _cdDescription,
            ("revision" .=) <$> _cdRevision,
            ("fileExistsBehavior" .=) <$> _cdFileExistsBehavior,
            Just ("applicationName" .= _cdApplicationName)
          ]
      )

instance ToPath CreateDeployment where
  toPath = const "/"

instance ToQuery CreateDeployment where
  toQuery = const mempty

-- | Represents the output of a @CreateDeployment@ operation.
--
--
--
-- /See:/ 'createDeploymentResponse' smart constructor.
data CreateDeploymentResponse = CreateDeploymentResponse'
  { _cdrrsDeploymentId ::
      !(Maybe Text),
    _cdrrsResponseStatus ::
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

-- | Creates a value of 'CreateDeploymentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrsDeploymentId' - The unique ID of a deployment.
--
-- * 'cdrrsResponseStatus' - -- | The response status code.
createDeploymentResponse ::
  -- | 'cdrrsResponseStatus'
  Int ->
  CreateDeploymentResponse
createDeploymentResponse pResponseStatus_ =
  CreateDeploymentResponse'
    { _cdrrsDeploymentId =
        Nothing,
      _cdrrsResponseStatus = pResponseStatus_
    }

-- | The unique ID of a deployment.
cdrrsDeploymentId :: Lens' CreateDeploymentResponse (Maybe Text)
cdrrsDeploymentId = lens _cdrrsDeploymentId (\s a -> s {_cdrrsDeploymentId = a})

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDeploymentResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

instance NFData CreateDeploymentResponse
