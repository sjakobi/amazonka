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
-- Module      : Network.AWS.AppSync.StartSchemaCreation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new schema to your GraphQL API.
--
--
-- This operation is asynchronous. Use to determine when it has completed.
module Network.AWS.AppSync.StartSchemaCreation
  ( -- * Creating a Request
    startSchemaCreation,
    StartSchemaCreation,

    -- * Request Lenses
    sscApiId,
    sscDefinition,

    -- * Destructuring the Response
    startSchemaCreationResponse,
    StartSchemaCreationResponse,

    -- * Response Lenses
    sscrrsStatus,
    sscrrsResponseStatus,
  )
where

import Network.AWS.AppSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startSchemaCreation' smart constructor.
data StartSchemaCreation = StartSchemaCreation'
  { _sscApiId ::
      !Text,
    _sscDefinition :: !Base64
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartSchemaCreation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscApiId' - The API ID.
--
-- * 'sscDefinition' - The schema definition, in GraphQL schema language format.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
startSchemaCreation ::
  -- | 'sscApiId'
  Text ->
  -- | 'sscDefinition'
  ByteString ->
  StartSchemaCreation
startSchemaCreation pApiId_ pDefinition_ =
  StartSchemaCreation'
    { _sscApiId = pApiId_,
      _sscDefinition = _Base64 # pDefinition_
    }

-- | The API ID.
sscApiId :: Lens' StartSchemaCreation Text
sscApiId = lens _sscApiId (\s a -> s {_sscApiId = a})

-- | The schema definition, in GraphQL schema language format.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
sscDefinition :: Lens' StartSchemaCreation ByteString
sscDefinition = lens _sscDefinition (\s a -> s {_sscDefinition = a}) . _Base64

instance AWSRequest StartSchemaCreation where
  type
    Rs StartSchemaCreation =
      StartSchemaCreationResponse
  request = postJSON appSync
  response =
    receiveJSON
      ( \s h x ->
          StartSchemaCreationResponse'
            <$> (x .?> "status") <*> (pure (fromEnum s))
      )

instance Hashable StartSchemaCreation

instance NFData StartSchemaCreation

instance ToHeaders StartSchemaCreation where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartSchemaCreation where
  toJSON StartSchemaCreation' {..} =
    object
      (catMaybes [Just ("definition" .= _sscDefinition)])

instance ToPath StartSchemaCreation where
  toPath StartSchemaCreation' {..} =
    mconcat
      ["/v1/apis/", toBS _sscApiId, "/schemacreation"]

instance ToQuery StartSchemaCreation where
  toQuery = const mempty

-- | /See:/ 'startSchemaCreationResponse' smart constructor.
data StartSchemaCreationResponse = StartSchemaCreationResponse'
  { _sscrrsStatus ::
      !( Maybe
           SchemaStatus
       ),
    _sscrrsResponseStatus ::
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

-- | Creates a value of 'StartSchemaCreationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscrrsStatus' - The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When the schema is in the ACTIVE state, you can add data.
--
-- * 'sscrrsResponseStatus' - -- | The response status code.
startSchemaCreationResponse ::
  -- | 'sscrrsResponseStatus'
  Int ->
  StartSchemaCreationResponse
startSchemaCreationResponse pResponseStatus_ =
  StartSchemaCreationResponse'
    { _sscrrsStatus =
        Nothing,
      _sscrrsResponseStatus = pResponseStatus_
    }

-- | The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When the schema is in the ACTIVE state, you can add data.
sscrrsStatus :: Lens' StartSchemaCreationResponse (Maybe SchemaStatus)
sscrrsStatus = lens _sscrrsStatus (\s a -> s {_sscrrsStatus = a})

-- | -- | The response status code.
sscrrsResponseStatus :: Lens' StartSchemaCreationResponse Int
sscrrsResponseStatus = lens _sscrrsResponseStatus (\s a -> s {_sscrrsResponseStatus = a})

instance NFData StartSchemaCreationResponse
