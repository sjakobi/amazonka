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
-- Module      : Network.AWS.Glue.GetDatabase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the definition of a specified database.
module Network.AWS.Glue.GetDatabase
  ( -- * Creating a Request
    getDatabase,
    GetDatabase,

    -- * Request Lenses
    gdCatalogId,
    gdName,

    -- * Destructuring the Response
    getDatabaseResponse,
    GetDatabaseResponse,

    -- * Response Lenses
    gdrrsDatabase,
    gdrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getDatabase' smart constructor.
data GetDatabase = GetDatabase'
  { _gdCatalogId ::
      !(Maybe Text),
    _gdName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDatabase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdCatalogId' - The ID of the Data Catalog in which the database resides. If none is provided, the AWS account ID is used by default.
--
-- * 'gdName' - The name of the database to retrieve. For Hive compatibility, this should be all lowercase.
getDatabase ::
  -- | 'gdName'
  Text ->
  GetDatabase
getDatabase pName_ =
  GetDatabase'
    { _gdCatalogId = Nothing,
      _gdName = pName_
    }

-- | The ID of the Data Catalog in which the database resides. If none is provided, the AWS account ID is used by default.
gdCatalogId :: Lens' GetDatabase (Maybe Text)
gdCatalogId = lens _gdCatalogId (\s a -> s {_gdCatalogId = a})

-- | The name of the database to retrieve. For Hive compatibility, this should be all lowercase.
gdName :: Lens' GetDatabase Text
gdName = lens _gdName (\s a -> s {_gdName = a})

instance AWSRequest GetDatabase where
  type Rs GetDatabase = GetDatabaseResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetDatabaseResponse'
            <$> (x .?> "Database") <*> (pure (fromEnum s))
      )

instance Hashable GetDatabase

instance NFData GetDatabase

instance ToHeaders GetDatabase where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetDatabase" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDatabase where
  toJSON GetDatabase' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _gdCatalogId,
            Just ("Name" .= _gdName)
          ]
      )

instance ToPath GetDatabase where
  toPath = const "/"

instance ToQuery GetDatabase where
  toQuery = const mempty

-- | /See:/ 'getDatabaseResponse' smart constructor.
data GetDatabaseResponse = GetDatabaseResponse'
  { _gdrrsDatabase ::
      !(Maybe Database),
    _gdrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDatabaseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdrrsDatabase' - The definition of the specified database in the Data Catalog.
--
-- * 'gdrrsResponseStatus' - -- | The response status code.
getDatabaseResponse ::
  -- | 'gdrrsResponseStatus'
  Int ->
  GetDatabaseResponse
getDatabaseResponse pResponseStatus_ =
  GetDatabaseResponse'
    { _gdrrsDatabase = Nothing,
      _gdrrsResponseStatus = pResponseStatus_
    }

-- | The definition of the specified database in the Data Catalog.
gdrrsDatabase :: Lens' GetDatabaseResponse (Maybe Database)
gdrrsDatabase = lens _gdrrsDatabase (\s a -> s {_gdrrsDatabase = a})

-- | -- | The response status code.
gdrrsResponseStatus :: Lens' GetDatabaseResponse Int
gdrrsResponseStatus = lens _gdrrsResponseStatus (\s a -> s {_gdrrsResponseStatus = a})

instance NFData GetDatabaseResponse
