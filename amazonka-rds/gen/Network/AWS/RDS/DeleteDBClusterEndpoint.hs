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
-- Module      : Network.AWS.RDS.DeleteDBClusterEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster.
module Network.AWS.RDS.DeleteDBClusterEndpoint
  ( -- * Creating a Request
    deleteDBClusterEndpoint,
    DeleteDBClusterEndpoint,

    -- * Request Lenses
    ddbceDBClusterEndpointIdentifier,

    -- * Destructuring the Response
    dbClusterEndpoint,
    DBClusterEndpoint,

    -- * Response Lenses
    dceDBClusterEndpointIdentifier,
    dceStatus,
    dceExcludedMembers,
    dceEndpointType,
    dceCustomEndpointType,
    dceDBClusterEndpointARN,
    dceDBClusterIdentifier,
    dceDBClusterEndpointResourceIdentifier,
    dceEndpoint,
    dceStaticMembers,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDBClusterEndpoint' smart constructor.
newtype DeleteDBClusterEndpoint = DeleteDBClusterEndpoint'
  { _ddbceDBClusterEndpointIdentifier ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteDBClusterEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbceDBClusterEndpointIdentifier' - The identifier associated with the custom endpoint. This parameter is stored as a lowercase string.
deleteDBClusterEndpoint ::
  -- | 'ddbceDBClusterEndpointIdentifier'
  Text ->
  DeleteDBClusterEndpoint
deleteDBClusterEndpoint pDBClusterEndpointIdentifier_ =
  DeleteDBClusterEndpoint'
    { _ddbceDBClusterEndpointIdentifier =
        pDBClusterEndpointIdentifier_
    }

-- | The identifier associated with the custom endpoint. This parameter is stored as a lowercase string.
ddbceDBClusterEndpointIdentifier :: Lens' DeleteDBClusterEndpoint Text
ddbceDBClusterEndpointIdentifier = lens _ddbceDBClusterEndpointIdentifier (\s a -> s {_ddbceDBClusterEndpointIdentifier = a})

instance AWSRequest DeleteDBClusterEndpoint where
  type Rs DeleteDBClusterEndpoint = DBClusterEndpoint
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteDBClusterEndpointResult"
      (\s h x -> parseXML x)

instance Hashable DeleteDBClusterEndpoint

instance NFData DeleteDBClusterEndpoint

instance ToHeaders DeleteDBClusterEndpoint where
  toHeaders = const mempty

instance ToPath DeleteDBClusterEndpoint where
  toPath = const "/"

instance ToQuery DeleteDBClusterEndpoint where
  toQuery DeleteDBClusterEndpoint' {..} =
    mconcat
      [ "Action"
          =: ("DeleteDBClusterEndpoint" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBClusterEndpointIdentifier"
          =: _ddbceDBClusterEndpointIdentifier
      ]
