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
-- Module      : Network.AWS.Connect.CreateQuickConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Creates a quick connect for the specified Amazon Connect instance.
module Network.AWS.Connect.CreateQuickConnect
  ( -- * Creating a Request
    createQuickConnect,
    CreateQuickConnect,

    -- * Request Lenses
    cqcTags,
    cqcDescription,
    cqcInstanceId,
    cqcName,
    cqcQuickConnectConfig,

    -- * Destructuring the Response
    createQuickConnectResponse,
    CreateQuickConnectResponse,

    -- * Response Lenses
    cqcrrsQuickConnectId,
    cqcrrsQuickConnectARN,
    cqcrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createQuickConnect' smart constructor.
data CreateQuickConnect = CreateQuickConnect'
  { _cqcTags ::
      !(Maybe (Map Text Text)),
    _cqcDescription :: !(Maybe Text),
    _cqcInstanceId :: !Text,
    _cqcName :: !Text,
    _cqcQuickConnectConfig ::
      !QuickConnectConfig
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateQuickConnect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cqcTags' - One or more tags.
--
-- * 'cqcDescription' - The description of the quick connect.
--
-- * 'cqcInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'cqcName' - The name of the quick connect.
--
-- * 'cqcQuickConnectConfig' - Configuration settings for the quick connect.
createQuickConnect ::
  -- | 'cqcInstanceId'
  Text ->
  -- | 'cqcName'
  Text ->
  -- | 'cqcQuickConnectConfig'
  QuickConnectConfig ->
  CreateQuickConnect
createQuickConnect
  pInstanceId_
  pName_
  pQuickConnectConfig_ =
    CreateQuickConnect'
      { _cqcTags = Nothing,
        _cqcDescription = Nothing,
        _cqcInstanceId = pInstanceId_,
        _cqcName = pName_,
        _cqcQuickConnectConfig = pQuickConnectConfig_
      }

-- | One or more tags.
cqcTags :: Lens' CreateQuickConnect (HashMap Text Text)
cqcTags = lens _cqcTags (\s a -> s {_cqcTags = a}) . _Default . _Map

-- | The description of the quick connect.
cqcDescription :: Lens' CreateQuickConnect (Maybe Text)
cqcDescription = lens _cqcDescription (\s a -> s {_cqcDescription = a})

-- | The identifier of the Amazon Connect instance.
cqcInstanceId :: Lens' CreateQuickConnect Text
cqcInstanceId = lens _cqcInstanceId (\s a -> s {_cqcInstanceId = a})

-- | The name of the quick connect.
cqcName :: Lens' CreateQuickConnect Text
cqcName = lens _cqcName (\s a -> s {_cqcName = a})

-- | Configuration settings for the quick connect.
cqcQuickConnectConfig :: Lens' CreateQuickConnect QuickConnectConfig
cqcQuickConnectConfig = lens _cqcQuickConnectConfig (\s a -> s {_cqcQuickConnectConfig = a})

instance AWSRequest CreateQuickConnect where
  type
    Rs CreateQuickConnect =
      CreateQuickConnectResponse
  request = putJSON connect
  response =
    receiveJSON
      ( \s h x ->
          CreateQuickConnectResponse'
            <$> (x .?> "QuickConnectId")
            <*> (x .?> "QuickConnectARN")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateQuickConnect

instance NFData CreateQuickConnect

instance ToHeaders CreateQuickConnect where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateQuickConnect where
  toJSON CreateQuickConnect' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _cqcTags,
            ("Description" .=) <$> _cqcDescription,
            Just ("Name" .= _cqcName),
            Just
              ("QuickConnectConfig" .= _cqcQuickConnectConfig)
          ]
      )

instance ToPath CreateQuickConnect where
  toPath CreateQuickConnect' {..} =
    mconcat ["/quick-connects/", toBS _cqcInstanceId]

instance ToQuery CreateQuickConnect where
  toQuery = const mempty

-- | /See:/ 'createQuickConnectResponse' smart constructor.
data CreateQuickConnectResponse = CreateQuickConnectResponse'
  { _cqcrrsQuickConnectId ::
      !(Maybe Text),
    _cqcrrsQuickConnectARN ::
      !(Maybe Text),
    _cqcrrsResponseStatus ::
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

-- | Creates a value of 'CreateQuickConnectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cqcrrsQuickConnectId' - The identifier for the quick connect.
--
-- * 'cqcrrsQuickConnectARN' - The Amazon Resource Name (ARN) for the quick connect.
--
-- * 'cqcrrsResponseStatus' - -- | The response status code.
createQuickConnectResponse ::
  -- | 'cqcrrsResponseStatus'
  Int ->
  CreateQuickConnectResponse
createQuickConnectResponse pResponseStatus_ =
  CreateQuickConnectResponse'
    { _cqcrrsQuickConnectId =
        Nothing,
      _cqcrrsQuickConnectARN = Nothing,
      _cqcrrsResponseStatus = pResponseStatus_
    }

-- | The identifier for the quick connect.
cqcrrsQuickConnectId :: Lens' CreateQuickConnectResponse (Maybe Text)
cqcrrsQuickConnectId = lens _cqcrrsQuickConnectId (\s a -> s {_cqcrrsQuickConnectId = a})

-- | The Amazon Resource Name (ARN) for the quick connect.
cqcrrsQuickConnectARN :: Lens' CreateQuickConnectResponse (Maybe Text)
cqcrrsQuickConnectARN = lens _cqcrrsQuickConnectARN (\s a -> s {_cqcrrsQuickConnectARN = a})

-- | -- | The response status code.
cqcrrsResponseStatus :: Lens' CreateQuickConnectResponse Int
cqcrrsResponseStatus = lens _cqcrrsResponseStatus (\s a -> s {_cqcrrsResponseStatus = a})

instance NFData CreateQuickConnectResponse
