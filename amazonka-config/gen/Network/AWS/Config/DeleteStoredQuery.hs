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
-- Module      : Network.AWS.Config.DeleteStoredQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the stored query for a single AWS account and a single AWS Region.
module Network.AWS.Config.DeleteStoredQuery
  ( -- * Creating a Request
    deleteStoredQuery,
    DeleteStoredQuery,

    -- * Request Lenses
    dsqQueryName,

    -- * Destructuring the Response
    deleteStoredQueryResponse,
    DeleteStoredQueryResponse,

    -- * Response Lenses
    dsqrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteStoredQuery' smart constructor.
newtype DeleteStoredQuery = DeleteStoredQuery'
  { _dsqQueryName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteStoredQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsqQueryName' - The name of the query that you want to delete.
deleteStoredQuery ::
  -- | 'dsqQueryName'
  Text ->
  DeleteStoredQuery
deleteStoredQuery pQueryName_ =
  DeleteStoredQuery' {_dsqQueryName = pQueryName_}

-- | The name of the query that you want to delete.
dsqQueryName :: Lens' DeleteStoredQuery Text
dsqQueryName = lens _dsqQueryName (\s a -> s {_dsqQueryName = a})

instance AWSRequest DeleteStoredQuery where
  type Rs DeleteStoredQuery = DeleteStoredQueryResponse
  request = postJSON config
  response =
    receiveEmpty
      ( \s h x ->
          DeleteStoredQueryResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteStoredQuery

instance NFData DeleteStoredQuery

instance ToHeaders DeleteStoredQuery where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DeleteStoredQuery" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteStoredQuery where
  toJSON DeleteStoredQuery' {..} =
    object
      (catMaybes [Just ("QueryName" .= _dsqQueryName)])

instance ToPath DeleteStoredQuery where
  toPath = const "/"

instance ToQuery DeleteStoredQuery where
  toQuery = const mempty

-- | /See:/ 'deleteStoredQueryResponse' smart constructor.
newtype DeleteStoredQueryResponse = DeleteStoredQueryResponse'
  { _dsqrrsResponseStatus ::
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

-- | Creates a value of 'DeleteStoredQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsqrrsResponseStatus' - -- | The response status code.
deleteStoredQueryResponse ::
  -- | 'dsqrrsResponseStatus'
  Int ->
  DeleteStoredQueryResponse
deleteStoredQueryResponse pResponseStatus_ =
  DeleteStoredQueryResponse'
    { _dsqrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dsqrrsResponseStatus :: Lens' DeleteStoredQueryResponse Int
dsqrrsResponseStatus = lens _dsqrrsResponseStatus (\s a -> s {_dsqrrsResponseStatus = a})

instance NFData DeleteStoredQueryResponse
