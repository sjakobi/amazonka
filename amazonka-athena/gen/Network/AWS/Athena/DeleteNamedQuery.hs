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
-- Module      : Network.AWS.Athena.DeleteNamedQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the named query if you have access to the workgroup in which the query was saved.
--
--
-- For code samples using the AWS SDK for Java, see <http://docs.aws.amazon.com/athena/latest/ug/code-samples.html Examples and Code Samples> in the /Amazon Athena User Guide/ .
module Network.AWS.Athena.DeleteNamedQuery
  ( -- * Creating a Request
    deleteNamedQuery,
    DeleteNamedQuery,

    -- * Request Lenses
    dnqNamedQueryId,

    -- * Destructuring the Response
    deleteNamedQueryResponse,
    DeleteNamedQueryResponse,

    -- * Response Lenses
    dnqrrsResponseStatus,
  )
where

import Network.AWS.Athena.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteNamedQuery' smart constructor.
newtype DeleteNamedQuery = DeleteNamedQuery'
  { _dnqNamedQueryId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteNamedQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnqNamedQueryId' - The unique ID of the query to delete.
deleteNamedQuery ::
  -- | 'dnqNamedQueryId'
  Text ->
  DeleteNamedQuery
deleteNamedQuery pNamedQueryId_ =
  DeleteNamedQuery'
    { _dnqNamedQueryId =
        pNamedQueryId_
    }

-- | The unique ID of the query to delete.
dnqNamedQueryId :: Lens' DeleteNamedQuery Text
dnqNamedQueryId = lens _dnqNamedQueryId (\s a -> s {_dnqNamedQueryId = a})

instance AWSRequest DeleteNamedQuery where
  type Rs DeleteNamedQuery = DeleteNamedQueryResponse
  request = postJSON athena
  response =
    receiveEmpty
      ( \s h x ->
          DeleteNamedQueryResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteNamedQuery

instance NFData DeleteNamedQuery

instance ToHeaders DeleteNamedQuery where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonAthena.DeleteNamedQuery" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteNamedQuery where
  toJSON DeleteNamedQuery' {..} =
    object
      ( catMaybes
          [Just ("NamedQueryId" .= _dnqNamedQueryId)]
      )

instance ToPath DeleteNamedQuery where
  toPath = const "/"

instance ToQuery DeleteNamedQuery where
  toQuery = const mempty

-- | /See:/ 'deleteNamedQueryResponse' smart constructor.
newtype DeleteNamedQueryResponse = DeleteNamedQueryResponse'
  { _dnqrrsResponseStatus ::
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

-- | Creates a value of 'DeleteNamedQueryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnqrrsResponseStatus' - -- | The response status code.
deleteNamedQueryResponse ::
  -- | 'dnqrrsResponseStatus'
  Int ->
  DeleteNamedQueryResponse
deleteNamedQueryResponse pResponseStatus_ =
  DeleteNamedQueryResponse'
    { _dnqrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dnqrrsResponseStatus :: Lens' DeleteNamedQueryResponse Int
dnqrrsResponseStatus = lens _dnqrrsResponseStatus (\s a -> s {_dnqrrsResponseStatus = a})

instance NFData DeleteNamedQueryResponse
