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
-- Module      : Network.AWS.AppSync.DeleteResolver
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a @Resolver@ object.
module Network.AWS.AppSync.DeleteResolver
  ( -- * Creating a Request
    deleteResolver,
    DeleteResolver,

    -- * Request Lenses
    drApiId,
    drTypeName,
    drFieldName,

    -- * Destructuring the Response
    deleteResolverResponse,
    DeleteResolverResponse,

    -- * Response Lenses
    drrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteResolver' smart constructor.
data DeleteResolver = DeleteResolver'
  { _drApiId ::
      !Text,
    _drTypeName :: !Text,
    _drFieldName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteResolver' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drApiId' - The API ID.
--
-- * 'drTypeName' - The name of the resolver type.
--
-- * 'drFieldName' - The resolver field name.
deleteResolver ::
  -- | 'drApiId'
  Text ->
  -- | 'drTypeName'
  Text ->
  -- | 'drFieldName'
  Text ->
  DeleteResolver
deleteResolver pApiId_ pTypeName_ pFieldName_ =
  DeleteResolver'
    { _drApiId = pApiId_,
      _drTypeName = pTypeName_,
      _drFieldName = pFieldName_
    }

-- | The API ID.
drApiId :: Lens' DeleteResolver Text
drApiId = lens _drApiId (\s a -> s {_drApiId = a})

-- | The name of the resolver type.
drTypeName :: Lens' DeleteResolver Text
drTypeName = lens _drTypeName (\s a -> s {_drTypeName = a})

-- | The resolver field name.
drFieldName :: Lens' DeleteResolver Text
drFieldName = lens _drFieldName (\s a -> s {_drFieldName = a})

instance AWSRequest DeleteResolver where
  type Rs DeleteResolver = DeleteResolverResponse
  request = delete appSync
  response =
    receiveEmpty
      ( \s h x ->
          DeleteResolverResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteResolver

instance NFData DeleteResolver

instance ToHeaders DeleteResolver where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteResolver where
  toPath DeleteResolver' {..} =
    mconcat
      [ "/v1/apis/",
        toBS _drApiId,
        "/types/",
        toBS _drTypeName,
        "/resolvers/",
        toBS _drFieldName
      ]

instance ToQuery DeleteResolver where
  toQuery = const mempty

-- | /See:/ 'deleteResolverResponse' smart constructor.
newtype DeleteResolverResponse = DeleteResolverResponse'
  { _drrrsResponseStatus ::
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

-- | Creates a value of 'DeleteResolverResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsResponseStatus' - -- | The response status code.
deleteResolverResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DeleteResolverResponse
deleteResolverResponse pResponseStatus_ =
  DeleteResolverResponse'
    { _drrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DeleteResolverResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DeleteResolverResponse
