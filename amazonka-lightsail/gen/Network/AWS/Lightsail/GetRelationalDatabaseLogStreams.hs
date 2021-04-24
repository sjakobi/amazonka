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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseLogStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of available log streams for a specific database in Amazon Lightsail.
module Network.AWS.Lightsail.GetRelationalDatabaseLogStreams
  ( -- * Creating a Request
    getRelationalDatabaseLogStreams,
    GetRelationalDatabaseLogStreams,

    -- * Request Lenses
    grdlsRelationalDatabaseName,

    -- * Destructuring the Response
    getRelationalDatabaseLogStreamsResponse,
    GetRelationalDatabaseLogStreamsResponse,

    -- * Response Lenses
    grdlsrrsLogStreams,
    grdlsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabaseLogStreams' smart constructor.
newtype GetRelationalDatabaseLogStreams = GetRelationalDatabaseLogStreams'
  { _grdlsRelationalDatabaseName ::
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

-- | Creates a value of 'GetRelationalDatabaseLogStreams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdlsRelationalDatabaseName' - The name of your database for which to get log streams.
getRelationalDatabaseLogStreams ::
  -- | 'grdlsRelationalDatabaseName'
  Text ->
  GetRelationalDatabaseLogStreams
getRelationalDatabaseLogStreams
  pRelationalDatabaseName_ =
    GetRelationalDatabaseLogStreams'
      { _grdlsRelationalDatabaseName =
          pRelationalDatabaseName_
      }

-- | The name of your database for which to get log streams.
grdlsRelationalDatabaseName :: Lens' GetRelationalDatabaseLogStreams Text
grdlsRelationalDatabaseName = lens _grdlsRelationalDatabaseName (\s a -> s {_grdlsRelationalDatabaseName = a})

instance AWSRequest GetRelationalDatabaseLogStreams where
  type
    Rs GetRelationalDatabaseLogStreams =
      GetRelationalDatabaseLogStreamsResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabaseLogStreamsResponse'
            <$> (x .?> "logStreams" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetRelationalDatabaseLogStreams

instance NFData GetRelationalDatabaseLogStreams

instance ToHeaders GetRelationalDatabaseLogStreams where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabaseLogStreams" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRelationalDatabaseLogStreams where
  toJSON GetRelationalDatabaseLogStreams' {..} =
    object
      ( catMaybes
          [ Just
              ( "relationalDatabaseName"
                  .= _grdlsRelationalDatabaseName
              )
          ]
      )

instance ToPath GetRelationalDatabaseLogStreams where
  toPath = const "/"

instance ToQuery GetRelationalDatabaseLogStreams where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabaseLogStreamsResponse' smart constructor.
data GetRelationalDatabaseLogStreamsResponse = GetRelationalDatabaseLogStreamsResponse'
  { _grdlsrrsLogStreams ::
      !( Maybe
           [Text]
       ),
    _grdlsrrsResponseStatus ::
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

-- | Creates a value of 'GetRelationalDatabaseLogStreamsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdlsrrsLogStreams' - An object describing the result of your get relational database log streams request.
--
-- * 'grdlsrrsResponseStatus' - -- | The response status code.
getRelationalDatabaseLogStreamsResponse ::
  -- | 'grdlsrrsResponseStatus'
  Int ->
  GetRelationalDatabaseLogStreamsResponse
getRelationalDatabaseLogStreamsResponse
  pResponseStatus_ =
    GetRelationalDatabaseLogStreamsResponse'
      { _grdlsrrsLogStreams =
          Nothing,
        _grdlsrrsResponseStatus =
          pResponseStatus_
      }

-- | An object describing the result of your get relational database log streams request.
grdlsrrsLogStreams :: Lens' GetRelationalDatabaseLogStreamsResponse [Text]
grdlsrrsLogStreams = lens _grdlsrrsLogStreams (\s a -> s {_grdlsrrsLogStreams = a}) . _Default . _Coerce

-- | -- | The response status code.
grdlsrrsResponseStatus :: Lens' GetRelationalDatabaseLogStreamsResponse Int
grdlsrrsResponseStatus = lens _grdlsrrsResponseStatus (\s a -> s {_grdlsrrsResponseStatus = a})

instance
  NFData
    GetRelationalDatabaseLogStreamsResponse
