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
-- Module      : Network.AWS.RDS.DeleteDBProxy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing proxy.
module Network.AWS.RDS.DeleteDBProxy
  ( -- * Creating a Request
    deleteDBProxy,
    DeleteDBProxy,

    -- * Request Lenses
    ddbpDBProxyName,

    -- * Destructuring the Response
    deleteDBProxyResponse,
    DeleteDBProxyResponse,

    -- * Response Lenses
    ddprdrsDBProxy,
    ddprdrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDBProxy' smart constructor.
newtype DeleteDBProxy = DeleteDBProxy'
  { _ddbpDBProxyName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDBProxy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbpDBProxyName' - The name of the DB proxy to delete.
deleteDBProxy ::
  -- | 'ddbpDBProxyName'
  Text ->
  DeleteDBProxy
deleteDBProxy pDBProxyName_ =
  DeleteDBProxy' {_ddbpDBProxyName = pDBProxyName_}

-- | The name of the DB proxy to delete.
ddbpDBProxyName :: Lens' DeleteDBProxy Text
ddbpDBProxyName = lens _ddbpDBProxyName (\s a -> s {_ddbpDBProxyName = a})

instance AWSRequest DeleteDBProxy where
  type Rs DeleteDBProxy = DeleteDBProxyResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteDBProxyResult"
      ( \s h x ->
          DeleteDBProxyResponse'
            <$> (x .@? "DBProxy") <*> (pure (fromEnum s))
      )

instance Hashable DeleteDBProxy

instance NFData DeleteDBProxy

instance ToHeaders DeleteDBProxy where
  toHeaders = const mempty

instance ToPath DeleteDBProxy where
  toPath = const "/"

instance ToQuery DeleteDBProxy where
  toQuery DeleteDBProxy' {..} =
    mconcat
      [ "Action" =: ("DeleteDBProxy" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBProxyName" =: _ddbpDBProxyName
      ]

-- | /See:/ 'deleteDBProxyResponse' smart constructor.
data DeleteDBProxyResponse = DeleteDBProxyResponse'
  { _ddprdrsDBProxy ::
      !(Maybe DBProxy),
    _ddprdrsResponseStatus ::
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

-- | Creates a value of 'DeleteDBProxyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddprdrsDBProxy' - The data structure representing the details of the DB proxy that you delete.
--
-- * 'ddprdrsResponseStatus' - -- | The response status code.
deleteDBProxyResponse ::
  -- | 'ddprdrsResponseStatus'
  Int ->
  DeleteDBProxyResponse
deleteDBProxyResponse pResponseStatus_ =
  DeleteDBProxyResponse'
    { _ddprdrsDBProxy = Nothing,
      _ddprdrsResponseStatus = pResponseStatus_
    }

-- | The data structure representing the details of the DB proxy that you delete.
ddprdrsDBProxy :: Lens' DeleteDBProxyResponse (Maybe DBProxy)
ddprdrsDBProxy = lens _ddprdrsDBProxy (\s a -> s {_ddprdrsDBProxy = a})

-- | -- | The response status code.
ddprdrsResponseStatus :: Lens' DeleteDBProxyResponse Int
ddprdrsResponseStatus = lens _ddprdrsResponseStatus (\s a -> s {_ddprdrsResponseStatus = a})

instance NFData DeleteDBProxyResponse
