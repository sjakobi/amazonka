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
-- Module      : Network.AWS.ElasticBeanstalk.ComposeEnvironments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named @env.yaml@ . See <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html Compose Environments> for details.
module Network.AWS.ElasticBeanstalk.ComposeEnvironments
  ( -- * Creating a Request
    composeEnvironments,
    ComposeEnvironments,

    -- * Request Lenses
    cGroupName,
    cVersionLabels,
    cApplicationName,

    -- * Destructuring the Response
    environmentDescriptionsMessage,
    EnvironmentDescriptionsMessage,

    -- * Response Lenses
    edmNextToken,
    edmEnvironments,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to create or update a group of environments.
--
--
--
-- /See:/ 'composeEnvironments' smart constructor.
data ComposeEnvironments = ComposeEnvironments'
  { _cGroupName ::
      !(Maybe Text),
    _cVersionLabels ::
      !(Maybe [Text]),
    _cApplicationName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ComposeEnvironments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cGroupName' - The name of the group to which the target environments belong. Specify a group name only if the environment name defined in each target environment's manifest ends with a + (plus) character. See <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html Environment Manifest (env.yaml)> for details.
--
-- * 'cVersionLabels' - A list of version labels, specifying one or more application source bundles that belong to the target application. Each source bundle must include an environment manifest that specifies the name of the environment and the name of the solution stack to use, and optionally can specify environment links to create.
--
-- * 'cApplicationName' - The name of the application to which the specified source bundles belong.
composeEnvironments ::
  ComposeEnvironments
composeEnvironments =
  ComposeEnvironments'
    { _cGroupName = Nothing,
      _cVersionLabels = Nothing,
      _cApplicationName = Nothing
    }

-- | The name of the group to which the target environments belong. Specify a group name only if the environment name defined in each target environment's manifest ends with a + (plus) character. See <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html Environment Manifest (env.yaml)> for details.
cGroupName :: Lens' ComposeEnvironments (Maybe Text)
cGroupName = lens _cGroupName (\s a -> s {_cGroupName = a})

-- | A list of version labels, specifying one or more application source bundles that belong to the target application. Each source bundle must include an environment manifest that specifies the name of the environment and the name of the solution stack to use, and optionally can specify environment links to create.
cVersionLabels :: Lens' ComposeEnvironments [Text]
cVersionLabels = lens _cVersionLabels (\s a -> s {_cVersionLabels = a}) . _Default . _Coerce

-- | The name of the application to which the specified source bundles belong.
cApplicationName :: Lens' ComposeEnvironments (Maybe Text)
cApplicationName = lens _cApplicationName (\s a -> s {_cApplicationName = a})

instance AWSRequest ComposeEnvironments where
  type
    Rs ComposeEnvironments =
      EnvironmentDescriptionsMessage
  request = postQuery elasticBeanstalk
  response =
    receiveXMLWrapper
      "ComposeEnvironmentsResult"
      (\s h x -> parseXML x)

instance Hashable ComposeEnvironments

instance NFData ComposeEnvironments

instance ToHeaders ComposeEnvironments where
  toHeaders = const mempty

instance ToPath ComposeEnvironments where
  toPath = const "/"

instance ToQuery ComposeEnvironments where
  toQuery ComposeEnvironments' {..} =
    mconcat
      [ "Action" =: ("ComposeEnvironments" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "GroupName" =: _cGroupName,
        "VersionLabels"
          =: toQuery (toQueryList "member" <$> _cVersionLabels),
        "ApplicationName" =: _cApplicationName
      ]
