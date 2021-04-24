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
-- Module      : Network.AWS.Lightsail.StartRelationalDatabase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a specific database from a stopped state in Amazon Lightsail. To restart a database, use the @reboot relational database@ operation.
--
--
-- The @start relational database@ operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.StartRelationalDatabase
  ( -- * Creating a Request
    startRelationalDatabase,
    StartRelationalDatabase,

    -- * Request Lenses
    srdRelationalDatabaseName,

    -- * Destructuring the Response
    startRelationalDatabaseResponse,
    StartRelationalDatabaseResponse,

    -- * Response Lenses
    srdrrsOperations,
    srdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startRelationalDatabase' smart constructor.
newtype StartRelationalDatabase = StartRelationalDatabase'
  { _srdRelationalDatabaseName ::
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

-- | Creates a value of 'StartRelationalDatabase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srdRelationalDatabaseName' - The name of your database to start.
startRelationalDatabase ::
  -- | 'srdRelationalDatabaseName'
  Text ->
  StartRelationalDatabase
startRelationalDatabase pRelationalDatabaseName_ =
  StartRelationalDatabase'
    { _srdRelationalDatabaseName =
        pRelationalDatabaseName_
    }

-- | The name of your database to start.
srdRelationalDatabaseName :: Lens' StartRelationalDatabase Text
srdRelationalDatabaseName = lens _srdRelationalDatabaseName (\s a -> s {_srdRelationalDatabaseName = a})

instance AWSRequest StartRelationalDatabase where
  type
    Rs StartRelationalDatabase =
      StartRelationalDatabaseResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          StartRelationalDatabaseResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable StartRelationalDatabase

instance NFData StartRelationalDatabase

instance ToHeaders StartRelationalDatabase where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.StartRelationalDatabase" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartRelationalDatabase where
  toJSON StartRelationalDatabase' {..} =
    object
      ( catMaybes
          [ Just
              ( "relationalDatabaseName"
                  .= _srdRelationalDatabaseName
              )
          ]
      )

instance ToPath StartRelationalDatabase where
  toPath = const "/"

instance ToQuery StartRelationalDatabase where
  toQuery = const mempty

-- | /See:/ 'startRelationalDatabaseResponse' smart constructor.
data StartRelationalDatabaseResponse = StartRelationalDatabaseResponse'
  { _srdrrsOperations ::
      !( Maybe
           [Operation]
       ),
    _srdrrsResponseStatus ::
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

-- | Creates a value of 'StartRelationalDatabaseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srdrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'srdrrsResponseStatus' - -- | The response status code.
startRelationalDatabaseResponse ::
  -- | 'srdrrsResponseStatus'
  Int ->
  StartRelationalDatabaseResponse
startRelationalDatabaseResponse pResponseStatus_ =
  StartRelationalDatabaseResponse'
    { _srdrrsOperations =
        Nothing,
      _srdrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
srdrrsOperations :: Lens' StartRelationalDatabaseResponse [Operation]
srdrrsOperations = lens _srdrrsOperations (\s a -> s {_srdrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
srdrrsResponseStatus :: Lens' StartRelationalDatabaseResponse Int
srdrrsResponseStatus = lens _srdrrsResponseStatus (\s a -> s {_srdrrsResponseStatus = a})

instance NFData StartRelationalDatabaseResponse
