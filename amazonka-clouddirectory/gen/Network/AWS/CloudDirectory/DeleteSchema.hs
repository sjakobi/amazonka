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
-- Module      : Network.AWS.CloudDirectory.DeleteSchema
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a given schema. Schemas in a development and published state can only be deleted.
module Network.AWS.CloudDirectory.DeleteSchema
  ( -- * Creating a Request
    deleteSchema,
    DeleteSchema,

    -- * Request Lenses
    dsSchemaARN,

    -- * Destructuring the Response
    deleteSchemaResponse,
    DeleteSchemaResponse,

    -- * Response Lenses
    dsrrsSchemaARN,
    dsrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteSchema' smart constructor.
newtype DeleteSchema = DeleteSchema'
  { _dsSchemaARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsSchemaARN' - The Amazon Resource Name (ARN) of the development schema. For more information, see 'arns' .
deleteSchema ::
  -- | 'dsSchemaARN'
  Text ->
  DeleteSchema
deleteSchema pSchemaARN_ =
  DeleteSchema' {_dsSchemaARN = pSchemaARN_}

-- | The Amazon Resource Name (ARN) of the development schema. For more information, see 'arns' .
dsSchemaARN :: Lens' DeleteSchema Text
dsSchemaARN = lens _dsSchemaARN (\s a -> s {_dsSchemaARN = a})

instance AWSRequest DeleteSchema where
  type Rs DeleteSchema = DeleteSchemaResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          DeleteSchemaResponse'
            <$> (x .?> "SchemaArn") <*> (pure (fromEnum s))
      )

instance Hashable DeleteSchema

instance NFData DeleteSchema

instance ToHeaders DeleteSchema where
  toHeaders DeleteSchema' {..} =
    mconcat ["x-amz-data-partition" =# _dsSchemaARN]

instance ToJSON DeleteSchema where
  toJSON = const (Object mempty)

instance ToPath DeleteSchema where
  toPath =
    const "/amazonclouddirectory/2017-01-11/schema"

instance ToQuery DeleteSchema where
  toQuery = const mempty

-- | /See:/ 'deleteSchemaResponse' smart constructor.
data DeleteSchemaResponse = DeleteSchemaResponse'
  { _dsrrsSchemaARN ::
      !(Maybe Text),
    _dsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSchemaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsSchemaARN' - The input ARN that is returned as part of the response. For more information, see 'arns' .
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
deleteSchemaResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DeleteSchemaResponse
deleteSchemaResponse pResponseStatus_ =
  DeleteSchemaResponse'
    { _dsrrsSchemaARN = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The input ARN that is returned as part of the response. For more information, see 'arns' .
dsrrsSchemaARN :: Lens' DeleteSchemaResponse (Maybe Text)
dsrrsSchemaARN = lens _dsrrsSchemaARN (\s a -> s {_dsrrsSchemaARN = a})

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DeleteSchemaResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DeleteSchemaResponse
