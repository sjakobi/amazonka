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
-- Module      : Network.AWS.Glue.GetCatalogImportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status of a migration operation.
module Network.AWS.Glue.GetCatalogImportStatus
  ( -- * Creating a Request
    getCatalogImportStatus,
    GetCatalogImportStatus,

    -- * Request Lenses
    gcisCatalogId,

    -- * Destructuring the Response
    getCatalogImportStatusResponse,
    GetCatalogImportStatusResponse,

    -- * Response Lenses
    gcisrrsImportStatus,
    gcisrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getCatalogImportStatus' smart constructor.
newtype GetCatalogImportStatus = GetCatalogImportStatus'
  { _gcisCatalogId ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetCatalogImportStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcisCatalogId' - The ID of the catalog to migrate. Currently, this should be the AWS account ID.
getCatalogImportStatus ::
  GetCatalogImportStatus
getCatalogImportStatus =
  GetCatalogImportStatus' {_gcisCatalogId = Nothing}

-- | The ID of the catalog to migrate. Currently, this should be the AWS account ID.
gcisCatalogId :: Lens' GetCatalogImportStatus (Maybe Text)
gcisCatalogId = lens _gcisCatalogId (\s a -> s {_gcisCatalogId = a})

instance AWSRequest GetCatalogImportStatus where
  type
    Rs GetCatalogImportStatus =
      GetCatalogImportStatusResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetCatalogImportStatusResponse'
            <$> (x .?> "ImportStatus") <*> (pure (fromEnum s))
      )

instance Hashable GetCatalogImportStatus

instance NFData GetCatalogImportStatus

instance ToHeaders GetCatalogImportStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetCatalogImportStatus" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCatalogImportStatus where
  toJSON GetCatalogImportStatus' {..} =
    object
      (catMaybes [("CatalogId" .=) <$> _gcisCatalogId])

instance ToPath GetCatalogImportStatus where
  toPath = const "/"

instance ToQuery GetCatalogImportStatus where
  toQuery = const mempty

-- | /See:/ 'getCatalogImportStatusResponse' smart constructor.
data GetCatalogImportStatusResponse = GetCatalogImportStatusResponse'
  { _gcisrrsImportStatus ::
      !( Maybe
           CatalogImportStatus
       ),
    _gcisrrsResponseStatus ::
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

-- | Creates a value of 'GetCatalogImportStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcisrrsImportStatus' - The status of the specified catalog migration.
--
-- * 'gcisrrsResponseStatus' - -- | The response status code.
getCatalogImportStatusResponse ::
  -- | 'gcisrrsResponseStatus'
  Int ->
  GetCatalogImportStatusResponse
getCatalogImportStatusResponse pResponseStatus_ =
  GetCatalogImportStatusResponse'
    { _gcisrrsImportStatus =
        Nothing,
      _gcisrrsResponseStatus = pResponseStatus_
    }

-- | The status of the specified catalog migration.
gcisrrsImportStatus :: Lens' GetCatalogImportStatusResponse (Maybe CatalogImportStatus)
gcisrrsImportStatus = lens _gcisrrsImportStatus (\s a -> s {_gcisrrsImportStatus = a})

-- | -- | The response status code.
gcisrrsResponseStatus :: Lens' GetCatalogImportStatusResponse Int
gcisrrsResponseStatus = lens _gcisrrsResponseStatus (\s a -> s {_gcisrrsResponseStatus = a})

instance NFData GetCatalogImportStatusResponse
