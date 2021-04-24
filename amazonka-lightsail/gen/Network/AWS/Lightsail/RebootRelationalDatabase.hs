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
-- Module      : Network.AWS.Lightsail.RebootRelationalDatabase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restarts a specific database in Amazon Lightsail.
--
--
-- The @reboot relational database@ operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.RebootRelationalDatabase
  ( -- * Creating a Request
    rebootRelationalDatabase,
    RebootRelationalDatabase,

    -- * Request Lenses
    rrdRelationalDatabaseName,

    -- * Destructuring the Response
    rebootRelationalDatabaseResponse,
    RebootRelationalDatabaseResponse,

    -- * Response Lenses
    rrdrrsOperations,
    rrdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'rebootRelationalDatabase' smart constructor.
newtype RebootRelationalDatabase = RebootRelationalDatabase'
  { _rrdRelationalDatabaseName ::
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

-- | Creates a value of 'RebootRelationalDatabase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrdRelationalDatabaseName' - The name of your database to reboot.
rebootRelationalDatabase ::
  -- | 'rrdRelationalDatabaseName'
  Text ->
  RebootRelationalDatabase
rebootRelationalDatabase pRelationalDatabaseName_ =
  RebootRelationalDatabase'
    { _rrdRelationalDatabaseName =
        pRelationalDatabaseName_
    }

-- | The name of your database to reboot.
rrdRelationalDatabaseName :: Lens' RebootRelationalDatabase Text
rrdRelationalDatabaseName = lens _rrdRelationalDatabaseName (\s a -> s {_rrdRelationalDatabaseName = a})

instance AWSRequest RebootRelationalDatabase where
  type
    Rs RebootRelationalDatabase =
      RebootRelationalDatabaseResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          RebootRelationalDatabaseResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable RebootRelationalDatabase

instance NFData RebootRelationalDatabase

instance ToHeaders RebootRelationalDatabase where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.RebootRelationalDatabase" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RebootRelationalDatabase where
  toJSON RebootRelationalDatabase' {..} =
    object
      ( catMaybes
          [ Just
              ( "relationalDatabaseName"
                  .= _rrdRelationalDatabaseName
              )
          ]
      )

instance ToPath RebootRelationalDatabase where
  toPath = const "/"

instance ToQuery RebootRelationalDatabase where
  toQuery = const mempty

-- | /See:/ 'rebootRelationalDatabaseResponse' smart constructor.
data RebootRelationalDatabaseResponse = RebootRelationalDatabaseResponse'
  { _rrdrrsOperations ::
      !( Maybe
           [Operation]
       ),
    _rrdrrsResponseStatus ::
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

-- | Creates a value of 'RebootRelationalDatabaseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrdrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'rrdrrsResponseStatus' - -- | The response status code.
rebootRelationalDatabaseResponse ::
  -- | 'rrdrrsResponseStatus'
  Int ->
  RebootRelationalDatabaseResponse
rebootRelationalDatabaseResponse pResponseStatus_ =
  RebootRelationalDatabaseResponse'
    { _rrdrrsOperations =
        Nothing,
      _rrdrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
rrdrrsOperations :: Lens' RebootRelationalDatabaseResponse [Operation]
rrdrrsOperations = lens _rrdrrsOperations (\s a -> s {_rrdrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
rrdrrsResponseStatus :: Lens' RebootRelationalDatabaseResponse Int
rrdrrsResponseStatus = lens _rrdrrsResponseStatus (\s a -> s {_rrdrrsResponseStatus = a})

instance NFData RebootRelationalDatabaseResponse
