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
-- Module      : Network.AWS.Greengrass.CreateSubscriptionDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.
module Network.AWS.Greengrass.CreateSubscriptionDefinition
  ( -- * Creating a Request
    createSubscriptionDefinition,
    CreateSubscriptionDefinition,

    -- * Request Lenses
    csdName,
    csdInitialVersion,
    csdTags,
    csdAmznClientToken,

    -- * Destructuring the Response
    createSubscriptionDefinitionResponse,
    CreateSubscriptionDefinitionResponse,

    -- * Response Lenses
    csdrrsCreationTimestamp,
    csdrrsLatestVersionARN,
    csdrrsLatestVersion,
    csdrrsARN,
    csdrrsId,
    csdrrsName,
    csdrrsLastUpdatedTimestamp,
    csdrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createSubscriptionDefinition' smart constructor.
data CreateSubscriptionDefinition = CreateSubscriptionDefinition'
  { _csdName ::
      !(Maybe Text),
    _csdInitialVersion ::
      !( Maybe
           SubscriptionDefinitionVersion
       ),
    _csdTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _csdAmznClientToken ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateSubscriptionDefinition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdName' - The name of the subscription definition.
--
-- * 'csdInitialVersion' - Information about the initial version of the subscription definition.
--
-- * 'csdTags' - Tag(s) to add to the new resource.
--
-- * 'csdAmznClientToken' - A client token used to correlate requests and responses.
createSubscriptionDefinition ::
  CreateSubscriptionDefinition
createSubscriptionDefinition =
  CreateSubscriptionDefinition'
    { _csdName = Nothing,
      _csdInitialVersion = Nothing,
      _csdTags = Nothing,
      _csdAmznClientToken = Nothing
    }

-- | The name of the subscription definition.
csdName :: Lens' CreateSubscriptionDefinition (Maybe Text)
csdName = lens _csdName (\s a -> s {_csdName = a})

-- | Information about the initial version of the subscription definition.
csdInitialVersion :: Lens' CreateSubscriptionDefinition (Maybe SubscriptionDefinitionVersion)
csdInitialVersion = lens _csdInitialVersion (\s a -> s {_csdInitialVersion = a})

-- | Tag(s) to add to the new resource.
csdTags :: Lens' CreateSubscriptionDefinition (HashMap Text Text)
csdTags = lens _csdTags (\s a -> s {_csdTags = a}) . _Default . _Map

-- | A client token used to correlate requests and responses.
csdAmznClientToken :: Lens' CreateSubscriptionDefinition (Maybe Text)
csdAmznClientToken = lens _csdAmznClientToken (\s a -> s {_csdAmznClientToken = a})

instance AWSRequest CreateSubscriptionDefinition where
  type
    Rs CreateSubscriptionDefinition =
      CreateSubscriptionDefinitionResponse
  request = postJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          CreateSubscriptionDefinitionResponse'
            <$> (x .?> "CreationTimestamp")
            <*> (x .?> "LatestVersionArn")
            <*> (x .?> "LatestVersion")
            <*> (x .?> "Arn")
            <*> (x .?> "Id")
            <*> (x .?> "Name")
            <*> (x .?> "LastUpdatedTimestamp")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateSubscriptionDefinition

instance NFData CreateSubscriptionDefinition

instance ToHeaders CreateSubscriptionDefinition where
  toHeaders CreateSubscriptionDefinition' {..} =
    mconcat
      [ "X-Amzn-Client-Token" =# _csdAmznClientToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToJSON CreateSubscriptionDefinition where
  toJSON CreateSubscriptionDefinition' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _csdName,
            ("InitialVersion" .=) <$> _csdInitialVersion,
            ("tags" .=) <$> _csdTags
          ]
      )

instance ToPath CreateSubscriptionDefinition where
  toPath = const "/greengrass/definition/subscriptions"

instance ToQuery CreateSubscriptionDefinition where
  toQuery = const mempty

-- | /See:/ 'createSubscriptionDefinitionResponse' smart constructor.
data CreateSubscriptionDefinitionResponse = CreateSubscriptionDefinitionResponse'
  { _csdrrsCreationTimestamp ::
      !( Maybe
           Text
       ),
    _csdrrsLatestVersionARN ::
      !( Maybe
           Text
       ),
    _csdrrsLatestVersion ::
      !( Maybe
           Text
       ),
    _csdrrsARN ::
      !( Maybe
           Text
       ),
    _csdrrsId ::
      !( Maybe
           Text
       ),
    _csdrrsName ::
      !( Maybe
           Text
       ),
    _csdrrsLastUpdatedTimestamp ::
      !( Maybe
           Text
       ),
    _csdrrsResponseStatus ::
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

-- | Creates a value of 'CreateSubscriptionDefinitionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csdrrsCreationTimestamp' - The time, in milliseconds since the epoch, when the definition was created.
--
-- * 'csdrrsLatestVersionARN' - The ARN of the latest version associated with the definition.
--
-- * 'csdrrsLatestVersion' - The ID of the latest version associated with the definition.
--
-- * 'csdrrsARN' - The ARN of the definition.
--
-- * 'csdrrsId' - The ID of the definition.
--
-- * 'csdrrsName' - The name of the definition.
--
-- * 'csdrrsLastUpdatedTimestamp' - The time, in milliseconds since the epoch, when the definition was last updated.
--
-- * 'csdrrsResponseStatus' - -- | The response status code.
createSubscriptionDefinitionResponse ::
  -- | 'csdrrsResponseStatus'
  Int ->
  CreateSubscriptionDefinitionResponse
createSubscriptionDefinitionResponse pResponseStatus_ =
  CreateSubscriptionDefinitionResponse'
    { _csdrrsCreationTimestamp =
        Nothing,
      _csdrrsLatestVersionARN = Nothing,
      _csdrrsLatestVersion = Nothing,
      _csdrrsARN = Nothing,
      _csdrrsId = Nothing,
      _csdrrsName = Nothing,
      _csdrrsLastUpdatedTimestamp = Nothing,
      _csdrrsResponseStatus =
        pResponseStatus_
    }

-- | The time, in milliseconds since the epoch, when the definition was created.
csdrrsCreationTimestamp :: Lens' CreateSubscriptionDefinitionResponse (Maybe Text)
csdrrsCreationTimestamp = lens _csdrrsCreationTimestamp (\s a -> s {_csdrrsCreationTimestamp = a})

-- | The ARN of the latest version associated with the definition.
csdrrsLatestVersionARN :: Lens' CreateSubscriptionDefinitionResponse (Maybe Text)
csdrrsLatestVersionARN = lens _csdrrsLatestVersionARN (\s a -> s {_csdrrsLatestVersionARN = a})

-- | The ID of the latest version associated with the definition.
csdrrsLatestVersion :: Lens' CreateSubscriptionDefinitionResponse (Maybe Text)
csdrrsLatestVersion = lens _csdrrsLatestVersion (\s a -> s {_csdrrsLatestVersion = a})

-- | The ARN of the definition.
csdrrsARN :: Lens' CreateSubscriptionDefinitionResponse (Maybe Text)
csdrrsARN = lens _csdrrsARN (\s a -> s {_csdrrsARN = a})

-- | The ID of the definition.
csdrrsId :: Lens' CreateSubscriptionDefinitionResponse (Maybe Text)
csdrrsId = lens _csdrrsId (\s a -> s {_csdrrsId = a})

-- | The name of the definition.
csdrrsName :: Lens' CreateSubscriptionDefinitionResponse (Maybe Text)
csdrrsName = lens _csdrrsName (\s a -> s {_csdrrsName = a})

-- | The time, in milliseconds since the epoch, when the definition was last updated.
csdrrsLastUpdatedTimestamp :: Lens' CreateSubscriptionDefinitionResponse (Maybe Text)
csdrrsLastUpdatedTimestamp = lens _csdrrsLastUpdatedTimestamp (\s a -> s {_csdrrsLastUpdatedTimestamp = a})

-- | -- | The response status code.
csdrrsResponseStatus :: Lens' CreateSubscriptionDefinitionResponse Int
csdrrsResponseStatus = lens _csdrrsResponseStatus (\s a -> s {_csdrrsResponseStatus = a})

instance NFData CreateSubscriptionDefinitionResponse
