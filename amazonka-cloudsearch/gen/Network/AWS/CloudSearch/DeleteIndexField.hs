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
-- Module      : Network.AWS.CloudSearch.DeleteIndexField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an @'IndexField' @ from the search domain. For more information, see <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html Configuring Index Fields> in the /Amazon CloudSearch Developer Guide/ .
module Network.AWS.CloudSearch.DeleteIndexField
  ( -- * Creating a Request
    deleteIndexField,
    DeleteIndexField,

    -- * Request Lenses
    difDomainName,
    difIndexFieldName,

    -- * Destructuring the Response
    deleteIndexFieldResponse,
    DeleteIndexFieldResponse,

    -- * Response Lenses
    difrirsResponseStatus,
    difrirsIndexField,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'DeleteIndexField' @ operation. Specifies the name of the domain you want to update and the name of the index field you want to delete.
--
--
--
-- /See:/ 'deleteIndexField' smart constructor.
data DeleteIndexField = DeleteIndexField'
  { _difDomainName ::
      !Text,
    _difIndexFieldName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteIndexField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'difDomainName' - Undocumented member.
--
-- * 'difIndexFieldName' - The name of the index field your want to remove from the domain's indexing options.
deleteIndexField ::
  -- | 'difDomainName'
  Text ->
  -- | 'difIndexFieldName'
  Text ->
  DeleteIndexField
deleteIndexField pDomainName_ pIndexFieldName_ =
  DeleteIndexField'
    { _difDomainName = pDomainName_,
      _difIndexFieldName = pIndexFieldName_
    }

-- | Undocumented member.
difDomainName :: Lens' DeleteIndexField Text
difDomainName = lens _difDomainName (\s a -> s {_difDomainName = a})

-- | The name of the index field your want to remove from the domain's indexing options.
difIndexFieldName :: Lens' DeleteIndexField Text
difIndexFieldName = lens _difIndexFieldName (\s a -> s {_difIndexFieldName = a})

instance AWSRequest DeleteIndexField where
  type Rs DeleteIndexField = DeleteIndexFieldResponse
  request = postQuery cloudSearch
  response =
    receiveXMLWrapper
      "DeleteIndexFieldResult"
      ( \s h x ->
          DeleteIndexFieldResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "IndexField")
      )

instance Hashable DeleteIndexField

instance NFData DeleteIndexField

instance ToHeaders DeleteIndexField where
  toHeaders = const mempty

instance ToPath DeleteIndexField where
  toPath = const "/"

instance ToQuery DeleteIndexField where
  toQuery DeleteIndexField' {..} =
    mconcat
      [ "Action" =: ("DeleteIndexField" :: ByteString),
        "Version" =: ("2013-01-01" :: ByteString),
        "DomainName" =: _difDomainName,
        "IndexFieldName" =: _difIndexFieldName
      ]

-- | The result of a @'DeleteIndexField' @ request.
--
--
--
-- /See:/ 'deleteIndexFieldResponse' smart constructor.
data DeleteIndexFieldResponse = DeleteIndexFieldResponse'
  { _difrirsResponseStatus ::
      !Int,
    _difrirsIndexField ::
      !IndexFieldStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteIndexFieldResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'difrirsResponseStatus' - -- | The response status code.
--
-- * 'difrirsIndexField' - The status of the index field being deleted.
deleteIndexFieldResponse ::
  -- | 'difrirsResponseStatus'
  Int ->
  -- | 'difrirsIndexField'
  IndexFieldStatus ->
  DeleteIndexFieldResponse
deleteIndexFieldResponse
  pResponseStatus_
  pIndexField_ =
    DeleteIndexFieldResponse'
      { _difrirsResponseStatus =
          pResponseStatus_,
        _difrirsIndexField = pIndexField_
      }

-- | -- | The response status code.
difrirsResponseStatus :: Lens' DeleteIndexFieldResponse Int
difrirsResponseStatus = lens _difrirsResponseStatus (\s a -> s {_difrirsResponseStatus = a})

-- | The status of the index field being deleted.
difrirsIndexField :: Lens' DeleteIndexFieldResponse IndexFieldStatus
difrirsIndexField = lens _difrirsIndexField (\s a -> s {_difrirsIndexField = a})

instance NFData DeleteIndexFieldResponse
