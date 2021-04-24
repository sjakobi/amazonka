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
-- Module      : Network.AWS.Glue.GetConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a connection definition from the Data Catalog.
module Network.AWS.Glue.GetConnection
  ( -- * Creating a Request
    getConnection,
    GetConnection,

    -- * Request Lenses
    gccCatalogId,
    gccHidePassword,
    gccName,

    -- * Destructuring the Response
    getConnectionResponse,
    GetConnectionResponse,

    -- * Response Lenses
    getersConnection,
    getersResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getConnection' smart constructor.
data GetConnection = GetConnection'
  { _gccCatalogId ::
      !(Maybe Text),
    _gccHidePassword :: !(Maybe Bool),
    _gccName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetConnection' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gccCatalogId' - The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default.
--
-- * 'gccHidePassword' - Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.
--
-- * 'gccName' - The name of the connection definition to retrieve.
getConnection ::
  -- | 'gccName'
  Text ->
  GetConnection
getConnection pName_ =
  GetConnection'
    { _gccCatalogId = Nothing,
      _gccHidePassword = Nothing,
      _gccName = pName_
    }

-- | The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default.
gccCatalogId :: Lens' GetConnection (Maybe Text)
gccCatalogId = lens _gccCatalogId (\s a -> s {_gccCatalogId = a})

-- | Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.
gccHidePassword :: Lens' GetConnection (Maybe Bool)
gccHidePassword = lens _gccHidePassword (\s a -> s {_gccHidePassword = a})

-- | The name of the connection definition to retrieve.
gccName :: Lens' GetConnection Text
gccName = lens _gccName (\s a -> s {_gccName = a})

instance AWSRequest GetConnection where
  type Rs GetConnection = GetConnectionResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetConnectionResponse'
            <$> (x .?> "Connection") <*> (pure (fromEnum s))
      )

instance Hashable GetConnection

instance NFData GetConnection

instance ToHeaders GetConnection where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetConnection" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetConnection where
  toJSON GetConnection' {..} =
    object
      ( catMaybes
          [ ("CatalogId" .=) <$> _gccCatalogId,
            ("HidePassword" .=) <$> _gccHidePassword,
            Just ("Name" .= _gccName)
          ]
      )

instance ToPath GetConnection where
  toPath = const "/"

instance ToQuery GetConnection where
  toQuery = const mempty

-- | /See:/ 'getConnectionResponse' smart constructor.
data GetConnectionResponse = GetConnectionResponse'
  { _getersConnection ::
      !(Maybe Connection),
    _getersResponseStatus ::
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

-- | Creates a value of 'GetConnectionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'getersConnection' - The requested connection definition.
--
-- * 'getersResponseStatus' - -- | The response status code.
getConnectionResponse ::
  -- | 'getersResponseStatus'
  Int ->
  GetConnectionResponse
getConnectionResponse pResponseStatus_ =
  GetConnectionResponse'
    { _getersConnection = Nothing,
      _getersResponseStatus = pResponseStatus_
    }

-- | The requested connection definition.
getersConnection :: Lens' GetConnectionResponse (Maybe Connection)
getersConnection = lens _getersConnection (\s a -> s {_getersConnection = a})

-- | -- | The response status code.
getersResponseStatus :: Lens' GetConnectionResponse Int
getersResponseStatus = lens _getersResponseStatus (\s a -> s {_getersResponseStatus = a})

instance NFData GetConnectionResponse
