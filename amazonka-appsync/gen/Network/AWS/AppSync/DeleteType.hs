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
-- Module      : Network.AWS.AppSync.DeleteType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a @Type@ object.
module Network.AWS.AppSync.DeleteType
  ( -- * Creating a Request
    deleteType,
    DeleteType,

    -- * Request Lenses
    dtApiId,
    dtTypeName,

    -- * Destructuring the Response
    deleteTypeResponse,
    DeleteTypeResponse,

    -- * Response Lenses
    dtrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteType' smart constructor.
data DeleteType = DeleteType'
  { _dtApiId :: !Text,
    _dtTypeName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtApiId' - The API ID.
--
-- * 'dtTypeName' - The type name.
deleteType ::
  -- | 'dtApiId'
  Text ->
  -- | 'dtTypeName'
  Text ->
  DeleteType
deleteType pApiId_ pTypeName_ =
  DeleteType'
    { _dtApiId = pApiId_,
      _dtTypeName = pTypeName_
    }

-- | The API ID.
dtApiId :: Lens' DeleteType Text
dtApiId = lens _dtApiId (\s a -> s {_dtApiId = a})

-- | The type name.
dtTypeName :: Lens' DeleteType Text
dtTypeName = lens _dtTypeName (\s a -> s {_dtTypeName = a})

instance AWSRequest DeleteType where
  type Rs DeleteType = DeleteTypeResponse
  request = delete appSync
  response =
    receiveEmpty
      ( \s h x ->
          DeleteTypeResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteType

instance NFData DeleteType

instance ToHeaders DeleteType where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteType where
  toPath DeleteType' {..} =
    mconcat
      [ "/v1/apis/",
        toBS _dtApiId,
        "/types/",
        toBS _dtTypeName
      ]

instance ToQuery DeleteType where
  toQuery = const mempty

-- | /See:/ 'deleteTypeResponse' smart constructor.
newtype DeleteTypeResponse = DeleteTypeResponse'
  { _dtrrsResponseStatus ::
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

-- | Creates a value of 'DeleteTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
deleteTypeResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DeleteTypeResponse
deleteTypeResponse pResponseStatus_ =
  DeleteTypeResponse'
    { _dtrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DeleteTypeResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DeleteTypeResponse
