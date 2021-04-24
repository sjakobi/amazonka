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
-- Module      : Network.AWS.RDS.CreateGlobalCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Aurora global database spread across multiple AWS Regions. The global database contains a single primary cluster with read-write capability, and a read-only secondary cluster that receives data from the primary cluster through high-speed replication performed by the Aurora storage subsystem.
--
--
-- You can create a global database that is initially empty, and then add a primary cluster and a secondary cluster to it. Or you can specify an existing Aurora cluster during the create operation, and this cluster becomes the primary cluster of the global database.
module Network.AWS.RDS.CreateGlobalCluster
  ( -- * Creating a Request
    createGlobalCluster,
    CreateGlobalCluster,

    -- * Request Lenses
    cgcDeletionProtection,
    cgcStorageEncrypted,
    cgcEngineVersion,
    cgcEngine,
    cgcGlobalClusterIdentifier,
    cgcDatabaseName,
    cgcSourceDBClusterIdentifier,

    -- * Destructuring the Response
    createGlobalClusterResponse,
    CreateGlobalClusterResponse,

    -- * Response Lenses
    cgcrrsGlobalCluster,
    cgcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createGlobalCluster' smart constructor.
data CreateGlobalCluster = CreateGlobalCluster'
  { _cgcDeletionProtection ::
      !(Maybe Bool),
    _cgcStorageEncrypted ::
      !(Maybe Bool),
    _cgcEngineVersion ::
      !(Maybe Text),
    _cgcEngine :: !(Maybe Text),
    _cgcGlobalClusterIdentifier ::
      !(Maybe Text),
    _cgcDatabaseName ::
      !(Maybe Text),
    _cgcSourceDBClusterIdentifier ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateGlobalCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgcDeletionProtection' - The deletion protection setting for the new global database. The global database can't be deleted when deletion protection is enabled.
--
-- * 'cgcStorageEncrypted' - The storage encryption setting for the new global database cluster.
--
-- * 'cgcEngineVersion' - The engine version of the Aurora global database.
--
-- * 'cgcEngine' - The name of the database engine to be used for this DB cluster.
--
-- * 'cgcGlobalClusterIdentifier' - The cluster identifier of the new global database cluster.
--
-- * 'cgcDatabaseName' - The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon Aurora will not create a database in the global database cluster you are creating.
--
-- * 'cgcSourceDBClusterIdentifier' - The Amazon Resource Name (ARN) to use as the primary cluster of the global database. This parameter is optional.
createGlobalCluster ::
  CreateGlobalCluster
createGlobalCluster =
  CreateGlobalCluster'
    { _cgcDeletionProtection =
        Nothing,
      _cgcStorageEncrypted = Nothing,
      _cgcEngineVersion = Nothing,
      _cgcEngine = Nothing,
      _cgcGlobalClusterIdentifier = Nothing,
      _cgcDatabaseName = Nothing,
      _cgcSourceDBClusterIdentifier = Nothing
    }

-- | The deletion protection setting for the new global database. The global database can't be deleted when deletion protection is enabled.
cgcDeletionProtection :: Lens' CreateGlobalCluster (Maybe Bool)
cgcDeletionProtection = lens _cgcDeletionProtection (\s a -> s {_cgcDeletionProtection = a})

-- | The storage encryption setting for the new global database cluster.
cgcStorageEncrypted :: Lens' CreateGlobalCluster (Maybe Bool)
cgcStorageEncrypted = lens _cgcStorageEncrypted (\s a -> s {_cgcStorageEncrypted = a})

-- | The engine version of the Aurora global database.
cgcEngineVersion :: Lens' CreateGlobalCluster (Maybe Text)
cgcEngineVersion = lens _cgcEngineVersion (\s a -> s {_cgcEngineVersion = a})

-- | The name of the database engine to be used for this DB cluster.
cgcEngine :: Lens' CreateGlobalCluster (Maybe Text)
cgcEngine = lens _cgcEngine (\s a -> s {_cgcEngine = a})

-- | The cluster identifier of the new global database cluster.
cgcGlobalClusterIdentifier :: Lens' CreateGlobalCluster (Maybe Text)
cgcGlobalClusterIdentifier = lens _cgcGlobalClusterIdentifier (\s a -> s {_cgcGlobalClusterIdentifier = a})

-- | The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon Aurora will not create a database in the global database cluster you are creating.
cgcDatabaseName :: Lens' CreateGlobalCluster (Maybe Text)
cgcDatabaseName = lens _cgcDatabaseName (\s a -> s {_cgcDatabaseName = a})

-- | The Amazon Resource Name (ARN) to use as the primary cluster of the global database. This parameter is optional.
cgcSourceDBClusterIdentifier :: Lens' CreateGlobalCluster (Maybe Text)
cgcSourceDBClusterIdentifier = lens _cgcSourceDBClusterIdentifier (\s a -> s {_cgcSourceDBClusterIdentifier = a})

instance AWSRequest CreateGlobalCluster where
  type
    Rs CreateGlobalCluster =
      CreateGlobalClusterResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "CreateGlobalClusterResult"
      ( \s h x ->
          CreateGlobalClusterResponse'
            <$> (x .@? "GlobalCluster") <*> (pure (fromEnum s))
      )

instance Hashable CreateGlobalCluster

instance NFData CreateGlobalCluster

instance ToHeaders CreateGlobalCluster where
  toHeaders = const mempty

instance ToPath CreateGlobalCluster where
  toPath = const "/"

instance ToQuery CreateGlobalCluster where
  toQuery CreateGlobalCluster' {..} =
    mconcat
      [ "Action" =: ("CreateGlobalCluster" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DeletionProtection" =: _cgcDeletionProtection,
        "StorageEncrypted" =: _cgcStorageEncrypted,
        "EngineVersion" =: _cgcEngineVersion,
        "Engine" =: _cgcEngine,
        "GlobalClusterIdentifier"
          =: _cgcGlobalClusterIdentifier,
        "DatabaseName" =: _cgcDatabaseName,
        "SourceDBClusterIdentifier"
          =: _cgcSourceDBClusterIdentifier
      ]

-- | /See:/ 'createGlobalClusterResponse' smart constructor.
data CreateGlobalClusterResponse = CreateGlobalClusterResponse'
  { _cgcrrsGlobalCluster ::
      !( Maybe
           GlobalCluster
       ),
    _cgcrrsResponseStatus ::
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

-- | Creates a value of 'CreateGlobalClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgcrrsGlobalCluster' - Undocumented member.
--
-- * 'cgcrrsResponseStatus' - -- | The response status code.
createGlobalClusterResponse ::
  -- | 'cgcrrsResponseStatus'
  Int ->
  CreateGlobalClusterResponse
createGlobalClusterResponse pResponseStatus_ =
  CreateGlobalClusterResponse'
    { _cgcrrsGlobalCluster =
        Nothing,
      _cgcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cgcrrsGlobalCluster :: Lens' CreateGlobalClusterResponse (Maybe GlobalCluster)
cgcrrsGlobalCluster = lens _cgcrrsGlobalCluster (\s a -> s {_cgcrrsGlobalCluster = a})

-- | -- | The response status code.
cgcrrsResponseStatus :: Lens' CreateGlobalClusterResponse Int
cgcrrsResponseStatus = lens _cgcrrsResponseStatus (\s a -> s {_cgcrrsResponseStatus = a})

instance NFData CreateGlobalClusterResponse
