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
-- Module      : Network.AWS.SSM.DeleteDocument
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the Systems Manager document and all instance associations to the document.
--
--
-- Before you delete the document, we recommend that you use 'DeleteAssociation' to disassociate all instances that are associated with the document.
module Network.AWS.SSM.DeleteDocument
  ( -- * Creating a Request
    deleteDocument,
    DeleteDocument,

    -- * Request Lenses
    dForce,
    dVersionName,
    dDocumentVersion,
    dName,

    -- * Destructuring the Response
    deleteDocumentResponse,
    DeleteDocumentResponse,

    -- * Response Lenses
    ddrdrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deleteDocument' smart constructor.
data DeleteDocument = DeleteDocument'
  { _dForce ::
      !(Maybe Bool),
    _dVersionName :: !(Maybe Text),
    _dDocumentVersion :: !(Maybe Text),
    _dName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDocument' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dForce' - Some SSM document types require that you specify a @Force@ flag before you can delete the document. For example, you must specify a @Force@ flag to delete a document of type @ApplicationConfigurationSchema@ . You can restrict access to the @Force@ flag in an AWS Identity and Access Management (IAM) policy.
--
-- * 'dVersionName' - The version name of the document that you want to delete. If not provided, all versions of the document are deleted.
--
-- * 'dDocumentVersion' - The version of the document that you want to delete. If not provided, all versions of the document are deleted.
--
-- * 'dName' - The name of the document.
deleteDocument ::
  -- | 'dName'
  Text ->
  DeleteDocument
deleteDocument pName_ =
  DeleteDocument'
    { _dForce = Nothing,
      _dVersionName = Nothing,
      _dDocumentVersion = Nothing,
      _dName = pName_
    }

-- | Some SSM document types require that you specify a @Force@ flag before you can delete the document. For example, you must specify a @Force@ flag to delete a document of type @ApplicationConfigurationSchema@ . You can restrict access to the @Force@ flag in an AWS Identity and Access Management (IAM) policy.
dForce :: Lens' DeleteDocument (Maybe Bool)
dForce = lens _dForce (\s a -> s {_dForce = a})

-- | The version name of the document that you want to delete. If not provided, all versions of the document are deleted.
dVersionName :: Lens' DeleteDocument (Maybe Text)
dVersionName = lens _dVersionName (\s a -> s {_dVersionName = a})

-- | The version of the document that you want to delete. If not provided, all versions of the document are deleted.
dDocumentVersion :: Lens' DeleteDocument (Maybe Text)
dDocumentVersion = lens _dDocumentVersion (\s a -> s {_dDocumentVersion = a})

-- | The name of the document.
dName :: Lens' DeleteDocument Text
dName = lens _dName (\s a -> s {_dName = a})

instance AWSRequest DeleteDocument where
  type Rs DeleteDocument = DeleteDocumentResponse
  request = postJSON ssm
  response =
    receiveEmpty
      ( \s h x ->
          DeleteDocumentResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteDocument

instance NFData DeleteDocument

instance ToHeaders DeleteDocument where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DeleteDocument" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteDocument where
  toJSON DeleteDocument' {..} =
    object
      ( catMaybes
          [ ("Force" .=) <$> _dForce,
            ("VersionName" .=) <$> _dVersionName,
            ("DocumentVersion" .=) <$> _dDocumentVersion,
            Just ("Name" .= _dName)
          ]
      )

instance ToPath DeleteDocument where
  toPath = const "/"

instance ToQuery DeleteDocument where
  toQuery = const mempty

-- | /See:/ 'deleteDocumentResponse' smart constructor.
newtype DeleteDocumentResponse = DeleteDocumentResponse'
  { _ddrdrsResponseStatus ::
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

-- | Creates a value of 'DeleteDocumentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrdrsResponseStatus' - -- | The response status code.
deleteDocumentResponse ::
  -- | 'ddrdrsResponseStatus'
  Int ->
  DeleteDocumentResponse
deleteDocumentResponse pResponseStatus_ =
  DeleteDocumentResponse'
    { _ddrdrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ddrdrsResponseStatus :: Lens' DeleteDocumentResponse Int
ddrdrsResponseStatus = lens _ddrdrsResponseStatus (\s a -> s {_ddrdrsResponseStatus = a})

instance NFData DeleteDocumentResponse
