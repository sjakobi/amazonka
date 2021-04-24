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
-- Module      : Network.AWS.RDS.FailoverGlobalCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates the failover process for an Aurora global database ('GlobalCluster' ).
--
--
-- A failover for an Aurora global database promotes one of secondary read-only DB clusters to be the primary DB cluster and demotes the primary DB cluster to being a secondary (read-only) DB cluster. In other words, the role of the current primary DB cluster and the selected (target) DB cluster are switched. The selected secondary DB cluster assumes full read/write capabilities for the Aurora global database.
--
-- For more information about failing over an Amazon Aurora global database, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.managed-failover Managed planned failover for Amazon Aurora global databases> in the /Amazon Aurora User Guide./
module Network.AWS.RDS.FailoverGlobalCluster
  ( -- * Creating a Request
    failoverGlobalCluster,
    FailoverGlobalCluster,

    -- * Request Lenses
    fgcGlobalClusterIdentifier,
    fgcTargetDBClusterIdentifier,

    -- * Destructuring the Response
    failoverGlobalClusterResponse,
    FailoverGlobalClusterResponse,

    -- * Response Lenses
    fgcrrsGlobalCluster,
    fgcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'failoverGlobalCluster' smart constructor.
data FailoverGlobalCluster = FailoverGlobalCluster'
  { _fgcGlobalClusterIdentifier ::
      !Text,
    _fgcTargetDBClusterIdentifier ::
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

-- | Creates a value of 'FailoverGlobalCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgcGlobalClusterIdentifier' - Identifier of the Aurora global database ('GlobalCluster' ) that should be failed over. The identifier is the unique key assigned by the user when the Aurora global database was created. In other words, it's the name of the Aurora global database that you want to fail over.  Constraints:     * Must match the identifier of an existing 'GlobalCluster' (Aurora global database).
--
-- * 'fgcTargetDBClusterIdentifier' - Identifier of the secondary Aurora DB cluster that you want to promote to primary for the Aurora global database ('GlobalCluster' .) Use the Amazon Resource Name (ARN) for the identifier so that Aurora can locate the cluster in its AWS Region.
failoverGlobalCluster ::
  -- | 'fgcGlobalClusterIdentifier'
  Text ->
  -- | 'fgcTargetDBClusterIdentifier'
  Text ->
  FailoverGlobalCluster
failoverGlobalCluster
  pGlobalClusterIdentifier_
  pTargetDBClusterIdentifier_ =
    FailoverGlobalCluster'
      { _fgcGlobalClusterIdentifier =
          pGlobalClusterIdentifier_,
        _fgcTargetDBClusterIdentifier =
          pTargetDBClusterIdentifier_
      }

-- | Identifier of the Aurora global database ('GlobalCluster' ) that should be failed over. The identifier is the unique key assigned by the user when the Aurora global database was created. In other words, it's the name of the Aurora global database that you want to fail over.  Constraints:     * Must match the identifier of an existing 'GlobalCluster' (Aurora global database).
fgcGlobalClusterIdentifier :: Lens' FailoverGlobalCluster Text
fgcGlobalClusterIdentifier = lens _fgcGlobalClusterIdentifier (\s a -> s {_fgcGlobalClusterIdentifier = a})

-- | Identifier of the secondary Aurora DB cluster that you want to promote to primary for the Aurora global database ('GlobalCluster' .) Use the Amazon Resource Name (ARN) for the identifier so that Aurora can locate the cluster in its AWS Region.
fgcTargetDBClusterIdentifier :: Lens' FailoverGlobalCluster Text
fgcTargetDBClusterIdentifier = lens _fgcTargetDBClusterIdentifier (\s a -> s {_fgcTargetDBClusterIdentifier = a})

instance AWSRequest FailoverGlobalCluster where
  type
    Rs FailoverGlobalCluster =
      FailoverGlobalClusterResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "FailoverGlobalClusterResult"
      ( \s h x ->
          FailoverGlobalClusterResponse'
            <$> (x .@? "GlobalCluster") <*> (pure (fromEnum s))
      )

instance Hashable FailoverGlobalCluster

instance NFData FailoverGlobalCluster

instance ToHeaders FailoverGlobalCluster where
  toHeaders = const mempty

instance ToPath FailoverGlobalCluster where
  toPath = const "/"

instance ToQuery FailoverGlobalCluster where
  toQuery FailoverGlobalCluster' {..} =
    mconcat
      [ "Action" =: ("FailoverGlobalCluster" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "GlobalClusterIdentifier"
          =: _fgcGlobalClusterIdentifier,
        "TargetDbClusterIdentifier"
          =: _fgcTargetDBClusterIdentifier
      ]

-- | /See:/ 'failoverGlobalClusterResponse' smart constructor.
data FailoverGlobalClusterResponse = FailoverGlobalClusterResponse'
  { _fgcrrsGlobalCluster ::
      !( Maybe
           GlobalCluster
       ),
    _fgcrrsResponseStatus ::
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

-- | Creates a value of 'FailoverGlobalClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgcrrsGlobalCluster' - Undocumented member.
--
-- * 'fgcrrsResponseStatus' - -- | The response status code.
failoverGlobalClusterResponse ::
  -- | 'fgcrrsResponseStatus'
  Int ->
  FailoverGlobalClusterResponse
failoverGlobalClusterResponse pResponseStatus_ =
  FailoverGlobalClusterResponse'
    { _fgcrrsGlobalCluster =
        Nothing,
      _fgcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
fgcrrsGlobalCluster :: Lens' FailoverGlobalClusterResponse (Maybe GlobalCluster)
fgcrrsGlobalCluster = lens _fgcrrsGlobalCluster (\s a -> s {_fgcrrsGlobalCluster = a})

-- | -- | The response status code.
fgcrrsResponseStatus :: Lens' FailoverGlobalClusterResponse Int
fgcrrsResponseStatus = lens _fgcrrsResponseStatus (\s a -> s {_fgcrrsResponseStatus = a})

instance NFData FailoverGlobalClusterResponse
