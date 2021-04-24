{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentDescription where

import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealth
import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthStatus
import Network.AWS.ElasticBeanstalk.Types.EnvironmentLink
import Network.AWS.ElasticBeanstalk.Types.EnvironmentResourcesDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentStatus
import Network.AWS.ElasticBeanstalk.Types.EnvironmentTier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the properties of an environment.
--
--
--
-- /See:/ 'environmentDescription' smart constructor.
data EnvironmentDescription = EnvironmentDescription'
  { _eAbortableOperationInProgress ::
      !(Maybe Bool),
    _eTemplateName ::
      !(Maybe Text),
    _eStatus ::
      !( Maybe
           EnvironmentStatus
       ),
    _eDateCreated ::
      !(Maybe ISO8601),
    _eEnvironmentLinks ::
      !( Maybe
           [EnvironmentLink]
       ),
    _eSolutionStackName ::
      !(Maybe Text),
    _eEnvironmentId ::
      !(Maybe Text),
    _eEnvironmentName ::
      !(Maybe Text),
    _ePlatformARN ::
      !(Maybe Text),
    _eVersionLabel ::
      !(Maybe Text),
    _eHealth ::
      !( Maybe
           EnvironmentHealth
       ),
    _eCNAME :: !(Maybe Text),
    _eResources ::
      !( Maybe
           EnvironmentResourcesDescription
       ),
    _eDateUpdated ::
      !(Maybe ISO8601),
    _eDescription ::
      !(Maybe Text),
    _eHealthStatus ::
      !( Maybe
           EnvironmentHealthStatus
       ),
    _eEnvironmentARN ::
      !(Maybe Text),
    _eEndpointURL ::
      !(Maybe Text),
    _eApplicationName ::
      !(Maybe Text),
    _eTier ::
      !(Maybe EnvironmentTier),
    _eOperationsRole ::
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

-- | Creates a value of 'EnvironmentDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAbortableOperationInProgress' - Indicates if there is an in-progress environment configuration update or application version deployment that you can cancel. @true:@ There is an update in progress.  @false:@ There are no updates currently in progress.
--
-- * 'eTemplateName' - The name of the configuration template used to originally launch this environment.
--
-- * 'eStatus' - The current operational status of the environment:     * @Launching@ : Environment is in the process of initial deployment.     * @Updating@ : Environment is in the process of updating its configuration settings or application version.     * @Ready@ : Environment is available to have an action performed on it, such as update or terminate.     * @Terminating@ : Environment is in the shut-down process.     * @Terminated@ : Environment is not running.
--
-- * 'eDateCreated' - The creation date for this environment.
--
-- * 'eEnvironmentLinks' - A list of links to other environments in the same group.
--
-- * 'eSolutionStackName' - The name of the @SolutionStack@ deployed with this environment.
--
-- * 'eEnvironmentId' - The ID of this environment.
--
-- * 'eEnvironmentName' - The name of this environment.
--
-- * 'ePlatformARN' - The ARN of the platform version.
--
-- * 'eVersionLabel' - The application version deployed in this environment.
--
-- * 'eHealth' - Describes the health status of the environment. AWS Elastic Beanstalk indicates the failure levels for a running environment:     * @Red@ : Indicates the environment is not responsive. Occurs when three or more consecutive failures occur for an environment.     * @Yellow@ : Indicates that something is wrong. Occurs when two consecutive failures occur for an environment.     * @Green@ : Indicates the environment is healthy and fully functional.     * @Grey@ : Default health for a new environment. The environment is not fully launched and health checks have not started or health checks are suspended during an @UpdateEnvironment@ or @RestartEnvironment@ request. Default: @Grey@
--
-- * 'eCNAME' - The URL to the CNAME for this environment.
--
-- * 'eResources' - The description of the AWS resources used by this environment.
--
-- * 'eDateUpdated' - The last modified date for this environment.
--
-- * 'eDescription' - Describes this environment.
--
-- * 'eHealthStatus' - Returns the health status of the application running in your environment. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html Health Colors and Statuses> .
--
-- * 'eEnvironmentARN' - The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.
--
-- * 'eEndpointURL' - For load-balanced, autoscaling environments, the URL to the LoadBalancer. For single-instance environments, the IP address of the instance.
--
-- * 'eApplicationName' - The name of the application associated with this environment.
--
-- * 'eTier' - Describes the current tier of this environment.
--
-- * 'eOperationsRole' - The Amazon Resource Name (ARN) of the environment's operations role. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html Operations roles> in the /AWS Elastic Beanstalk Developer Guide/ .
environmentDescription ::
  EnvironmentDescription
environmentDescription =
  EnvironmentDescription'
    { _eAbortableOperationInProgress =
        Nothing,
      _eTemplateName = Nothing,
      _eStatus = Nothing,
      _eDateCreated = Nothing,
      _eEnvironmentLinks = Nothing,
      _eSolutionStackName = Nothing,
      _eEnvironmentId = Nothing,
      _eEnvironmentName = Nothing,
      _ePlatformARN = Nothing,
      _eVersionLabel = Nothing,
      _eHealth = Nothing,
      _eCNAME = Nothing,
      _eResources = Nothing,
      _eDateUpdated = Nothing,
      _eDescription = Nothing,
      _eHealthStatus = Nothing,
      _eEnvironmentARN = Nothing,
      _eEndpointURL = Nothing,
      _eApplicationName = Nothing,
      _eTier = Nothing,
      _eOperationsRole = Nothing
    }

-- | Indicates if there is an in-progress environment configuration update or application version deployment that you can cancel. @true:@ There is an update in progress.  @false:@ There are no updates currently in progress.
eAbortableOperationInProgress :: Lens' EnvironmentDescription (Maybe Bool)
eAbortableOperationInProgress = lens _eAbortableOperationInProgress (\s a -> s {_eAbortableOperationInProgress = a})

-- | The name of the configuration template used to originally launch this environment.
eTemplateName :: Lens' EnvironmentDescription (Maybe Text)
eTemplateName = lens _eTemplateName (\s a -> s {_eTemplateName = a})

-- | The current operational status of the environment:     * @Launching@ : Environment is in the process of initial deployment.     * @Updating@ : Environment is in the process of updating its configuration settings or application version.     * @Ready@ : Environment is available to have an action performed on it, such as update or terminate.     * @Terminating@ : Environment is in the shut-down process.     * @Terminated@ : Environment is not running.
eStatus :: Lens' EnvironmentDescription (Maybe EnvironmentStatus)
eStatus = lens _eStatus (\s a -> s {_eStatus = a})

-- | The creation date for this environment.
eDateCreated :: Lens' EnvironmentDescription (Maybe UTCTime)
eDateCreated = lens _eDateCreated (\s a -> s {_eDateCreated = a}) . mapping _Time

-- | A list of links to other environments in the same group.
eEnvironmentLinks :: Lens' EnvironmentDescription [EnvironmentLink]
eEnvironmentLinks = lens _eEnvironmentLinks (\s a -> s {_eEnvironmentLinks = a}) . _Default . _Coerce

-- | The name of the @SolutionStack@ deployed with this environment.
eSolutionStackName :: Lens' EnvironmentDescription (Maybe Text)
eSolutionStackName = lens _eSolutionStackName (\s a -> s {_eSolutionStackName = a})

-- | The ID of this environment.
eEnvironmentId :: Lens' EnvironmentDescription (Maybe Text)
eEnvironmentId = lens _eEnvironmentId (\s a -> s {_eEnvironmentId = a})

-- | The name of this environment.
eEnvironmentName :: Lens' EnvironmentDescription (Maybe Text)
eEnvironmentName = lens _eEnvironmentName (\s a -> s {_eEnvironmentName = a})

-- | The ARN of the platform version.
ePlatformARN :: Lens' EnvironmentDescription (Maybe Text)
ePlatformARN = lens _ePlatformARN (\s a -> s {_ePlatformARN = a})

-- | The application version deployed in this environment.
eVersionLabel :: Lens' EnvironmentDescription (Maybe Text)
eVersionLabel = lens _eVersionLabel (\s a -> s {_eVersionLabel = a})

-- | Describes the health status of the environment. AWS Elastic Beanstalk indicates the failure levels for a running environment:     * @Red@ : Indicates the environment is not responsive. Occurs when three or more consecutive failures occur for an environment.     * @Yellow@ : Indicates that something is wrong. Occurs when two consecutive failures occur for an environment.     * @Green@ : Indicates the environment is healthy and fully functional.     * @Grey@ : Default health for a new environment. The environment is not fully launched and health checks have not started or health checks are suspended during an @UpdateEnvironment@ or @RestartEnvironment@ request. Default: @Grey@
eHealth :: Lens' EnvironmentDescription (Maybe EnvironmentHealth)
eHealth = lens _eHealth (\s a -> s {_eHealth = a})

-- | The URL to the CNAME for this environment.
eCNAME :: Lens' EnvironmentDescription (Maybe Text)
eCNAME = lens _eCNAME (\s a -> s {_eCNAME = a})

-- | The description of the AWS resources used by this environment.
eResources :: Lens' EnvironmentDescription (Maybe EnvironmentResourcesDescription)
eResources = lens _eResources (\s a -> s {_eResources = a})

-- | The last modified date for this environment.
eDateUpdated :: Lens' EnvironmentDescription (Maybe UTCTime)
eDateUpdated = lens _eDateUpdated (\s a -> s {_eDateUpdated = a}) . mapping _Time

-- | Describes this environment.
eDescription :: Lens' EnvironmentDescription (Maybe Text)
eDescription = lens _eDescription (\s a -> s {_eDescription = a})

-- | Returns the health status of the application running in your environment. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html Health Colors and Statuses> .
eHealthStatus :: Lens' EnvironmentDescription (Maybe EnvironmentHealthStatus)
eHealthStatus = lens _eHealthStatus (\s a -> s {_eHealthStatus = a})

-- | The environment's Amazon Resource Name (ARN), which can be used in other API requests that require an ARN.
eEnvironmentARN :: Lens' EnvironmentDescription (Maybe Text)
eEnvironmentARN = lens _eEnvironmentARN (\s a -> s {_eEnvironmentARN = a})

-- | For load-balanced, autoscaling environments, the URL to the LoadBalancer. For single-instance environments, the IP address of the instance.
eEndpointURL :: Lens' EnvironmentDescription (Maybe Text)
eEndpointURL = lens _eEndpointURL (\s a -> s {_eEndpointURL = a})

-- | The name of the application associated with this environment.
eApplicationName :: Lens' EnvironmentDescription (Maybe Text)
eApplicationName = lens _eApplicationName (\s a -> s {_eApplicationName = a})

-- | Describes the current tier of this environment.
eTier :: Lens' EnvironmentDescription (Maybe EnvironmentTier)
eTier = lens _eTier (\s a -> s {_eTier = a})

-- | The Amazon Resource Name (ARN) of the environment's operations role. For more information, see <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html Operations roles> in the /AWS Elastic Beanstalk Developer Guide/ .
eOperationsRole :: Lens' EnvironmentDescription (Maybe Text)
eOperationsRole = lens _eOperationsRole (\s a -> s {_eOperationsRole = a})

instance FromXML EnvironmentDescription where
  parseXML x =
    EnvironmentDescription'
      <$> (x .@? "AbortableOperationInProgress")
      <*> (x .@? "TemplateName")
      <*> (x .@? "Status")
      <*> (x .@? "DateCreated")
      <*> ( x .@? "EnvironmentLinks" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "SolutionStackName")
      <*> (x .@? "EnvironmentId")
      <*> (x .@? "EnvironmentName")
      <*> (x .@? "PlatformArn")
      <*> (x .@? "VersionLabel")
      <*> (x .@? "Health")
      <*> (x .@? "CNAME")
      <*> (x .@? "Resources")
      <*> (x .@? "DateUpdated")
      <*> (x .@? "Description")
      <*> (x .@? "HealthStatus")
      <*> (x .@? "EnvironmentArn")
      <*> (x .@? "EndpointURL")
      <*> (x .@? "ApplicationName")
      <*> (x .@? "Tier")
      <*> (x .@? "OperationsRole")

instance Hashable EnvironmentDescription

instance NFData EnvironmentDescription
