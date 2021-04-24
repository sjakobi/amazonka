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
-- Module      : Network.AWS.Glue.DeleteClassifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a classifier from the Data Catalog.
module Network.AWS.Glue.DeleteClassifier
  ( -- * Creating a Request
    deleteClassifier,
    DeleteClassifier,

    -- * Request Lenses
    dcName,

    -- * Destructuring the Response
    deleteClassifierResponse,
    DeleteClassifierResponse,

    -- * Response Lenses
    dcrcrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteClassifier' smart constructor.
newtype DeleteClassifier = DeleteClassifier'
  { _dcName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteClassifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcName' - Name of the classifier to remove.
deleteClassifier ::
  -- | 'dcName'
  Text ->
  DeleteClassifier
deleteClassifier pName_ =
  DeleteClassifier' {_dcName = pName_}

-- | Name of the classifier to remove.
dcName :: Lens' DeleteClassifier Text
dcName = lens _dcName (\s a -> s {_dcName = a})

instance AWSRequest DeleteClassifier where
  type Rs DeleteClassifier = DeleteClassifierResponse
  request = postJSON glue
  response =
    receiveEmpty
      ( \s h x ->
          DeleteClassifierResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteClassifier

instance NFData DeleteClassifier

instance ToHeaders DeleteClassifier where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.DeleteClassifier" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteClassifier where
  toJSON DeleteClassifier' {..} =
    object (catMaybes [Just ("Name" .= _dcName)])

instance ToPath DeleteClassifier where
  toPath = const "/"

instance ToQuery DeleteClassifier where
  toQuery = const mempty

-- | /See:/ 'deleteClassifierResponse' smart constructor.
newtype DeleteClassifierResponse = DeleteClassifierResponse'
  { _dcrcrsResponseStatus ::
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

-- | Creates a value of 'DeleteClassifierResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrcrsResponseStatus' - -- | The response status code.
deleteClassifierResponse ::
  -- | 'dcrcrsResponseStatus'
  Int ->
  DeleteClassifierResponse
deleteClassifierResponse pResponseStatus_ =
  DeleteClassifierResponse'
    { _dcrcrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dcrcrsResponseStatus :: Lens' DeleteClassifierResponse Int
dcrcrsResponseStatus = lens _dcrcrsResponseStatus (\s a -> s {_dcrcrsResponseStatus = a})

instance NFData DeleteClassifierResponse
