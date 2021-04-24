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
-- Module      : Network.AWS.ServiceCatalog.DeleteTagOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified TagOption.
--
--
-- You cannot delete a TagOption if it is associated with a product or portfolio.
module Network.AWS.ServiceCatalog.DeleteTagOption
  ( -- * Creating a Request
    deleteTagOption,
    DeleteTagOption,

    -- * Request Lenses
    dId,

    -- * Destructuring the Response
    deleteTagOptionResponse,
    DeleteTagOptionResponse,

    -- * Response Lenses
    delrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.ServiceCatalog.Types

-- | /See:/ 'deleteTagOption' smart constructor.
newtype DeleteTagOption = DeleteTagOption'
  { _dId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTagOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dId' - The TagOption identifier.
deleteTagOption ::
  -- | 'dId'
  Text ->
  DeleteTagOption
deleteTagOption pId_ = DeleteTagOption' {_dId = pId_}

-- | The TagOption identifier.
dId :: Lens' DeleteTagOption Text
dId = lens _dId (\s a -> s {_dId = a})

instance AWSRequest DeleteTagOption where
  type Rs DeleteTagOption = DeleteTagOptionResponse
  request = postJSON serviceCatalog
  response =
    receiveEmpty
      ( \s h x ->
          DeleteTagOptionResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteTagOption

instance NFData DeleteTagOption

instance ToHeaders DeleteTagOption where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWS242ServiceCatalogService.DeleteTagOption" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteTagOption where
  toJSON DeleteTagOption' {..} =
    object (catMaybes [Just ("Id" .= _dId)])

instance ToPath DeleteTagOption where
  toPath = const "/"

instance ToQuery DeleteTagOption where
  toQuery = const mempty

-- | /See:/ 'deleteTagOptionResponse' smart constructor.
newtype DeleteTagOptionResponse = DeleteTagOptionResponse'
  { _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteTagOptionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteTagOptionResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteTagOptionResponse
deleteTagOptionResponse pResponseStatus_ =
  DeleteTagOptionResponse'
    { _delrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteTagOptionResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteTagOptionResponse
