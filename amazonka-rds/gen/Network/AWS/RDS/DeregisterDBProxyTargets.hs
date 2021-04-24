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
-- Module      : Network.AWS.RDS.DeregisterDBProxyTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove the association between one or more @DBProxyTarget@ data structures and a @DBProxyTargetGroup@ .
module Network.AWS.RDS.DeregisterDBProxyTargets
  ( -- * Creating a Request
    deregisterDBProxyTargets,
    DeregisterDBProxyTargets,

    -- * Request Lenses
    ddptDBClusterIdentifiers,
    ddptTargetGroupName,
    ddptDBInstanceIdentifiers,
    ddptDBProxyName,

    -- * Destructuring the Response
    deregisterDBProxyTargetsResponse,
    DeregisterDBProxyTargetsResponse,

    -- * Response Lenses
    ddbptrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deregisterDBProxyTargets' smart constructor.
data DeregisterDBProxyTargets = DeregisterDBProxyTargets'
  { _ddptDBClusterIdentifiers ::
      !(Maybe [Text]),
    _ddptTargetGroupName ::
      !(Maybe Text),
    _ddptDBInstanceIdentifiers ::
      !(Maybe [Text]),
    _ddptDBProxyName ::
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

-- | Creates a value of 'DeregisterDBProxyTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddptDBClusterIdentifiers' - One or more DB cluster identifiers.
--
-- * 'ddptTargetGroupName' - The identifier of the @DBProxyTargetGroup@ .
--
-- * 'ddptDBInstanceIdentifiers' - One or more DB instance identifiers.
--
-- * 'ddptDBProxyName' - The identifier of the @DBProxy@ that is associated with the @DBProxyTargetGroup@ .
deregisterDBProxyTargets ::
  -- | 'ddptDBProxyName'
  Text ->
  DeregisterDBProxyTargets
deregisterDBProxyTargets pDBProxyName_ =
  DeregisterDBProxyTargets'
    { _ddptDBClusterIdentifiers =
        Nothing,
      _ddptTargetGroupName = Nothing,
      _ddptDBInstanceIdentifiers = Nothing,
      _ddptDBProxyName = pDBProxyName_
    }

-- | One or more DB cluster identifiers.
ddptDBClusterIdentifiers :: Lens' DeregisterDBProxyTargets [Text]
ddptDBClusterIdentifiers = lens _ddptDBClusterIdentifiers (\s a -> s {_ddptDBClusterIdentifiers = a}) . _Default . _Coerce

-- | The identifier of the @DBProxyTargetGroup@ .
ddptTargetGroupName :: Lens' DeregisterDBProxyTargets (Maybe Text)
ddptTargetGroupName = lens _ddptTargetGroupName (\s a -> s {_ddptTargetGroupName = a})

-- | One or more DB instance identifiers.
ddptDBInstanceIdentifiers :: Lens' DeregisterDBProxyTargets [Text]
ddptDBInstanceIdentifiers = lens _ddptDBInstanceIdentifiers (\s a -> s {_ddptDBInstanceIdentifiers = a}) . _Default . _Coerce

-- | The identifier of the @DBProxy@ that is associated with the @DBProxyTargetGroup@ .
ddptDBProxyName :: Lens' DeregisterDBProxyTargets Text
ddptDBProxyName = lens _ddptDBProxyName (\s a -> s {_ddptDBProxyName = a})

instance AWSRequest DeregisterDBProxyTargets where
  type
    Rs DeregisterDBProxyTargets =
      DeregisterDBProxyTargetsResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeregisterDBProxyTargetsResult"
      ( \s h x ->
          DeregisterDBProxyTargetsResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeregisterDBProxyTargets

instance NFData DeregisterDBProxyTargets

instance ToHeaders DeregisterDBProxyTargets where
  toHeaders = const mempty

instance ToPath DeregisterDBProxyTargets where
  toPath = const "/"

instance ToQuery DeregisterDBProxyTargets where
  toQuery DeregisterDBProxyTargets' {..} =
    mconcat
      [ "Action"
          =: ("DeregisterDBProxyTargets" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBClusterIdentifiers"
          =: toQuery
            (toQueryList "member" <$> _ddptDBClusterIdentifiers),
        "TargetGroupName" =: _ddptTargetGroupName,
        "DBInstanceIdentifiers"
          =: toQuery
            ( toQueryList "member"
                <$> _ddptDBInstanceIdentifiers
            ),
        "DBProxyName" =: _ddptDBProxyName
      ]

-- | /See:/ 'deregisterDBProxyTargetsResponse' smart constructor.
newtype DeregisterDBProxyTargetsResponse = DeregisterDBProxyTargetsResponse'
  { _ddbptrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeregisterDBProxyTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbptrrsResponseStatus' - -- | The response status code.
deregisterDBProxyTargetsResponse ::
  -- | 'ddbptrrsResponseStatus'
  Int ->
  DeregisterDBProxyTargetsResponse
deregisterDBProxyTargetsResponse pResponseStatus_ =
  DeregisterDBProxyTargetsResponse'
    { _ddbptrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ddbptrrsResponseStatus :: Lens' DeregisterDBProxyTargetsResponse Int
ddbptrrsResponseStatus = lens _ddbptrrsResponseStatus (\s a -> s {_ddbptrrsResponseStatus = a})

instance NFData DeregisterDBProxyTargetsResponse
