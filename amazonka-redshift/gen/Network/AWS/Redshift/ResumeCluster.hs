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
-- Module      : Network.AWS.Redshift.ResumeCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resumes a paused cluster.
module Network.AWS.Redshift.ResumeCluster
  ( -- * Creating a Request
    resumeCluster,
    ResumeCluster,

    -- * Request Lenses
    resClusterIdentifier,

    -- * Destructuring the Response
    resumeClusterResponse,
    ResumeClusterResponse,

    -- * Response Lenses
    resrsCluster,
    resrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | Describes a resume cluster operation. For example, a scheduled action to run the @ResumeCluster@ API operation.
--
--
--
-- /See:/ 'resumeCluster' smart constructor.
newtype ResumeCluster = ResumeCluster'
  { _resClusterIdentifier ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResumeCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'resClusterIdentifier' - The identifier of the cluster to be resumed.
resumeCluster ::
  -- | 'resClusterIdentifier'
  Text ->
  ResumeCluster
resumeCluster pClusterIdentifier_ =
  ResumeCluster'
    { _resClusterIdentifier =
        pClusterIdentifier_
    }

-- | The identifier of the cluster to be resumed.
resClusterIdentifier :: Lens' ResumeCluster Text
resClusterIdentifier = lens _resClusterIdentifier (\s a -> s {_resClusterIdentifier = a})

instance AWSRequest ResumeCluster where
  type Rs ResumeCluster = ResumeClusterResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "ResumeClusterResult"
      ( \s h x ->
          ResumeClusterResponse'
            <$> (x .@? "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable ResumeCluster

instance NFData ResumeCluster

instance ToHeaders ResumeCluster where
  toHeaders = const mempty

instance ToPath ResumeCluster where
  toPath = const "/"

instance ToQuery ResumeCluster where
  toQuery ResumeCluster' {..} =
    mconcat
      [ "Action" =: ("ResumeCluster" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "ClusterIdentifier" =: _resClusterIdentifier
      ]

-- | /See:/ 'resumeClusterResponse' smart constructor.
data ResumeClusterResponse = ResumeClusterResponse'
  { _resrsCluster ::
      !(Maybe Cluster),
    _resrsResponseStatus ::
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

-- | Creates a value of 'ResumeClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'resrsCluster' - Undocumented member.
--
-- * 'resrsResponseStatus' - -- | The response status code.
resumeClusterResponse ::
  -- | 'resrsResponseStatus'
  Int ->
  ResumeClusterResponse
resumeClusterResponse pResponseStatus_ =
  ResumeClusterResponse'
    { _resrsCluster = Nothing,
      _resrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
resrsCluster :: Lens' ResumeClusterResponse (Maybe Cluster)
resrsCluster = lens _resrsCluster (\s a -> s {_resrsCluster = a})

-- | -- | The response status code.
resrsResponseStatus :: Lens' ResumeClusterResponse Int
resrsResponseStatus = lens _resrsResponseStatus (\s a -> s {_resrsResponseStatus = a})

instance NFData ResumeClusterResponse
