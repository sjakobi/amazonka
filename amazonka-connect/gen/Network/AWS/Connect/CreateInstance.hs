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
-- Module      : Network.AWS.Connect.CreateInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Initiates an Amazon Connect instance with all the supported channels enabled. It does not attach any storage, such as Amazon Simple Storage Service (Amazon S3) or Amazon Kinesis. It also does not allow for any configurations on features, such as Contact Lens for Amazon Connect.
module Network.AWS.Connect.CreateInstance
  ( -- * Creating a Request
    createInstance,
    CreateInstance,

    -- * Request Lenses
    ciInstanceAlias,
    ciDirectoryId,
    ciClientToken,
    ciIdentityManagementType,
    ciInboundCallsEnabled,
    ciOutboundCallsEnabled,

    -- * Destructuring the Response
    createInstanceResponse,
    CreateInstanceResponse,

    -- * Response Lenses
    cirrsARN,
    cirrsId,
    cirrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createInstance' smart constructor.
data CreateInstance = CreateInstance'
  { _ciInstanceAlias ::
      !(Maybe (Sensitive Text)),
    _ciDirectoryId :: !(Maybe Text),
    _ciClientToken :: !(Maybe Text),
    _ciIdentityManagementType ::
      !DirectoryType,
    _ciInboundCallsEnabled :: !Bool,
    _ciOutboundCallsEnabled :: !Bool
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciInstanceAlias' - The name for your instance.
--
-- * 'ciDirectoryId' - The identifier for the directory.
--
-- * 'ciClientToken' - The idempotency token.
--
-- * 'ciIdentityManagementType' - The type of identity management for your Amazon Connect users.
--
-- * 'ciInboundCallsEnabled' - Your contact center handles incoming contacts.
--
-- * 'ciOutboundCallsEnabled' - Your contact center allows outbound calls.
createInstance ::
  -- | 'ciIdentityManagementType'
  DirectoryType ->
  -- | 'ciInboundCallsEnabled'
  Bool ->
  -- | 'ciOutboundCallsEnabled'
  Bool ->
  CreateInstance
createInstance
  pIdentityManagementType_
  pInboundCallsEnabled_
  pOutboundCallsEnabled_ =
    CreateInstance'
      { _ciInstanceAlias = Nothing,
        _ciDirectoryId = Nothing,
        _ciClientToken = Nothing,
        _ciIdentityManagementType = pIdentityManagementType_,
        _ciInboundCallsEnabled = pInboundCallsEnabled_,
        _ciOutboundCallsEnabled = pOutboundCallsEnabled_
      }

-- | The name for your instance.
ciInstanceAlias :: Lens' CreateInstance (Maybe Text)
ciInstanceAlias = lens _ciInstanceAlias (\s a -> s {_ciInstanceAlias = a}) . mapping _Sensitive

-- | The identifier for the directory.
ciDirectoryId :: Lens' CreateInstance (Maybe Text)
ciDirectoryId = lens _ciDirectoryId (\s a -> s {_ciDirectoryId = a})

-- | The idempotency token.
ciClientToken :: Lens' CreateInstance (Maybe Text)
ciClientToken = lens _ciClientToken (\s a -> s {_ciClientToken = a})

-- | The type of identity management for your Amazon Connect users.
ciIdentityManagementType :: Lens' CreateInstance DirectoryType
ciIdentityManagementType = lens _ciIdentityManagementType (\s a -> s {_ciIdentityManagementType = a})

-- | Your contact center handles incoming contacts.
ciInboundCallsEnabled :: Lens' CreateInstance Bool
ciInboundCallsEnabled = lens _ciInboundCallsEnabled (\s a -> s {_ciInboundCallsEnabled = a})

-- | Your contact center allows outbound calls.
ciOutboundCallsEnabled :: Lens' CreateInstance Bool
ciOutboundCallsEnabled = lens _ciOutboundCallsEnabled (\s a -> s {_ciOutboundCallsEnabled = a})

instance AWSRequest CreateInstance where
  type Rs CreateInstance = CreateInstanceResponse
  request = putJSON connect
  response =
    receiveJSON
      ( \s h x ->
          CreateInstanceResponse'
            <$> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateInstance

instance NFData CreateInstance

instance ToHeaders CreateInstance where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateInstance where
  toJSON CreateInstance' {..} =
    object
      ( catMaybes
          [ ("InstanceAlias" .=) <$> _ciInstanceAlias,
            ("DirectoryId" .=) <$> _ciDirectoryId,
            ("ClientToken" .=) <$> _ciClientToken,
            Just
              ( "IdentityManagementType"
                  .= _ciIdentityManagementType
              ),
            Just
              ("InboundCallsEnabled" .= _ciInboundCallsEnabled),
            Just
              ("OutboundCallsEnabled" .= _ciOutboundCallsEnabled)
          ]
      )

instance ToPath CreateInstance where
  toPath = const "/instance"

instance ToQuery CreateInstance where
  toQuery = const mempty

-- | /See:/ 'createInstanceResponse' smart constructor.
data CreateInstanceResponse = CreateInstanceResponse'
  { _cirrsARN ::
      !(Maybe Text),
    _cirrsId :: !(Maybe Text),
    _cirrsResponseStatus ::
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

-- | Creates a value of 'CreateInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cirrsARN' - The Amazon Resource Name (ARN) of the instance.
--
-- * 'cirrsId' - The identifier for the instance.
--
-- * 'cirrsResponseStatus' - -- | The response status code.
createInstanceResponse ::
  -- | 'cirrsResponseStatus'
  Int ->
  CreateInstanceResponse
createInstanceResponse pResponseStatus_ =
  CreateInstanceResponse'
    { _cirrsARN = Nothing,
      _cirrsId = Nothing,
      _cirrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the instance.
cirrsARN :: Lens' CreateInstanceResponse (Maybe Text)
cirrsARN = lens _cirrsARN (\s a -> s {_cirrsARN = a})

-- | The identifier for the instance.
cirrsId :: Lens' CreateInstanceResponse (Maybe Text)
cirrsId = lens _cirrsId (\s a -> s {_cirrsId = a})

-- | -- | The response status code.
cirrsResponseStatus :: Lens' CreateInstanceResponse Int
cirrsResponseStatus = lens _cirrsResponseStatus (\s a -> s {_cirrsResponseStatus = a})

instance NFData CreateInstanceResponse
