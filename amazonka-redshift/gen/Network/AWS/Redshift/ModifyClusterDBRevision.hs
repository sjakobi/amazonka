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
-- Module      : Network.AWS.Redshift.ModifyClusterDBRevision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the database revision of a cluster. The database revision is a unique revision of the database running in a cluster.
module Network.AWS.Redshift.ModifyClusterDBRevision
  ( -- * Creating a Request
    modifyClusterDBRevision,
    ModifyClusterDBRevision,

    -- * Request Lenses
    mcdrClusterIdentifier,
    mcdrRevisionTarget,

    -- * Destructuring the Response
    modifyClusterDBRevisionResponse,
    ModifyClusterDBRevisionResponse,

    -- * Response Lenses
    mcdrrrsCluster,
    mcdrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyClusterDBRevision' smart constructor.
data ModifyClusterDBRevision = ModifyClusterDBRevision'
  { _mcdrClusterIdentifier ::
      !Text,
    _mcdrRevisionTarget ::
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

-- | Creates a value of 'ModifyClusterDBRevision' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdrClusterIdentifier' - The unique identifier of a cluster whose database revision you want to modify.  Example: @examplecluster@
--
-- * 'mcdrRevisionTarget' - The identifier of the database revision. You can retrieve this value from the response to the 'DescribeClusterDbRevisions' request.
modifyClusterDBRevision ::
  -- | 'mcdrClusterIdentifier'
  Text ->
  -- | 'mcdrRevisionTarget'
  Text ->
  ModifyClusterDBRevision
modifyClusterDBRevision
  pClusterIdentifier_
  pRevisionTarget_ =
    ModifyClusterDBRevision'
      { _mcdrClusterIdentifier =
          pClusterIdentifier_,
        _mcdrRevisionTarget = pRevisionTarget_
      }

-- | The unique identifier of a cluster whose database revision you want to modify.  Example: @examplecluster@
mcdrClusterIdentifier :: Lens' ModifyClusterDBRevision Text
mcdrClusterIdentifier = lens _mcdrClusterIdentifier (\s a -> s {_mcdrClusterIdentifier = a})

-- | The identifier of the database revision. You can retrieve this value from the response to the 'DescribeClusterDbRevisions' request.
mcdrRevisionTarget :: Lens' ModifyClusterDBRevision Text
mcdrRevisionTarget = lens _mcdrRevisionTarget (\s a -> s {_mcdrRevisionTarget = a})

instance AWSRequest ModifyClusterDBRevision where
  type
    Rs ModifyClusterDBRevision =
      ModifyClusterDBRevisionResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "ModifyClusterDbRevisionResult"
      ( \s h x ->
          ModifyClusterDBRevisionResponse'
            <$> (x .@? "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable ModifyClusterDBRevision

instance NFData ModifyClusterDBRevision

instance ToHeaders ModifyClusterDBRevision where
  toHeaders = const mempty

instance ToPath ModifyClusterDBRevision where
  toPath = const "/"

instance ToQuery ModifyClusterDBRevision where
  toQuery ModifyClusterDBRevision' {..} =
    mconcat
      [ "Action"
          =: ("ModifyClusterDbRevision" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "ClusterIdentifier" =: _mcdrClusterIdentifier,
        "RevisionTarget" =: _mcdrRevisionTarget
      ]

-- | /See:/ 'modifyClusterDBRevisionResponse' smart constructor.
data ModifyClusterDBRevisionResponse = ModifyClusterDBRevisionResponse'
  { _mcdrrrsCluster ::
      !( Maybe
           Cluster
       ),
    _mcdrrrsResponseStatus ::
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

-- | Creates a value of 'ModifyClusterDBRevisionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdrrrsCluster' - Undocumented member.
--
-- * 'mcdrrrsResponseStatus' - -- | The response status code.
modifyClusterDBRevisionResponse ::
  -- | 'mcdrrrsResponseStatus'
  Int ->
  ModifyClusterDBRevisionResponse
modifyClusterDBRevisionResponse pResponseStatus_ =
  ModifyClusterDBRevisionResponse'
    { _mcdrrrsCluster =
        Nothing,
      _mcdrrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
mcdrrrsCluster :: Lens' ModifyClusterDBRevisionResponse (Maybe Cluster)
mcdrrrsCluster = lens _mcdrrrsCluster (\s a -> s {_mcdrrrsCluster = a})

-- | -- | The response status code.
mcdrrrsResponseStatus :: Lens' ModifyClusterDBRevisionResponse Int
mcdrrrsResponseStatus = lens _mcdrrrsResponseStatus (\s a -> s {_mcdrrrsResponseStatus = a})

instance NFData ModifyClusterDBRevisionResponse
