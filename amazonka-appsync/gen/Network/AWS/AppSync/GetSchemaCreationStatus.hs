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
-- Module      : Network.AWS.AppSync.GetSchemaCreationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the current status of a schema creation operation.
module Network.AWS.AppSync.GetSchemaCreationStatus
  ( -- * Creating a Request
    getSchemaCreationStatus,
    GetSchemaCreationStatus,

    -- * Request Lenses
    gscsApiId,

    -- * Destructuring the Response
    getSchemaCreationStatusResponse,
    GetSchemaCreationStatusResponse,

    -- * Response Lenses
    gscsrrsStatus,
    gscsrrsDetails,
    gscsrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSchemaCreationStatus' smart constructor.
newtype GetSchemaCreationStatus = GetSchemaCreationStatus'
  { _gscsApiId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetSchemaCreationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscsApiId' - The API ID.
getSchemaCreationStatus ::
  -- | 'gscsApiId'
  Text ->
  GetSchemaCreationStatus
getSchemaCreationStatus pApiId_ =
  GetSchemaCreationStatus' {_gscsApiId = pApiId_}

-- | The API ID.
gscsApiId :: Lens' GetSchemaCreationStatus Text
gscsApiId = lens _gscsApiId (\s a -> s {_gscsApiId = a})

instance AWSRequest GetSchemaCreationStatus where
  type
    Rs GetSchemaCreationStatus =
      GetSchemaCreationStatusResponse
  request = get appSync
  response =
    receiveJSON
      ( \s h x ->
          GetSchemaCreationStatusResponse'
            <$> (x .?> "status")
            <*> (x .?> "details")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSchemaCreationStatus

instance NFData GetSchemaCreationStatus

instance ToHeaders GetSchemaCreationStatus where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSchemaCreationStatus where
  toPath GetSchemaCreationStatus' {..} =
    mconcat
      ["/v1/apis/", toBS _gscsApiId, "/schemacreation"]

instance ToQuery GetSchemaCreationStatus where
  toQuery = const mempty

-- | /See:/ 'getSchemaCreationStatusResponse' smart constructor.
data GetSchemaCreationStatusResponse = GetSchemaCreationStatusResponse'
  { _gscsrrsStatus ::
      !( Maybe
           SchemaStatus
       ),
    _gscsrrsDetails ::
      !( Maybe
           Text
       ),
    _gscsrrsResponseStatus ::
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

-- | Creates a value of 'GetSchemaCreationStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gscsrrsStatus' - The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When the schema is in the ACTIVE state, you can add data.
--
-- * 'gscsrrsDetails' - Detailed information about the status of the schema creation operation.
--
-- * 'gscsrrsResponseStatus' - -- | The response status code.
getSchemaCreationStatusResponse ::
  -- | 'gscsrrsResponseStatus'
  Int ->
  GetSchemaCreationStatusResponse
getSchemaCreationStatusResponse pResponseStatus_ =
  GetSchemaCreationStatusResponse'
    { _gscsrrsStatus =
        Nothing,
      _gscsrrsDetails = Nothing,
      _gscsrrsResponseStatus = pResponseStatus_
    }

-- | The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When the schema is in the ACTIVE state, you can add data.
gscsrrsStatus :: Lens' GetSchemaCreationStatusResponse (Maybe SchemaStatus)
gscsrrsStatus = lens _gscsrrsStatus (\s a -> s {_gscsrrsStatus = a})

-- | Detailed information about the status of the schema creation operation.
gscsrrsDetails :: Lens' GetSchemaCreationStatusResponse (Maybe Text)
gscsrrsDetails = lens _gscsrrsDetails (\s a -> s {_gscsrrsDetails = a})

-- | -- | The response status code.
gscsrrsResponseStatus :: Lens' GetSchemaCreationStatusResponse Int
gscsrrsResponseStatus = lens _gscsrrsResponseStatus (\s a -> s {_gscsrrsResponseStatus = a})

instance NFData GetSchemaCreationStatusResponse
