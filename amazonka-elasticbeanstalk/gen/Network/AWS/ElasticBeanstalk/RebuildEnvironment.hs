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
-- Module      : Network.AWS.ElasticBeanstalk.RebuildEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.
module Network.AWS.ElasticBeanstalk.RebuildEnvironment
  ( -- * Creating a Request
    rebuildEnvironment,
    RebuildEnvironment,

    -- * Request Lenses
    reEnvironmentId,
    reEnvironmentName,

    -- * Destructuring the Response
    rebuildEnvironmentResponse,
    RebuildEnvironmentResponse,
  )
where

import Network.AWS.ElasticBeanstalk.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'rebuildEnvironment' smart constructor.
data RebuildEnvironment = RebuildEnvironment'
  { _reEnvironmentId ::
      !(Maybe Text),
    _reEnvironmentName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RebuildEnvironment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reEnvironmentId' - The ID of the environment to rebuild. Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
--
-- * 'reEnvironmentName' - The name of the environment to rebuild. Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
rebuildEnvironment ::
  RebuildEnvironment
rebuildEnvironment =
  RebuildEnvironment'
    { _reEnvironmentId = Nothing,
      _reEnvironmentName = Nothing
    }

-- | The ID of the environment to rebuild. Condition: You must specify either this or an EnvironmentName, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
reEnvironmentId :: Lens' RebuildEnvironment (Maybe Text)
reEnvironmentId = lens _reEnvironmentId (\s a -> s {_reEnvironmentId = a})

-- | The name of the environment to rebuild. Condition: You must specify either this or an EnvironmentId, or both. If you do not specify either, AWS Elastic Beanstalk returns @MissingRequiredParameter@ error.
reEnvironmentName :: Lens' RebuildEnvironment (Maybe Text)
reEnvironmentName = lens _reEnvironmentName (\s a -> s {_reEnvironmentName = a})

instance AWSRequest RebuildEnvironment where
  type
    Rs RebuildEnvironment =
      RebuildEnvironmentResponse
  request = postQuery elasticBeanstalk
  response = receiveNull RebuildEnvironmentResponse'

instance Hashable RebuildEnvironment

instance NFData RebuildEnvironment

instance ToHeaders RebuildEnvironment where
  toHeaders = const mempty

instance ToPath RebuildEnvironment where
  toPath = const "/"

instance ToQuery RebuildEnvironment where
  toQuery RebuildEnvironment' {..} =
    mconcat
      [ "Action" =: ("RebuildEnvironment" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "EnvironmentId" =: _reEnvironmentId,
        "EnvironmentName" =: _reEnvironmentName
      ]

-- | /See:/ 'rebuildEnvironmentResponse' smart constructor.
data RebuildEnvironmentResponse = RebuildEnvironmentResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RebuildEnvironmentResponse' with the minimum fields required to make a request.
rebuildEnvironmentResponse ::
  RebuildEnvironmentResponse
rebuildEnvironmentResponse =
  RebuildEnvironmentResponse'

instance NFData RebuildEnvironmentResponse
